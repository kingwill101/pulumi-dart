// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_constraint_response_accesscontextmanager_v1beta.dart';

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
class DevicePolicyResponseAccesscontextmanagerV1beta {
  /// Allowed device management levels, an empty list allows all management levels.
  final List<String> allowedDeviceManagementLevels;
  /// Allowed encryptions statuses, an empty list allows all statuses.
  final List<String> allowedEncryptionStatuses;
  /// Allowed OS versions, an empty list allows all types and all versions.
  final List<OsConstraintResponseAccesscontextmanagerV1beta> osConstraints;
  /// Whether the device needs to be approved by the customer admin.
  final bool requireAdminApproval;
  /// Whether the device needs to be corp owned.
  final bool requireCorpOwned;
  /// Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  final bool requireScreenlock;

  /// Creates a new [DevicePolicyResponseAccesscontextmanagerV1beta].
  /// [allowedDeviceManagementLevels] Allowed device management levels, an empty list allows all management levels.
  /// [allowedEncryptionStatuses] Allowed encryptions statuses, an empty list allows all statuses.
  /// [osConstraints] Allowed OS versions, an empty list allows all types and all versions.
  /// [requireAdminApproval] Whether the device needs to be approved by the customer admin.
  /// [requireCorpOwned] Whether the device needs to be corp owned.
  /// [requireScreenlock] Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  DevicePolicyResponseAccesscontextmanagerV1beta({
    required this.allowedDeviceManagementLevels,
    required this.allowedEncryptionStatuses,
    required this.osConstraints,
    required this.requireAdminApproval,
    required this.requireCorpOwned,
    required this.requireScreenlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDeviceManagementLevels': allowedDeviceManagementLevels,
      'allowedEncryptionStatuses': allowedEncryptionStatuses,
      'osConstraints': pulumi.Input.encodeList<OsConstraintResponseAccesscontextmanagerV1beta, Map<String, dynamic>>(osConstraints, (value) => value.toMap()),
      'requireAdminApproval': requireAdminApproval,
      'requireCorpOwned': requireCorpOwned,
      'requireScreenlock': requireScreenlock,
    };
  }

  factory DevicePolicyResponseAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return DevicePolicyResponseAccesscontextmanagerV1beta(
      allowedDeviceManagementLevels: (map['allowedDeviceManagementLevels'] as List).cast<String>(),
      allowedEncryptionStatuses: (map['allowedEncryptionStatuses'] as List).cast<String>(),
      osConstraints: pulumi.Input.decodeList<OsConstraintResponseAccesscontextmanagerV1beta>(map['osConstraints'], (value) => OsConstraintResponseAccesscontextmanagerV1beta.fromMap((value as Map).cast<String, dynamic>())),
      requireAdminApproval: map['requireAdminApproval'] as bool,
      requireCorpOwned: map['requireCorpOwned'] as bool,
      requireScreenlock: map['requireScreenlock'] as bool,
    );
  }
}

