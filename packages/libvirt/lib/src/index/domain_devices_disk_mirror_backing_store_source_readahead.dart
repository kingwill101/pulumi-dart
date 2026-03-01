// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final String size;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainDevicesDiskMirrorBackingStoreSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReadahead(
      size: map['size'] as String,
    );
  }
}

