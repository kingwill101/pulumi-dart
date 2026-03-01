// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final String path;

  /// Creates a new [DomainDevicesDiskSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainDevicesDiskSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkKnownHosts(
      path: map['path'] as String,
    );
  }
}

