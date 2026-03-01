// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final String name;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  DomainDevicesDiskBackingStoreSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkSnapshot(
      name: map['name'] as String,
    );
  }
}

