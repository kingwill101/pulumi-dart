// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final String? dir;

  /// Creates a new [DomainDevicesDiskSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceDir(
      dir: map['dir'] == null ? null : map['dir'] as String,
    );
  }
}

