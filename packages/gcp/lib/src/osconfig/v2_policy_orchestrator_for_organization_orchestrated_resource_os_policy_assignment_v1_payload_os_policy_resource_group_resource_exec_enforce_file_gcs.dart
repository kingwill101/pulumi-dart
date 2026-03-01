// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFileGcs {
  /// Required. Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object.
  final String? generation;

  /// Required. Name of the Cloud Storage object.
  final String object;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFileGcs].
  /// [bucket] Required. Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Required. Name of the Cloud Storage object.
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFileGcs.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceExecEnforceFileGcs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null
          ? null
          : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
