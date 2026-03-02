// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_parameters_response.dart';

/// Policy Info in backupInstance
class PolicyInfoResponse {
  final pulumi.Input<String> policyId;
  /// Policy parameters for the backup instance
  final pulumi.Input<PolicyParametersResponse>? policyParameters;
  final pulumi.Input<String> policyVersion;

  /// Creates a new [PolicyInfoResponse].
  /// [policyId] Required.
  /// [policyParameters] Policy parameters for the backup instance
  /// [policyVersion] Required.
  PolicyInfoResponse({
    required this.policyId,
    this.policyParameters,
    required this.policyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'policyParameters': ?pulumi.Input.mapOptionalInputValue<PolicyParametersResponse, Map<String, dynamic>>(policyParameters, (value) => value.toMap()),
      'policyVersion': policyVersion,
    };
  }

  factory PolicyInfoResponse.fromMap(Map<String, dynamic> map) {
    return PolicyInfoResponse(
      policyId: (map['policyId'] as String).input(),
      policyParameters: map['policyParameters'] == null ? null : (PolicyParametersResponse.fromMap((map['policyParameters'] as Map).cast<String, dynamic>())).input(),
      policyVersion: (map['policyVersion'] as String).input(),
    );
  }
}

