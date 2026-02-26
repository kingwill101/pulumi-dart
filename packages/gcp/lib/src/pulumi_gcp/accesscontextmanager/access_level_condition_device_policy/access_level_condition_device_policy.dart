// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_level_condition_device_policy_os_constraint/access_level_condition_device_policy_os_constraint.dart';

class AccessLevelConditionDevicePolicy {
  /// A list of allowed device management levels.
  /// An empty list allows all management levels.
  /// Each value may be one of: `MANAGEMENT_UNSPECIFIED`, `NONE`, `BASIC`, `COMPLETE`.
  final List<String>? allowedDeviceManagementLevels;

  /// A list of allowed encryptions statuses.
  /// An empty list allows all statuses.
  /// Each value may be one of: `ENCRYPTION_UNSPECIFIED`, `ENCRYPTION_UNSUPPORTED`, `UNENCRYPTED`, `ENCRYPTED`.
  final List<String>? allowedEncryptionStatuses;

  /// A list of allowed OS versions.
  /// An empty list allows all types and all versions.
  /// Structure is documented below.
  final List<AccessLevelConditionDevicePolicyOsConstraint>? osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  final bool? requireAdminApproval;

  /// Whether the device needs to be corp owned.
  final bool? requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy
  /// to be true. Defaults to false.
  final bool? requireScreenLock;

  AccessLevelConditionDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedDeviceManagementLevelsValue = allowedDeviceManagementLevels;
    if (allowedDeviceManagementLevelsValue != null) {
      map['allowedDeviceManagementLevels'] = allowedDeviceManagementLevelsValue;
    }
    final allowedEncryptionStatusesValue = allowedEncryptionStatuses;
    if (allowedEncryptionStatusesValue != null) {
      map['allowedEncryptionStatuses'] = allowedEncryptionStatusesValue;
    }
    final osConstraintsValue = osConstraints;
    if (osConstraintsValue != null) {
      map['osConstraints'] = Input.encodeList<
          AccessLevelConditionDevicePolicyOsConstraint,
          Map<String, dynamic>>(osConstraintsValue, (value) => value.toMap());
    }
    final requireAdminApprovalValue = requireAdminApproval;
    if (requireAdminApprovalValue != null) {
      map['requireAdminApproval'] = requireAdminApprovalValue;
    }
    final requireCorpOwnedValue = requireCorpOwned;
    if (requireCorpOwnedValue != null) {
      map['requireCorpOwned'] = requireCorpOwnedValue;
    }
    final requireScreenLockValue = requireScreenLock;
    if (requireScreenLockValue != null) {
      map['requireScreenLock'] = requireScreenLockValue;
    }
    return map;
  }

  factory AccessLevelConditionDevicePolicy.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionDevicePolicy(
      allowedDeviceManagementLevels:
          map['allowedDeviceManagementLevels'] == null
              ? null
              : (map['allowedDeviceManagementLevels'] as List).cast<String>(),
      allowedEncryptionStatuses: map['allowedEncryptionStatuses'] == null
          ? null
          : (map['allowedEncryptionStatuses'] as List).cast<String>(),
      osConstraints: map['osConstraints'] == null
          ? null
          : Input.decodeList<AccessLevelConditionDevicePolicyOsConstraint>(
              map['osConstraints'],
              (value) => AccessLevelConditionDevicePolicyOsConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requireAdminApproval: map['requireAdminApproval'] == null
          ? null
          : map['requireAdminApproval'] as bool,
      requireCorpOwned: map['requireCorpOwned'] == null
          ? null
          : map['requireCorpOwned'] as bool,
      requireScreenLock: map['requireScreenLock'] == null
          ? null
          : map['requireScreenLock'] as bool,
    );
  }
}
