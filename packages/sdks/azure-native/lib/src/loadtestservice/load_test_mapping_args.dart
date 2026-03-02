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
    this.azureLoadTestingResourceId,
    this.loadTestMappingName,
    required this.resourceUri,
    this.sourceResourceId,
    this.testId,
  });

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
      azureLoadTestingResourceId: map['azureLoadTestingResourceId'] == null ? null : (map['azureLoadTestingResourceId'] as String).input(),
      loadTestMappingName: map['loadTestMappingName'] == null ? null : (map['loadTestMappingName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId'] as String).input(),
      testId: map['testId'] == null ? null : (map['testId'] as String).input(),
    );
  }
}

