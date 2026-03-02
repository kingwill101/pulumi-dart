// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_ram_directory_ram_directory_args_doc}
/// The set of arguments for RamDirectory.
/// {@endtemplate}
/// {@macro pulumi_eds_ram_directory_ram_directory_args_doc}
class RamDirectoryArgs {
  /// The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  final pulumi.Input<String>? desktopAccessType;
  /// Whether to enable public network access.
  final pulumi.Input<bool>? enableAdminAccess;
  /// Whether to grant local administrator rights to users who use cloud desktops.
  final pulumi.Input<bool>? enableInternetAccess;
  /// The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String> ramDirectoryName;
  /// List of VSwitch IDs in the directory.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [RamDirectoryArgs].
  /// [desktopAccessType] The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  /// [enableAdminAccess] Whether to enable public network access.
  /// [enableInternetAccess] Whether to grant local administrator rights to users who use cloud desktops.
  /// [ramDirectoryName] The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [vswitchIds] List of VSwitch IDs in the directory.
  RamDirectoryArgs({
    this.desktopAccessType,
    this.enableAdminAccess,
    this.enableInternetAccess,
    required this.ramDirectoryName,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopAccessType': ?desktopAccessType,
      'enableAdminAccess': ?enableAdminAccess,
      'enableInternetAccess': ?enableInternetAccess,
      'ramDirectoryName': ramDirectoryName,
      'vswitchIds': vswitchIds,
    };
  }

  factory RamDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return RamDirectoryArgs(
      desktopAccessType: map['desktopAccessType'] == null ? null : (map['desktopAccessType']! as String).input(),
      enableAdminAccess: map['enableAdminAccess'] == null ? null : (map['enableAdminAccess']! as bool).input(),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : (map['enableInternetAccess']! as bool).input(),
      ramDirectoryName: (map['ramDirectoryName'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

