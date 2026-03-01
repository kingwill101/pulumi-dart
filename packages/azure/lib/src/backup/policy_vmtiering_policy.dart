// ignore_for_file: unused_element, unnecessary_cast

import 'policy_vmtiering_policy_archived_restore_point.dart';

class PolicyVMTieringPolicy {
  /// An `archived_restore_point` block as defined below.
  final PolicyVMTieringPolicyArchivedRestorePoint archivedRestorePoint;

  /// Creates a new [PolicyVMTieringPolicy].
  /// [archivedRestorePoint] An `archived_restore_point` block as defined below.
  PolicyVMTieringPolicy({
    required this.archivedRestorePoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archivedRestorePoint': archivedRestorePoint.toMap(),
    };
  }

  factory PolicyVMTieringPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyVMTieringPolicy(
      archivedRestorePoint: PolicyVMTieringPolicyArchivedRestorePoint.fromMap((map['archivedRestorePoint'] as Map).cast<String, dynamic>()),
    );
  }
}

