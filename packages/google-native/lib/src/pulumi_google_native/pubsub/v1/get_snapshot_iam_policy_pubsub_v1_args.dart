// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshotIamPolicy.
class GetSnapshotIamPolicyPubsubV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  GetSnapshotIamPolicyPubsubV1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshotId'] = snapshotId;
    return map;
  }

  factory GetSnapshotIamPolicyPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIamPolicyPubsubV1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
    );
  }
}
