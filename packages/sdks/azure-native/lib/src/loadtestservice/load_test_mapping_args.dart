// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_load_test_mapping_args_doc}
/// The set of arguments for LoadTestMapping.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_load_test_mapping_args_doc}
class LoadTestMappingArgs {
  /// Mapped Azure Load Test resource Id.
  final pulumi.Input<String>? azureLoadTestingResourceId;
  /// Load Test Mapping name
  final pulumi.Input<String>? loadTestMappingName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// Mapped source resource Id.
  final pulumi.Input<String>? sourceResourceId;
  /// Mapped Azure Load Test resource test-id.
  final pulumi.Input<String>? testId;

  /// Creates a new [LoadTestMappingArgs].
  /// [azureLoadTestingResourceId] Mapped Azure Load Test resource Id.
  /// [loadTestMappingName] Load Test Mapping name
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [sourceResourceId] Mapped source resource Id.
  /// [testId] Mapped Azure Load Test resource test-id.
  LoadTestMappingArgs({
    pulumi.Output<String>? azureLoadTestingResourceId,
    pulumi.Output<String>? loadTestMappingName,
    required pulumi.Output<String> resourceUri,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? testId,
  }) :
      azureLoadTestingResourceId = pulumi.Input.asOptionalInput<String>(azureLoadTestingResourceId),
      loadTestMappingName = pulumi.Input.asOptionalInput<String>(loadTestMappingName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      testId = pulumi.Input.asOptionalInput<String>(testId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLoadTestingResourceId': ?azureLoadTestingResourceId,
      'loadTestMappingName': ?loadTestMappingName,
      'resourceUri': resourceUri,
      'sourceResourceId': ?sourceResourceId,
      'testId': ?testId,
    };
  }

  factory LoadTestMappingArgs.fromMap(Map<String, dynamic> map) {
    return LoadTestMappingArgs(
      azureLoadTestingResourceId: map['azureLoadTestingResourceId'] == null ? null : pulumi.Output.create<String>(map['azureLoadTestingResourceId'] as String),
      loadTestMappingName: map['loadTestMappingName'] == null ? null : pulumi.Output.create<String>(map['loadTestMappingName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      testId: map['testId'] == null ? null : pulumi.Output.create<String>(map['testId'] as String),
    );
  }
}

