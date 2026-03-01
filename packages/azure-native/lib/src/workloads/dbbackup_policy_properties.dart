// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings.dart';
import 'sub_protection_policy.dart';

/// Defines the policy properties for database backup.
class DBBackupPolicyProperties {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureWorkload'.
  final String backupManagementType;
  /// Fix the policy inconsistency
  final bool? makePolicyConsistent;
  /// The name of the DB backup policy.
  final String name;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Common settings for the backup management
  final Settings? settings;
  /// List of sub-protection policies which includes schedule and retention
  final List<SubProtectionPolicy>? subProtectionPolicy;
  /// Type of workload for the backup management
  final String? workLoadType;

  /// Creates a new [DBBackupPolicyProperties].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [makePolicyConsistent] Fix the policy inconsistency
  /// [name] The name of the DB backup policy.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [settings] Common settings for the backup management
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [workLoadType] Type of workload for the backup management
  DBBackupPolicyProperties({
    required this.backupManagementType,
    this.makePolicyConsistent,
    required this.name,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.settings,
    this.subProtectionPolicy,
    this.workLoadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'makePolicyConsistent': ?makePolicyConsistent,
      'name': name,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'settings': ?settings == null ? null : settings!.toMap(),
      'subProtectionPolicy': ?subProtectionPolicy == null ? null : pulumi.Input.encodeList<SubProtectionPolicy, Map<String, dynamic>>(subProtectionPolicy!, (value) => value.toMap()),
      'workLoadType': ?workLoadType,
    };
  }

  factory DBBackupPolicyProperties.fromMap(Map<String, dynamic> map) {
    return DBBackupPolicyProperties(
      backupManagementType: map['backupManagementType'] as String,
      makePolicyConsistent: map['makePolicyConsistent'] == null ? null : map['makePolicyConsistent'] as bool,
      name: map['name'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      settings: map['settings'] == null ? null : Settings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
      subProtectionPolicy: map['subProtectionPolicy'] == null ? null : pulumi.Input.decodeList<SubProtectionPolicy>(map['subProtectionPolicy'], (value) => SubProtectionPolicy.fromMap((value as Map).cast<String, dynamic>())),
      workLoadType: map['workLoadType'] == null ? null : map['workLoadType'] as String,
    );
  }
}

