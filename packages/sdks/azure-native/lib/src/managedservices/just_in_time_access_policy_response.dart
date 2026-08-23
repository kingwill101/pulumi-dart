// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_approver_response.dart';

/// Just-in-time access policy setting.
class JustInTimeAccessPolicyResponse {
  /// The list of managedByTenant approvers for the eligible authorization.
  final pulumi.Input<List<EligibleApproverResponse>>? managedByTenantApprovers;
  /// The maximum access duration in ISO 8601 format for just-in-time access requests.
  final pulumi.Input<String>? maximumActivationDuration;
  /// The multi-factor authorization provider to be used for just-in-time access requests.
  final pulumi.Input<String> multiFactorAuthProvider;

  /// Creates a new [JustInTimeAccessPolicyResponse].
  /// [managedByTenantApprovers] The list of managedByTenant approvers for the eligible authorization.
  /// [maximumActivationDuration] The maximum access duration in ISO 8601 format for just-in-time access requests.
  /// [multiFactorAuthProvider] The multi-factor authorization provider to be used for just-in-time access requests.
  const JustInTimeAccessPolicyResponse({
    this.managedByTenantApprovers,
    this.maximumActivationDuration,
    required this.multiFactorAuthProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByTenantApprovers': ?pulumi.Input.mapOptionalInputValue<List<EligibleApproverResponse>, List<Map<String, dynamic>>>(managedByTenantApprovers, (value) => pulumi.Input.encodeList<EligibleApproverResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumActivationDuration': ?maximumActivationDuration,
      'multiFactorAuthProvider': multiFactorAuthProvider,
    };
  }

  factory JustInTimeAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return JustInTimeAccessPolicyResponse(
      managedByTenantApprovers: (() { final guardedValue = map['managedByTenantApprovers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EligibleApproverResponse>(guardedValue, (value) => EligibleApproverResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumActivationDuration: (() { final guardedValue = map['maximumActivationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiFactorAuthProvider: pulumi.Input.fromValue(map['multiFactorAuthProvider'] as String),
    );
  }
}
