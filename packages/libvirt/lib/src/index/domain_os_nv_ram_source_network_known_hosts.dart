// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final String path;

  /// Creates a new [DomainOsNvRamSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainOsNvRamSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainOsNvRamSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkKnownHosts(
      path: map['path'] as String,
    );
  }
}

