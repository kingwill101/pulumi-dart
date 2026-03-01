// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_protection_policy.dart';

/// Azure VM (Mercury) workload-specific backup policy.
class GenericProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'GenericProtectionPolicy'.
  final String backupManagementType;
  /// Name of this policy's fabric.
  final String? fabricName;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// List of sub-protection policies which includes schedule and retention
  final List<SubProtectionPolicy>? subProtectionPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final String? timeZone;

  /// Creates a new [GenericProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [fabricName] Name of this policy's fabric.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  GenericProtectionPolicy({
    required this.backupManagementType,
    this.fabricName,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.subProtectionPolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'fabricName': ?fabricName,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'subProtectionPolicy': ?subProtectionPolicy == null ? null : pulumi.Input.encodeList<SubProtectionPolicy, Map<String, dynamic>>(subProtectionPolicy!, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory GenericProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return GenericProtectionPolicy(
      backupManagementType: map['backupManagementType'] as String,
      fabricName: map['fabricName'] == null ? null : map['fabricName'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      subProtectionPolicy: map['subProtectionPolicy'] == null ? null : pulumi.Input.decodeList<SubProtectionPolicy>(map['subProtectionPolicy'], (value) => SubProtectionPolicy.fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

