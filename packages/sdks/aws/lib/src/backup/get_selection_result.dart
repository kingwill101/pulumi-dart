// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSelection.
class GetSelectionResult {
  /// ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  final String? iamRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Display name of a resource selection document.
  final String? name;
  final String? planId;
  final String? region;
  /// Array of strings that either contain ARNs or match patterns of resources to assign to a backup plan.
  final List<String>? resources;
  final String? selectionId;

  /// Creates a new [GetSelectionResult].
  /// [iamRoleArn] ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Display name of a resource selection document.
  /// [planId] Optional.
  /// [region] Optional.
  /// [resources] Array of strings that either contain ARNs or match patterns of resources to assign to a backup plan.
  /// [selectionId] Optional.
  const GetSelectionResult({
    this.iamRoleArn,
    this.id,
    this.name,
    this.planId,
    this.region,
    this.resources,
    this.selectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': ?iamRoleArn,
      'id': ?id,
      'name': ?name,
      'planId': ?planId,
      'region': ?region,
      'resources': ?resources,
      'selectionId': ?selectionId,
    };
  }

  factory GetSelectionResult.fromMap(Map<String, dynamic> map) {
    return GetSelectionResult(
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      selectionId: (() { final guardedValue = map['selectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
