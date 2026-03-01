// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceReadahead {
  /// Configures the size of data that should be prefetched when reading from the network block device.
  final String size;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReadahead].
  /// [size] Configures the size of data that should be prefetched when reading from the network block device.
  DomainDevicesDiskBackingStoreSourceReadahead({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReadahead.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReadahead(
      size: map['size'] as String,
    );
  }
}

