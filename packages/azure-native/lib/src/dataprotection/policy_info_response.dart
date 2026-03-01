// ignore_for_file: unused_element, unnecessary_cast

import 'policy_parameters_response.dart';

/// Policy Info in backupInstance
class PolicyInfoResponse {
  final String policyId;
  /// Policy parameters for the backup instance
  final PolicyParametersResponse? policyParameters;
  final String policyVersion;

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
      'policyParameters': ?policyParameters == null ? null : policyParameters!.toMap(),
      'policyVersion': policyVersion,
    };
  }

  factory PolicyInfoResponse.fromMap(Map<String, dynamic> map) {
    return PolicyInfoResponse(
      policyId: map['policyId'] as String,
      policyParameters: map['policyParameters'] == null ? null : PolicyParametersResponse.fromMap((map['policyParameters'] as Map).cast<String, dynamic>()),
      policyVersion: map['policyVersion'] as String,
    );
  }
}

