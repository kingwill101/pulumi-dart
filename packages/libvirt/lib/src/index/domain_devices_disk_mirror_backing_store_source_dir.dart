// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final String? dir;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainDevicesDiskMirrorBackingStoreSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceDir(
      dir: map['dir'] == null ? null : map['dir'] as String,
    );
  }
}

