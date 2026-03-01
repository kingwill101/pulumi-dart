// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy_response.dart';
import 'long_term_retention_policy_response.dart';
import 'snapshot_backup_additional_details_response.dart';
import 'tiering_policy_response.dart';

/// Sub-protection policy which includes schedule and retention
class SubProtectionPolicyResponse {
  /// Type of backup policy type
  final String? policyType;
  /// Retention policy with the details on backup copy retention ranges.
  final LongTermRetentionPolicyResponse? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final LogSchedulePolicyResponse? schedulePolicy;
  /// Snapshot Backup related fields for WorkloadType SaPHanaSystem
  final SnapshotBackupAdditionalDetailsResponse? snapshotBackupAdditionalDetails;
  /// Tiering policy to automatically move RPs to another tier.
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final Map<String, TieringPolicyResponse>? tieringPolicy;

  /// Creates a new [SubProtectionPolicyResponse].
  /// [policyType] Type of backup policy type
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [snapshotBackupAdditionalDetails] Snapshot Backup related fields for WorkloadType SaPHanaSystem
  /// [tieringPolicy] Tiering policy to automatically move RPs to another tier.
  SubProtectionPolicyResponse({
    this.policyType,
    this.retentionPolicy,
    this.schedulePolicy,
    this.snapshotBackupAdditionalDetails,
    this.tieringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyType': ?policyType,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'snapshotBackupAdditionalDetails': ?snapshotBackupAdditionalDetails == null ? null : snapshotBackupAdditionalDetails!.toMap(),
      'tieringPolicy': ?tieringPolicy == null ? null : pulumi.Input.encodeMapValues<TieringPolicyResponse, Map<String, dynamic>>(tieringPolicy!, (value) => value.toMap()),
    };
  }

  factory SubProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return SubProtectionPolicyResponse(
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicyResponse.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      snapshotBackupAdditionalDetails: map['snapshotBackupAdditionalDetails'] == null ? null : SnapshotBackupAdditionalDetailsResponse.fromMap((map['snapshotBackupAdditionalDetails'] as Map).cast<String, dynamic>()),
      tieringPolicy: map['tieringPolicy'] == null ? null : pulumi.Input.decodeMapValues<TieringPolicyResponse>(map['tieringPolicy'], (value) => TieringPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

