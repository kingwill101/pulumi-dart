// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration {
  /// A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.
  final pulumi.Input<String> clients;
  /// The options to use when mounting the file system. Maximum of 20 items. See the [Linix NFS exports man page](https://linux.die.net/man/5/exports) for more information. `crossmount` and `sync` are used by default.
  final pulumi.Input<List<String>> options;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration].
  /// [clients] A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.
  /// [options] The options to use when mounting the file system. Maximum of 20 items. See the [Linix NFS exports man page](https://linux.die.net/man/5/exports) for more information. `crossmount` and `sync` are used by default.
  OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration({
    required this.clients,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': clients,
      'options': options,
    };
  }

  factory OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration(
      clients: (map['clients'] as String).input(),
      options: ((map['options'] as List).cast<String>()).input(),
    );
  }
}

