// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final String name;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  DomainDevicesDiskMirrorSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkSnapshot(
      name: map['name'] as String,
    );
  }
}

