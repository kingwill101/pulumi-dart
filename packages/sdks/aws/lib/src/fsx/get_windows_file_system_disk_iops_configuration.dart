// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFileSystemDiskIopsConfiguration {
  final pulumi.Input<int> iops;
  final pulumi.Input<String> mode;

  /// Creates a new [GetWindowsFileSystemDiskIopsConfiguration].
  /// [iops] Required.
  /// [mode] Required.
  GetWindowsFileSystemDiskIopsConfiguration({
    required this.iops,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'iops': iops, 'mode': mode};
  }

  factory GetWindowsFileSystemDiskIopsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsFileSystemDiskIopsConfiguration(
      iops: pulumi.Input.fromValue(map['iops'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
