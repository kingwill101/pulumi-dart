// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final String? dir;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskBackingStoreSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceDir(
      dir: map['dir'] == null ? null : map['dir'] as String,
    );
  }
}

