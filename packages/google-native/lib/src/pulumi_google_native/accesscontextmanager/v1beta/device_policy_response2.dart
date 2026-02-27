// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'os_constraint_response2.dart';

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
class DevicePolicyResponse2 {
  /// Allowed device management levels, an empty list allows all management levels.
  final List<String> allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  final List<String> allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  final List<OsConstraintResponse2> osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  final bool requireAdminApproval;

  /// Whether the device needs to be corp owned.
  final bool requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  final bool requireScreenlock;

  DevicePolicyResponse2({
    required this.allowedDeviceManagementLevels,
    required this.allowedEncryptionStatuses,
    required this.osConstraints,
    required this.requireAdminApproval,
    required this.requireCorpOwned,
    required this.requireScreenlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedDeviceManagementLevels'] = allowedDeviceManagementLevels;
    map['allowedEncryptionStatuses'] = allowedEncryptionStatuses;
    map['osConstraints'] =
        Input.encodeList<OsConstraintResponse2, Map<String, dynamic>>(
            osConstraints, (value) => value.toMap());
    map['requireAdminApproval'] = requireAdminApproval;
    map['requireCorpOwned'] = requireCorpOwned;
    map['requireScreenlock'] = requireScreenlock;
    return map;
  }

  factory DevicePolicyResponse2.fromMap(Map<String, dynamic> map) {
    return DevicePolicyResponse2(
      allowedDeviceManagementLevels:
          (map['allowedDeviceManagementLevels'] as List).cast<String>(),
      allowedEncryptionStatuses:
          (map['allowedEncryptionStatuses'] as List).cast<String>(),
      osConstraints: Input.decodeList<OsConstraintResponse2>(
          map['osConstraints'],
          (value) => OsConstraintResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      requireAdminApproval: map['requireAdminApproval'] as bool,
      requireCorpOwned: map['requireCorpOwned'] as bool,
      requireScreenlock: map['requireScreenlock'] as bool,
    );
  }
}
