// ignore_for_file: unused_element, unnecessary_cast


class CloudVmClusterFileSystemConfiguration {
  /// The mount path of the file system.
  final String? mountPoint;
  /// The size of the virtual machine's file system.
  final int? sizeInGb;

  /// Creates a new [CloudVmClusterFileSystemConfiguration].
  /// [mountPoint] The mount path of the file system.
  /// [sizeInGb] The size of the virtual machine's file system.
  CloudVmClusterFileSystemConfiguration({
    this.mountPoint,
    this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoint': ?mountPoint,
      'sizeInGb': ?sizeInGb,
    };
  }

  factory CloudVmClusterFileSystemConfiguration.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterFileSystemConfiguration(
      mountPoint: map['mountPoint'] == null ? null : map['mountPoint'] as String,
      sizeInGb: map['sizeInGb'] == null ? null : map['sizeInGb'] as int,
    );
  }
}

