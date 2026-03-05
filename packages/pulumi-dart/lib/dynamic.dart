// ignore_for_file: unnecessary_library_name

/// Dynamic resource authoring APIs.
///
/// This module mirrors the shape of dynamic-provider APIs available in other
/// Pulumi language SDKs. It contains provider result models and a base
/// [Resource] that injects the reserved `__provider` input payload.
///
/// Use this library when you want provider-like behavior inside a Pulumi
/// program without publishing a separate provider plugin. Dynamic resources are
/// useful for prototyping and for narrowly scoped custom lifecycle logic.
///
/// ## Example
/// ```dart
/// import 'package:pulumi/dynamic.dart' as dynamic;
/// import 'package:pulumi/pulumi.dart' as pulumi;
///
/// class ExampleDynamicResource extends dynamic.Resource {
///   ExampleDynamicResource(
///     dynamic.ProviderReference provider,
///     String name,
///   ) : super(
///         provider,
///         name,
///         pulumi.Input.mapToInputs({'message': 'hello'}),
///         type: 'ExampleResource',
///       );
/// }
/// ```
///
/// For published provider plugins and full provider RPC servers, prefer
/// `package:pulumi/provider.dart`.
library dynamic;

export 'src/dynamic/dynamic.dart';
