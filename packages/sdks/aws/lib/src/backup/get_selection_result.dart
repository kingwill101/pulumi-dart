// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSelection.
class GetSelectionResult {
  /// ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  final String iamRoleArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Display name of a resource selection document.
  final String name;
  final String planId;
  final String region;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan..
  final List<String> resources;
  final String selectionId;

  /// Creates a new [GetSelectionResult].
  /// [iamRoleArn] ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Display name of a resource selection document.
  /// [planId] Required.
  /// [region] Required.
  /// [resources] An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan..
  /// [selectionId] Required.
  GetSelectionResult({
    required this.iamRoleArn,
    required this.id,
    required this.name,
    required this.planId,
    required this.region,
    required this.resources,
    required this.selectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': iamRoleArn,
      'id': id,
      'name': name,
      'planId': planId,
      'region': region,
      'resources': resources,
      'selectionId': selectionId,
    };
  }

  factory GetSelectionResult.fromMap(Map<String, dynamic> map) {
    return GetSelectionResult(
      iamRoleArn: map['iamRoleArn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      planId: map['planId'] as String,
      region: map['region'] as String,
      resources: (map['resources'] as List).cast<String>(),
      selectionId: map['selectionId'] as String,
    );
  }
}
