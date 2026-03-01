// ignore_for_file: unused_element, unnecessary_cast

import 'policy_parameters.dart';

/// Policy Info in backupInstance
class PolicyInfo {
  final String policyId;
  /// Policy parameters for the backup instance
  final PolicyParameters? policyParameters;

  /// Creates a new [PolicyInfo].
  /// [policyId] Required.
  /// [policyParameters] Policy parameters for the backup instance
  PolicyInfo({
    required this.policyId,
    this.policyParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'policyParameters': ?policyParameters == null ? null : policyParameters!.toMap(),
    };
  }

  factory PolicyInfo.fromMap(Map<String, dynamic> map) {
    return PolicyInfo(
      policyId: map['policyId'] as String,
      policyParameters: map['policyParameters'] == null ? null : PolicyParameters.fromMap((map['policyParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

