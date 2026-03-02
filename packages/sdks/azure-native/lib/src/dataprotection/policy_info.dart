// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_parameters.dart';

/// Policy Info in backupInstance
class PolicyInfo {
  final pulumi.Input<String> policyId;
  /// Policy parameters for the backup instance
  final pulumi.Input<PolicyParameters>? policyParameters;

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
      'policyParameters': ?pulumi.Input.mapOptionalInputValue<PolicyParameters, Map<String, dynamic>>(policyParameters, (value) => value.toMap()),
    };
  }

  factory PolicyInfo.fromMap(Map<String, dynamic> map) {
    return PolicyInfo(
      policyId: (map['policyId'] as String).input(),
      policyParameters: map['policyParameters'] == null ? null : (PolicyParameters.fromMap((map['policyParameters']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

