// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemBinaryOpenFiles {
  /// Defines the upper limit for the number of open files in the binary filesystem.
  final double max;

  /// Creates a new [DomainDevicesFilesystemBinaryOpenFiles].
  /// [max] Defines the upper limit for the number of open files in the binary filesystem.
  DomainDevicesFilesystemBinaryOpenFiles({
    required this.max,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
    };
  }

  factory DomainDevicesFilesystemBinaryOpenFiles.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryOpenFiles(
      max: map['max'] as double,
    );
  }
}

