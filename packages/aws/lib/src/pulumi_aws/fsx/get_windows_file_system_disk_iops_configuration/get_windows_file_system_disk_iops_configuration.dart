// ignore_for_file: unused_element, unnecessary_cast

class GetWindowsFileSystemDiskIopsConfiguration {
  final int iops;
  final String mode;

  GetWindowsFileSystemDiskIopsConfiguration({
    required this.iops,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iops'] = iops;
    map['mode'] = mode;
    return map;
  }

  factory GetWindowsFileSystemDiskIopsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetWindowsFileSystemDiskIopsConfiguration(
      iops: map['iops'] as int,
      mode: map['mode'] as String,
    );
  }
}
