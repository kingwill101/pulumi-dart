// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'device_policy_allowed_device_management_levels_item2.dart';
import 'device_policy_allowed_encryption_statuses_item2.dart';
import 'os_constraint2.dart';

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
class DevicePolicy2 {
  /// Allowed device management levels, an empty list allows all management levels.
  final List<DevicePolicyAllowedDeviceManagementLevelsItem2>?
      allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  final List<DevicePolicyAllowedEncryptionStatusesItem2>?
      allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  final List<OsConstraint2>? osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  final bool? requireAdminApproval;

  /// Whether the device needs to be corp owned.
  final bool? requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  final bool? requireScreenlock;

  DevicePolicy2({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedDeviceManagementLevelsValue = allowedDeviceManagementLevels;
    if (allowedDeviceManagementLevelsValue != null) {
      map['allowedDeviceManagementLevels'] = Input.encodeList<
          DevicePolicyAllowedDeviceManagementLevelsItem2,
          String>(allowedDeviceManagementLevelsValue, (value) => value.value);
    }
    final allowedEncryptionStatusesValue = allowedEncryptionStatuses;
    if (allowedEncryptionStatusesValue != null) {
      map['allowedEncryptionStatuses'] =
          Input.encodeList<DevicePolicyAllowedEncryptionStatusesItem2, String>(
              allowedEncryptionStatusesValue, (value) => value.value);
    }
    final osConstraintsValue = osConstraints;
    if (osConstraintsValue != null) {
      map['osConstraints'] =
          Input.encodeList<OsConstraint2, Map<String, dynamic>>(
              osConstraintsValue, (value) => value.toMap());
    }
    final requireAdminApprovalValue = requireAdminApproval;
    if (requireAdminApprovalValue != null) {
      map['requireAdminApproval'] = requireAdminApprovalValue;
    }
    final requireCorpOwnedValue = requireCorpOwned;
    if (requireCorpOwnedValue != null) {
      map['requireCorpOwned'] = requireCorpOwnedValue;
    }
    final requireScreenlockValue = requireScreenlock;
    if (requireScreenlockValue != null) {
      map['requireScreenlock'] = requireScreenlockValue;
    }
    return map;
  }

  factory DevicePolicy2.fromMap(Map<String, dynamic> map) {
    return DevicePolicy2(
      allowedDeviceManagementLevels: map['allowedDeviceManagementLevels'] ==
              null
          ? null
          : Input.decodeList<DevicePolicyAllowedDeviceManagementLevelsItem2>(
              map['allowedDeviceManagementLevels'],
              (value) =>
                  DevicePolicyAllowedDeviceManagementLevelsItem2.fromValue(
                      value as String)),
      allowedEncryptionStatuses: map['allowedEncryptionStatuses'] == null
          ? null
          : Input.decodeList<DevicePolicyAllowedEncryptionStatusesItem2>(
              map['allowedEncryptionStatuses'],
              (value) => DevicePolicyAllowedEncryptionStatusesItem2.fromValue(
                  value as String)),
      osConstraints: map['osConstraints'] == null
          ? null
          : Input.decodeList<OsConstraint2>(
              map['osConstraints'],
              (value) => OsConstraint2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requireAdminApproval: map['requireAdminApproval'] == null
          ? null
          : map['requireAdminApproval'] as bool,
      requireCorpOwned: map['requireCorpOwned'] == null
          ? null
          : map['requireCorpOwned'] as bool,
      requireScreenlock: map['requireScreenlock'] == null
          ? null
          : map['requireScreenlock'] as bool,
    );
  }
}
