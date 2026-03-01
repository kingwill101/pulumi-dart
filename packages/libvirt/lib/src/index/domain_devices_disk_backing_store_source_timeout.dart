// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceTimeout {
  /// Specifies the duration in seconds for the timeout configuration in disk mirroring.
  final String seconds;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceTimeout].
  /// [seconds] Specifies the duration in seconds for the timeout configuration in disk mirroring.
  DomainDevicesDiskBackingStoreSourceTimeout({
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seconds': seconds,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceTimeout.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceTimeout(
      seconds: map['seconds'] as String,
    );
  }
}

