import 'dart:async';

import 'package:pulumi/src/deployment/models.dart' as models;
import 'package:pulumi/src/output.dart';

import '../input.dart';
import 'resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

/// {@template pulumi.custom_resource_options.summary}
/// Resource options specialized for [CustomResource].
/// {@endtemplate}
///
class CustomResourceOptions extends ResourceOptions {
  CustomResourceOptions({
    super.id,
    super.urn,
    super.importId,
    super.hideDiffs,
    super.replaceWith,
    super.envVarMappings,
    super.parent,
    super.dependsOn,
    super.protect,
    super.provider,
    super.providers,
    List<ResourceTransformation>? transformations,
    List<ResourceTransform>? resourceTransforms,
    super.hooks,
    super.aliases,
    super.version,
    super.pluginDownloadURL,
    super.replacementTrigger,
    super.customTimeouts,
    super.deleteBeforeReplace,
    super.retainOnDelete,
    super.deletedWith,
    super.additionalSecretOutputs,
    super.ignoreChanges,
    super.replaceOnChanges,
  }) : super(
         resourceTransformations: transformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
       );

  factory CustomResourceOptions.fromResourceOptions(ResourceOptions options) {
    return CustomResourceOptions(
      id: options.id,
      urn: options.urn,
      importId: options.importId,
      hideDiffs: options.hideDiffs,
      replaceWith: options.replaceWith,
      envVarMappings: options.envVarMappings,
      parent: options.parent,
      dependsOn: options.dependsOn,
      protect: options.protect,
      provider: options.provider,
      providers: options.providers,
      transformations: options.resourceTransformations,
      resourceTransforms: options.resourceTransforms,
      hooks: options.hooks,
      aliases: options.aliases,
      version: options.version,
      pluginDownloadURL: options.pluginDownloadURL,
      replacementTrigger: options.replacementTrigger,
      customTimeouts: options.customTimeouts,
      deleteBeforeReplace: options.deleteBeforeReplace,
      retainOnDelete: options.retainOnDelete,
      deletedWith: options.deletedWith,
      additionalSecretOutputs: options.additionalSecretOutputs,
      ignoreChanges: options.ignoreChanges,
      replaceOnChanges: options.replaceOnChanges,
    );
  }

  @override
  CustomResourceOptions merge(ResourceOptions? options) =>
      CustomResourceOptions.fromResourceOptions(super.merge(options));
}

/// {@template pulumi.custom_resource.summary}
/// A resource whose lifecycle is implemented by a provider plugin.
///
/// Custom resources represent concrete cloud/service objects. Their provider
/// `id` is often unknown during preview and is resolved after registration.
///
/// Generated provider SDK resources typically extend this class.
///
/// ## Example
/// ```dart
/// class RandomPet extends CustomResource {
///   late final Output<String?> result;
///
///   RandomPet(String name, Inputs args, CustomResourceOptions opts)
///       : super('random:index:RandomPet', name, args, opts) {
///     result = registerOutput<String?>('id');
///   }
/// }
/// ```
/// {@endtemplate}
///
class CustomResource extends Resource {
  /// Whether this instance represents a resource value returned over RPC.
  final bool isResourceReference;

  late Output<String> id;
  final Completer<OutputData<String>> _idCompleter =
      Completer<OutputData<String>>();

  CustomResource(
    String type,
    String name,
    Inputs props,
    CustomResourceOptions options, {
    bool remote = false,
    bool dependency = false,
    this.isResourceReference = false,
    models.RegisterPackageRequest? registerPackageRequest,
    List<String> additionalSecretOutputs = const [],
  }) : super(
         type,
         name,
         true,
         props,
         options,
         remote: remote,
         dependency: dependency,
         registerPackageRequest: registerPackageRequest,
         additionalSecretOutputs: additionalSecretOutputs,
       ) {
    id = Output<String>(_idCompleter.future);
    unawaited(
      _idCompleter.future.catchError(
        (_) => OutputData<String>(
          value: null,
          isKnown: false,
          isSecret: false,
          resources: {this},
        ),
      ),
    );
  }

  /// Resolves the provider-assigned ID for this resource.
  void resolveId(String? value, {required bool isKnown}) {
    if (_idCompleter.isCompleted) {
      return;
    }
    _idCompleter.complete(
      OutputData<String>(
        value: value,
        isKnown: isKnown,
        isSecret: false,
        resources: {this},
      ),
    );
  }

  /// Completes this resource ID with an error when registration fails.
  void failId(Object error) {
    if (_idCompleter.isCompleted) {
      return;
    }
    final exception = error is Exception ? error : Exception(error.toString());
    _idCompleter.completeError(exception);
  }
}
