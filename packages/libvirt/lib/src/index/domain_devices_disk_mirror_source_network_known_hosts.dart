// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final String path;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainDevicesDiskMirrorSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkKnownHosts(
      path: map['path'] as String,
    );
  }
}

