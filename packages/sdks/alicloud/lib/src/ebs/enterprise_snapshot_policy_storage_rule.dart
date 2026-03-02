// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseSnapshotPolicyStorageRule {
  /// Snapshot speed available.
  final pulumi.Input<bool>? enableImmediateAccess;

  /// Creates a new [EnterpriseSnapshotPolicyStorageRule].
  /// [enableImmediateAccess] Snapshot speed available.
  EnterpriseSnapshotPolicyStorageRule({
    this.enableImmediateAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableImmediateAccess': ?enableImmediateAccess,
    };
  }

  factory EnterpriseSnapshotPolicyStorageRule.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyStorageRule(
      enableImmediateAccess: map['enableImmediateAccess'] == null ? null : (map['enableImmediateAccess']! as bool).input(),
    );
  }
}

