// ignore_for_file: unused_element, unnecessary_cast

import 'policy_vmworkload_protection_policy_backup.dart';
import 'policy_vmworkload_protection_policy_retention_daily.dart';
import 'policy_vmworkload_protection_policy_retention_monthly.dart';
import 'policy_vmworkload_protection_policy_retention_weekly.dart';
import 'policy_vmworkload_protection_policy_retention_yearly.dart';
import 'policy_vmworkload_protection_policy_simple_retention.dart';

class PolicyVMWorkloadProtectionPolicy {
  /// A `backup` block as defined below.
  final PolicyVMWorkloadProtectionPolicyBackup backup;
  /// The type of the VM Workload Backup Policy. Possible values are `Differential`, `Full`, `Incremental` and `Log`.
  final String policyType;
  /// A `retention_daily` block as defined below.
  final PolicyVMWorkloadProtectionPolicyRetentionDaily? retentionDaily;
  /// A `retention_monthly` block as defined below.
  final PolicyVMWorkloadProtectionPolicyRetentionMonthly? retentionMonthly;
  /// A `retention_weekly` block as defined below.
  final PolicyVMWorkloadProtectionPolicyRetentionWeekly? retentionWeekly;
  /// A `retention_yearly` block as defined below.
  final PolicyVMWorkloadProtectionPolicyRetentionYearly? retentionYearly;
  /// A `simple_retention` block as defined below.
  final PolicyVMWorkloadProtectionPolicySimpleRetention? simpleRetention;

  /// Creates a new [PolicyVMWorkloadProtectionPolicy].
  /// [backup] A `backup` block as defined below.
  /// [policyType] The type of the VM Workload Backup Policy. Possible values are `Differential`, `Full`, `Incremental` and `Log`.
  /// [retentionDaily] A `retention_daily` block as defined below.
  /// [retentionMonthly] A `retention_monthly` block as defined below.
  /// [retentionWeekly] A `retention_weekly` block as defined below.
  /// [retentionYearly] A `retention_yearly` block as defined below.
  /// [simpleRetention] A `simple_retention` block as defined below.
  PolicyVMWorkloadProtectionPolicy({
    required this.backup,
    required this.policyType,
    this.retentionDaily,
    this.retentionMonthly,
    this.retentionWeekly,
    this.retentionYearly,
    this.simpleRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup.toMap(),
      'policyType': policyType,
      'retentionDaily': ?retentionDaily == null ? null : retentionDaily!.toMap(),
      'retentionMonthly': ?retentionMonthly == null ? null : retentionMonthly!.toMap(),
      'retentionWeekly': ?retentionWeekly == null ? null : retentionWeekly!.toMap(),
      'retentionYearly': ?retentionYearly == null ? null : retentionYearly!.toMap(),
      'simpleRetention': ?simpleRetention == null ? null : simpleRetention!.toMap(),
    };
  }

  factory PolicyVMWorkloadProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicy(
      backup: PolicyVMWorkloadProtectionPolicyBackup.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      policyType: map['policyType'] as String,
      retentionDaily: map['retentionDaily'] == null ? null : PolicyVMWorkloadProtectionPolicyRetentionDaily.fromMap((map['retentionDaily'] as Map).cast<String, dynamic>()),
      retentionMonthly: map['retentionMonthly'] == null ? null : PolicyVMWorkloadProtectionPolicyRetentionMonthly.fromMap((map['retentionMonthly'] as Map).cast<String, dynamic>()),
      retentionWeekly: map['retentionWeekly'] == null ? null : PolicyVMWorkloadProtectionPolicyRetentionWeekly.fromMap((map['retentionWeekly'] as Map).cast<String, dynamic>()),
      retentionYearly: map['retentionYearly'] == null ? null : PolicyVMWorkloadProtectionPolicyRetentionYearly.fromMap((map['retentionYearly'] as Map).cast<String, dynamic>()),
      simpleRetention: map['simpleRetention'] == null ? null : PolicyVMWorkloadProtectionPolicySimpleRetention.fromMap((map['simpleRetention'] as Map).cast<String, dynamic>()),
    );
  }
}

