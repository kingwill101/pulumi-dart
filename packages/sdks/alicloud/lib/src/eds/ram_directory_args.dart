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
    pulumi.Output<String>? desktopAccessType,
    pulumi.Output<bool>? enableAdminAccess,
    pulumi.Output<bool>? enableInternetAccess,
    required pulumi.Output<String> ramDirectoryName,
    required pulumi.Output<List<String>> vswitchIds,
  }) :
      desktopAccessType = pulumi.Input.asOptionalInput<String>(desktopAccessType),
      enableAdminAccess = pulumi.Input.asOptionalInput<bool>(enableAdminAccess),
      enableInternetAccess = pulumi.Input.asOptionalInput<bool>(enableInternetAccess),
      ramDirectoryName = pulumi.Input.asInput<String>(ramDirectoryName),
      vswitchIds = pulumi.Input.asInput<List<String>>(vswitchIds);

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
      desktopAccessType: map['desktopAccessType'] == null ? null : pulumi.Output.create<String>(map['desktopAccessType'] as String),
      enableAdminAccess: map['enableAdminAccess'] == null ? null : pulumi.Output.create<bool>(map['enableAdminAccess'] as bool),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : pulumi.Output.create<bool>(map['enableInternetAccess'] as bool),
      ramDirectoryName: pulumi.Output.create<String>(map['ramDirectoryName'] as String),
      vswitchIds: pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

