// ignore_for_file: unused_element, unnecessary_cast

class OpenZfsVolumeNfsExportsClientConfiguration {
  /// A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.
  final String clients;

  /// The options to use when mounting the file system. Maximum of 20 items. See the [Linix NFS exports man page](https://linux.die.net/man/5/exports) for more information. `crossmount` and `sync` are used by default.
  final List<String> options;

  /// Creates a new [OpenZfsVolumeNfsExportsClientConfiguration].
  /// [clients] A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.
  /// [options] The options to use when mounting the file system. Maximum of 20 items. See the [Linix NFS exports man page](https://linux.die.net/man/5/exports) for more information. `crossmount` and `sync` are used by default.
  OpenZfsVolumeNfsExportsClientConfiguration({
    required this.clients,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clients'] = clients;
    map['options'] = options;
    return map;
  }

  factory OpenZfsVolumeNfsExportsClientConfiguration.fromMap(
      Map<String, dynamic> map) {
    return OpenZfsVolumeNfsExportsClientConfiguration(
      clients: map['clients'] as String,
      options: (map['options'] as List).cast<String>(),
    );
  }
}
