// ignore_for_file: unused_element, unnecessary_cast

class GetWindowsFileSystemDiskIopsConfiguration {
  final int iops;
  final String mode;

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
      iops: map['iops'] as int,
      mode: map['mode'] as String,
    );
  }
}
