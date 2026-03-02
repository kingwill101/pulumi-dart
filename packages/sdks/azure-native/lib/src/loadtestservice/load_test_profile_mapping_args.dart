// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_load_test_profile_mapping_args_doc}
/// The set of arguments for LoadTestProfileMapping.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_load_test_profile_mapping_args_doc}
class LoadTestProfileMappingArgs {
  /// Mapped Azure Load Test resource Id.
  final pulumi.Input<String>? azureLoadTestingResourceId;
  /// Load Test Profile Mapping name
  final pulumi.Input<String>? loadTestProfileMappingName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// Mapped source resource Id.
  final pulumi.Input<String>? sourceResourceId;
  /// Mapped Azure Load Test resource test-profile-id.
  final pulumi.Input<String>? testProfileId;

  /// Creates a new [LoadTestProfileMappingArgs].
  /// [azureLoadTestingResourceId] Mapped Azure Load Test resource Id.
  /// [loadTestProfileMappingName] Load Test Profile Mapping name
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [sourceResourceId] Mapped source resource Id.
  /// [testProfileId] Mapped Azure Load Test resource test-profile-id.
  LoadTestProfileMappingArgs({
    this.azureLoadTestingResourceId,
    this.loadTestProfileMappingName,
    required this.resourceUri,
    this.sourceResourceId,
    this.testProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLoadTestingResourceId': ?azureLoadTestingResourceId,
      'loadTestProfileMappingName': ?loadTestProfileMappingName,
      'resourceUri': resourceUri,
      'sourceResourceId': ?sourceResourceId,
      'testProfileId': ?testProfileId,
    };
  }

  factory LoadTestProfileMappingArgs.fromMap(Map<String, dynamic> map) {
    return LoadTestProfileMappingArgs(
      azureLoadTestingResourceId: map['azureLoadTestingResourceId'] == null ? null : (map['azureLoadTestingResourceId'] as String).input(),
      loadTestProfileMappingName: map['loadTestProfileMappingName'] == null ? null : (map['loadTestProfileMappingName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId'] as String).input(),
      testProfileId: map['testProfileId'] == null ? null : (map['testProfileId'] as String).input(),
    );
  }
}

