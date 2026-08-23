/// Core Pulumi SDK for Dart.
///
/// This package provides the runtime primitives used to build Pulumi programs.
/// Generated provider packages (for example `pulumi_aws`, `pulumi_gcp`) are
/// built on top of these APIs.
///
/// ## Core concepts
/// - Extend [Stack] to define your deployment root.
/// - Declare resources by extending [CustomResource] or [ComponentResource].
/// - Flow values with [Input] and [Output].
/// - Read stack configuration with [Config].
/// - Run the program with [Deployment.run] or [Deployment.runOrThrow].
///
/// ## Minimal program
/// ```dart
/// import 'package:pulumi/pulumi.dart';
///
/// class AppStack extends Stack {
///   late final Output<Object?> greeting;
///
///   AppStack() {
///     final cfg = Config();
///     final name = cfg.get('name') ?? 'world';
///     greeting = Output.create<Object?>('hello-$name');
///   }
///
///   @override
///   List<OutputProperty> getOutputProperties() {
///     return [OutputProperty('greeting', greeting)];
///   }
/// }
///
/// Future<void> main() async {
///   await Deployment.runOrThrow(() => AppStack());
/// }
/// ```
///
/// ## Using generated providers
/// Provider SDKs use this runtime package for all resource operations:
/// ```dart
/// import 'package:pulumi/pulumi.dart' as pulumi;
/// // import 'package:pulumi_random/pulumi_random.dart' as random;
///
/// class ProviderStack extends pulumi.Stack {
///   late final pulumi.Output<Object?> value;
///
///   ProviderStack() {
///     // Example shape:
///     // final pet = random.RandomPet('pet');
///     // value = pet.id.apply<Object?>((v) => v);
///     value = pulumi.Output.create<Object?>('example');
///   }
///
///   @override
///   List<pulumi.OutputProperty> getOutputProperties() {
///     return [pulumi.OutputProperty('value', value)];
///   }
/// }
/// ```
///
/// ## Output semantics
/// [Output] is not just a value container. It carries:
/// - value (possibly unresolved until runtime)
/// - known/unknown state (preview vs update planning)
/// - secret taint
/// - dependency provenance
///
/// Prefer [Output.apply], [Output.all], and `tuple` helpers for composition.
/// Avoid eager extraction of unresolved values during resource construction.
///
/// ## Resource options and lifecycle
/// [ResourceOptions] controls parent/provider inheritance, aliases,
/// dependency edges, replacement/delete behavior, and plugin resolution.
/// [Alias], transforms, and hooks let you evolve infrastructure safely without
/// unnecessary replacement.
///
/// ## API map
/// - Values: [Input], [Output], [InputList], [InputMap], [InputUnion]
/// - Resources: [Resource], [CustomResource], [ComponentResource], [ProviderResource]
/// - Runtime: [Deployment], [Stack], [Config], [Monitor], [EngineLogger]
/// - Lifecycle controls: [ResourceOptions], [CustomTimeouts], [Alias]
/// - Interop types: [Asset], [Archive], [StackReference]
///
/// For CLI-driven automation workflows, import `package:pulumi/automation.dart`.
/// For dynamic resource authoring APIs, import `package:pulumi/dynamic.dart`.
///
/// ## Testing with mocks
/// Use [runtime.setMocks] to configure a mock deployment for unit tests:
/// ```dart
/// import 'package:pulumi/pulumi.dart' as pulumi;
///
/// class TestMocks extends pulumi.Mocks {
///   @override
///   Future<(String?, Map<String, dynamic>)> newResource(
///     pulumi.MockResourceArgs args,
///   ) async {
///     return ('id-1', args.inputs);
///   }
///
///   @override
///   Future<Map<String, dynamic>> call(pulumi.MockCallArgs args) async {
///     return {};
///   }
/// }
///
/// void configure() {
///   pulumi.runtime.setMocks(TestMocks());
/// }
/// ```
///
/// ## Entrypoint recommendation
/// For application code, call [Deployment.runOrThrow]. For tests or custom
/// runners, [Deployment.run] gives explicit exit-code control.
library;

// Value flow and conversion primitives.
export 'src/output.dart';
export 'src/output_helpers.dart';
export 'src/iterable.dart';
export 'src/input.dart';
export 'src/input_collections.dart';
export 'src/input_union.dart';
export 'src/input_args.dart';
export 'src/invoke.dart';
export 'src/invoke_output.dart';

// Core runtime and stack/config APIs.
export 'src/alias.dart';
export 'src/asset_archive.dart';
export 'src/config.dart';
export 'src/deployment/deployment.dart';
export 'src/deployment/stack.dart';
export 'src/deployment/models.dart'
    show Parameterization, RegisterPackageRequest;
export 'src/deprecated.dart';

// Engine/monitor integration and helpers.
export 'src/engine.dart';
export 'src/engine_logger.dart';
export 'src/monitor.dart';
export 'src/type_token.dart';
export 'src/urn.dart';
export 'src/utils.dart';
export 'src/runtime_api.dart';

// Resource model and lifecycle controls.
export 'src/resource/resource.dart';
export 'src/resource/resource_options.dart';
export 'src/resource/resource_hooks.dart';
export 'src/resource/component_resource.dart';
export 'src/resource/custom_resource.dart';
export 'src/resource/provider_resource.dart';
export 'src/resource/dependency_resource.dart';
export 'src/resource/resource_transformation.dart';
export 'src/stack_reference.dart';
export 'src/stash.dart';
