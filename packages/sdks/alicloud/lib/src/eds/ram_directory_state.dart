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
  RamDirectoryState({
    pulumi.Output<String>? desktopAccessType,
    pulumi.Output<bool>? enableAdminAccess,
    pulumi.Output<bool>? enableInternetAccess,
    pulumi.Output<String>? ramDirectoryName,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? vswitchIds,
  }) :
      desktopAccessType = pulumi.Input.asOptionalInput<String>(desktopAccessType),
      enableAdminAccess = pulumi.Input.asOptionalInput<bool>(enableAdminAccess),
      enableInternetAccess = pulumi.Input.asOptionalInput<bool>(enableInternetAccess),
      ramDirectoryName = pulumi.Input.asOptionalInput<String>(ramDirectoryName),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds);

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
      desktopAccessType: map['desktopAccessType'] == null ? null : pulumi.Output.create<String>(map['desktopAccessType'] as String),
      enableAdminAccess: map['enableAdminAccess'] == null ? null : pulumi.Output.create<bool>(map['enableAdminAccess'] as bool),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : pulumi.Output.create<bool>(map['enableInternetAccess'] as bool),
      ramDirectoryName: map['ramDirectoryName'] == null ? null : pulumi.Output.create<String>(map['ramDirectoryName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchIds: map['vswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

