// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceVhostVdpa {
  /// Specifies the device to be used for the VHostVDPA source in the backing store.
  final String dev;

  /// Creates a new [DomainOsNvRamSourceVhostVdpa].
  /// [dev] Specifies the device to be used for the VHostVDPA source in the backing store.
  DomainOsNvRamSourceVhostVdpa({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainOsNvRamSourceVhostVdpa.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostVdpa(
      dev: map['dev'] as String,
    );
  }
}

