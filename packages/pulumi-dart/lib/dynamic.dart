// ignore_for_file: unnecessary_library_name

/// Dynamic resource authoring APIs.
///
/// This module mirrors the shape of dynamic-provider APIs available in other
/// Pulumi language SDKs. It contains provider result models and a base
/// [Resource] that injects the reserved `__provider` input payload.
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
library dynamic;

export 'src/dynamic/dynamic.dart';
