// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSnapshotIamPolicy.
class GetSnapshotIamPolicyArgs4 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> snapshotId;

  GetSnapshotIamPolicyArgs4({
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

  factory GetSnapshotIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIamPolicyArgs4(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
    );
  }
}
