// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RamDirectory resources.
class RamDirectoryState {
  /// The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  final pulumi.Input<String>? desktopAccessType;
  /// Whether to enable public network access.
  final pulumi.Input<bool>? enableAdminAccess;
  /// Whether to grant local administrator rights to users who use cloud desktops.
  final pulumi.Input<bool>? enableInternetAccess;
  /// The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? ramDirectoryName;
  /// The status of directory.
  final pulumi.Input<String>? status;
  /// List of VSwitch IDs in the directory.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [RamDirectoryState].
  /// [desktopAccessType] The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  /// [enableAdminAccess] Whether to enable public network access.
  /// [enableInternetAccess] Whether to grant local administrator rights to users who use cloud desktops.
  /// [ramDirectoryName] The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [status] The status of directory.
  /// [vswitchIds] List of VSwitch IDs in the directory.
  const RamDirectoryState({
    this.desktopAccessType,
    this.enableAdminAccess,
    this.enableInternetAccess,
    this.ramDirectoryName,
    this.status,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopAccessType': ?desktopAccessType,
      'enableAdminAccess': ?enableAdminAccess,
      'enableInternetAccess': ?enableInternetAccess,
      'ramDirectoryName': ?ramDirectoryName,
      'status': ?status,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory RamDirectoryState.fromMap(Map<String, dynamic> map) {
    return RamDirectoryState(
      desktopAccessType: (() { final guardedValue = map['desktopAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAdminAccess: (() { final guardedValue = map['enableAdminAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInternetAccess: (() { final guardedValue = map['enableInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ramDirectoryName: (() { final guardedValue = map['ramDirectoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchIds: (() { final guardedValue = map['vswitchIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

