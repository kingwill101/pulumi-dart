import 'dart:async';

import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import '../constants.dart';
import '../invoke.dart';
import '../output.dart';
import '../resource/component_resource.dart';
import '../resource/resource.dart';
import '../struct_converter.dart';
import '../resource/resource_transformation.dart';
import 'deployment.dart';

/// {@template pulumi.stack.summary}
/// Root component resource for a Pulumi program.
///
/// The runtime creates exactly one stack per deployment. Resources created in a
/// program are parented to this stack by default, and stack outputs are exported
/// from it.
///
/// Subclasses typically initialize output fields and return them from
/// [getOutputProperties].
///
/// In normal Pulumi Dart programs:
/// - define a subclass of [Stack]
/// - create resources in the constructor
/// - expose exported values via [getOutputProperties]
/// - run the program with `Deployment.run` or `Deployment.runOrThrow`
///
/// ## Example
/// ```dart
/// import 'package:pulumi/pulumi.dart';
///
/// class AppStack extends Stack {
///   late final Output<Object?> message;
///   late final Output<Object?> stackName;
///
///   AppStack() {
///     final cfg = Config();
///     final name = cfg.get('name') ?? 'world';
///     message = Output.create<Object?>('hello-$name');
///     stackName = Output.create<Object?>(Deployment.instance.stackName);
///   }
///
///   @override
///   List<OutputProperty> getOutputProperties() {
///     return [
///       OutputProperty('message', message),
///       OutputProperty('stackName', stackName),
///     ];
///   }
/// }
///
/// Future<void> main() async {
///   await Deployment.runOrThrow(() => AppStack());
/// }
/// ```
/// {@endtemplate}
///
abstract class Stack extends ComponentResource {
  static Resource? root;

  /// Pulumi type token used for the root stack component.
  static const String rootPulumiStackTypeName = 'pulumi:pulumi:Stack';

  bool _outputsRegistered = false;
  late final Map<String, Object?> outputs;

  Stack([StackOptions? options])
    : super(
        rootPulumiStackTypeName,
        '${DeploymentImpl.instance.projectName}-${DeploymentImpl.instance.stackName}',
        null,
        _convertOptions(options),
      ) {
    DeploymentImpl.instance.setStack(this);
  }

  /// Registers stack outputs discovered from [getOutputProperties].
  ///
  /// The runtime calls into stack output registration during deployment. Most
  /// user code should not call this directly.
  void registerPropertyOutputs() {
    if (_outputsRegistered) {
      return;
    }

    final properties = getOutputProperties();
    final outputProperties = <String, Object?>{};

    for (final property in properties) {
      final name = property.name;
      final value = property.value;
      outputProperties[name] = value;
    }

    outputs = outputProperties;
    registerOutputs(outputProperties.cast<String, dynamic>());
  }

  @override
  void registerOutputs([Map<String, dynamic>? outputs]) {
    _outputsRegistered = true;
    super.registerOutputs(outputs);
  }

  @override
  Future<void> registerOutputsAsync(
    Future<Map<String, dynamic>> outputs,
  ) async {
    _outputsRegistered = true;
    await super.registerOutputsAsync(outputs);
  }

  @override
  void registerOutputsOutput(Output<Map<String, dynamic>> outputs) {
    _outputsRegistered = true;
    super.registerOutputsOutput(outputs);
  }

  /// Returns the stack outputs to export.
  ///
  /// Subclasses should override this and return stable [OutputProperty] values.
  ///
  /// ## Example
  /// ```dart
  /// @override
  /// List<OutputProperty> getOutputProperties() {
  ///   return [OutputProperty('url', url)];
  /// }
  /// ```
  List<OutputProperty> getOutputProperties() {
    // This method should be overridden in subclasses to return a list of OutputProperty
    // instances representing the Stack's output properties.
    return [];
  }

  /// Serializes stack output metadata to Pulumi wire format.
  Future<Value> serializeOutputValue(OutputData outputData) async {
    final inner = outputData.isKnown
        ? await StructConverter.toValue(outputData.value)
        : (Value()..stringValue = Constants.unknownValue);
    if (!outputData.isSecret) {
      return inner;
    }

    final secret = Struct()
      ..fields[Constants.specialSigKey] = (Value()
        ..stringValue = Constants.specialSecretSig)
      ..fields[Constants.valueName] = inner;
    return Value()..structValue = secret;
  }

  static ComponentResourceOptions? _convertOptions(StackOptions? options) {
    if (options == null) return null;

    return ComponentResourceOptions(
      resourceTransformations: options.resourceTransformations,
      resourceTransforms: options.resourceTransforms,
    );
  }
}

/// Optional settings for stack creation.
///
/// ## Example
/// ```dart
/// final options = StackOptions(
///   resourceTransforms: [
///     (args, _) async => ResourceTransformResult(args.args, args.options),
///   ],
/// );
/// ```
class StackOptions {
  /// Legacy synchronous resource transformations applied to stack children.
  final List<ResourceTransformation>? resourceTransformations;

  /// Async resource transforms applied to stack children.
  final List<ResourceTransform>? resourceTransforms;

  StackOptions({this.resourceTransformations, this.resourceTransforms});
}

/// Named output value exported from a [Stack].
///
/// The name becomes the output key visible in `pulumi stack output`.
class OutputProperty {
  /// Exported output name.
  final String name;

  /// Output value to export from the stack.
  final Output<Object?> value;

  OutputProperty(this.name, this.value);
}

/// Error type for invalid stack output configuration.
class StackException implements Exception {
  final String message;

  StackException(this.message);

  factory StackException.outputsHaveIncorrectType(List<String> propertyNames) {
    return StackException(
      "Output(s) '${propertyNames.join(', ')}' must be of type Output<T>.",
    );
  }

  @override
  String toString() => 'StackException: $message';
}

/// Registers a global resource transform for the active deployment.
///
/// Global transforms are applied to all resources created in this deployment.
Future<void> registerResourceTransform(ResourceTransform transform) async {
  final deployment = DeploymentImpl.instance;
  await deployment.registerResourceTransform(transform);
}

/// Registers a global invoke transform for the active deployment.
///
/// Global invoke transforms are applied to all invoke operations.
Future<void> registerInvokeTransform(InvokeTransform transform) async {
  final deployment = DeploymentImpl.instance;
  await deployment.registerInvokeTransform(transform);
}
