import '../deployment/deployment.dart';
import '../input.dart';
import '../output.dart';
import 'resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

/// {@template pulumi.component_resource.summary}
/// A logical resource that groups and orchestrates child resources.
///
/// Component resources do not have provider-managed CRUD operations; they are
/// used to model reusable infrastructure abstractions.
///
/// Use a component resource when you want to package several underlying
/// resources behind a stable Dart API. Components participate in parent/child
/// relationships, aliases, providers, transforms, and stack outputs just like
/// other resources, but they do not correspond to a provider-managed object by
/// themselves unless [remote] is `true`.
///
/// ## Example
/// ```dart
/// class Network extends ComponentResource {
///   Network(String name)
///       : super('acme:infra:Network', name, {}, ComponentResourceOptions());
/// }
/// ```
/// {@endtemplate}
///
class ComponentResource extends Resource {
  /// Creates a logical component resource.
  ///
  /// Set [remote] to `true` only for remote components backed by a provider
  /// implementation. Ordinary Dart components should leave it as `false`.
  ComponentResource(
    String type,
    String name,
    Inputs? args,
    ComponentResourceOptions? options, {
    bool remote = false,
    List<String> additionalSecretOutputs = const [],
  }) : super(
         type,
         name,
         false,
         args ?? {},
         options ?? ComponentResourceOptions(),
         remote: remote,
         additionalSecretOutputs: additionalSecretOutputs,
       );

  /// Registers component outputs with the engine.
  ///
  /// Call this after child resources and output values have been initialized.
  /// These values become the component outputs visible to parent components and
  /// stack exports that reference this component.
  void registerOutputs([Map<String, dynamic>? outputs]) {
    final resolvedOutputs = outputs ?? _collectOutputs();
    registerOutputsOutput(Output.create(resolvedOutputs));
  }

  /// Async variant of [registerOutputs].
  Future<void> registerOutputsAsync(
    Future<Map<String, dynamic>> outputs,
  ) async {
    registerOutputsOutput(Output.create(await outputs));
  }

  /// Registers an already-computed output map.
  ///
  /// This is useful when the component already has an [Output] carrying the
  /// final output object.
  void registerOutputsOutput(Output<Map<String, dynamic>> outputs) {
    final operation = DeploymentImpl.instance.registerResourceOutputs(
      this,
      outputs,
    );
    DeploymentImpl.instance.registerResourceOperation(operation);
  }

  Map<String, dynamic> _collectOutputs() {
    // Since we're not using mirrors, we need to manually define the outputs.
    // This method should be overridden in subclasses to provide the correct outputs.
    return {};
  }
}

/// Resource options specialized for [ComponentResource].
///
/// This type exists mainly for API clarity. It has the same fields as
/// [ResourceOptions], but it is the canonical options type for components.
class ComponentResourceOptions extends ResourceOptions {
  ComponentResourceOptions({
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
    List<ResourceTransformation>? resourceTransformations,
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
    List<ResourceTransform>? resourceTransforms,
    super.hooks,
  }) : super(
         resourceTransformations: resourceTransformations ?? [],
         resourceTransforms: resourceTransforms ?? [],
       );

  factory ComponentResourceOptions.fromResourceOptions(
    ResourceOptions options,
  ) {
    return ComponentResourceOptions(
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
      resourceTransformations: options.resourceTransformations,
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
  ComponentResourceOptions merge(ResourceOptions? options) =>
      ComponentResourceOptions.fromResourceOptions(super.merge(options));
}
