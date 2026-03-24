// ignore_for_file: unnecessary_library_name

/// Pulumi provider authoring APIs for Dart.
///
/// This library exposes the provider-side contracts and gRPC server helpers
/// used to implement custom Pulumi providers and component methods.
///
/// ## Main entrypoints
/// - [Provider]: implement CRUD operations and optional invokes.
/// - [serve]: host the provider over the Pulumi provider RPC protocol.
/// - [CreateResult], [ReadResult], [DiffResult], [CheckResult], [InvokeResult]:
///   shape the responses sent back to the engine.
///
/// Quick start:
///
/// ```dart
/// import 'package:pulumi/provider.dart';
///
/// class MyProvider extends Provider {
///   @override
///   Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
///     return CreateResult(id: 'resource-1', outs: <String, dynamic>{...inputs});
///   }
/// }
///
/// Future<void> main(List<String> args) async {
///   await serve(MyProvider(), args);
/// }
/// ```
///
/// See `example/provider_authoring_example.dart` in this package for a more
/// complete provider implementation.
///
/// Most end users do not need this library. It is for authoring providers, not
/// consuming them from Pulumi programs.
library provider;

export 'src/input.dart';
export 'src/provider/internals.dart';
export 'src/provider/provider.dart';
export 'src/provider/server.dart';
export 'src/resource/component_resource.dart';
