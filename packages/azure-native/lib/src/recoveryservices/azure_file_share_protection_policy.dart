// ignore_for_file: unused_element, unnecessary_cast

import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';
import 'vault_retention_policy.dart';

/// AzureStorage backup policy.
class AzureFileShareProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureStorage'.
  final String backupManagementType;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final LongTermRetentionPolicy? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final LogSchedulePolicy? schedulePolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final String? timeZone;
  /// Retention policy with the details on hardened backup copy retention ranges.
  final VaultRetentionPolicy? vaultRetentionPolicy;
  /// Type of workload for the backup management
  final String? workLoadType;

  /// Creates a new [AzureFileShareProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  /// [vaultRetentionPolicy] Retention policy with the details on hardened backup copy retention ranges.
  /// [workLoadType] Type of workload for the backup management
  AzureFileShareProtectionPolicy({
    required this.backupManagementType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
    this.schedulePolicy,
    this.timeZone,
    this.vaultRetentionPolicy,
    this.workLoadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'timeZone': ?timeZone,
      'vaultRetentionPolicy': ?vaultRetentionPolicy == null ? null : vaultRetentionPolicy!.toMap(),
      'workLoadType': ?workLoadType,
    };
  }

  factory AzureFileShareProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return AzureFileShareProtectionPolicy(
      backupManagementType: map['backupManagementType'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicy.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      vaultRetentionPolicy: map['vaultRetentionPolicy'] == null ? null : VaultRetentionPolicy.fromMap((map['vaultRetentionPolicy'] as Map).cast<String, dynamic>()),
      workLoadType: map['workLoadType'] == null ? null : map['workLoadType'] as String,
    );
  }
}

