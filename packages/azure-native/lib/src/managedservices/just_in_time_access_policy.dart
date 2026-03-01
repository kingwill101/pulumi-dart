// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_approver.dart';

/// Just-in-time access policy setting.
class JustInTimeAccessPolicy {
  /// The list of managedByTenant approvers for the eligible authorization.
  final List<EligibleApprover>? managedByTenantApprovers;
  /// The maximum access duration in ISO 8601 format for just-in-time access requests.
  final String? maximumActivationDuration;
  /// The multi-factor authorization provider to be used for just-in-time access requests.
  final String multiFactorAuthProvider;

  /// Creates a new [JustInTimeAccessPolicy].
  /// [managedByTenantApprovers] The list of managedByTenant approvers for the eligible authorization.
  /// [maximumActivationDuration] The maximum access duration in ISO 8601 format for just-in-time access requests.
  /// [multiFactorAuthProvider] The multi-factor authorization provider to be used for just-in-time access requests.
  JustInTimeAccessPolicy({
    this.managedByTenantApprovers,
    this.maximumActivationDuration,
    required this.multiFactorAuthProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByTenantApprovers': ?managedByTenantApprovers == null ? null : pulumi.Input.encodeList<EligibleApprover, Map<String, dynamic>>(managedByTenantApprovers!, (value) => value.toMap()),
      'maximumActivationDuration': ?maximumActivationDuration,
      'multiFactorAuthProvider': multiFactorAuthProvider,
    };
  }

  factory JustInTimeAccessPolicy.fromMap(Map<String, dynamic> map) {
    return JustInTimeAccessPolicy(
      managedByTenantApprovers: map['managedByTenantApprovers'] == null ? null : pulumi.Input.decodeList<EligibleApprover>(map['managedByTenantApprovers'], (value) => EligibleApprover.fromMap((value as Map).cast<String, dynamic>())),
      maximumActivationDuration: map['maximumActivationDuration'] == null ? null : map['maximumActivationDuration'] as String,
      multiFactorAuthProvider: map['multiFactorAuthProvider'] as String,
    );
  }
}

