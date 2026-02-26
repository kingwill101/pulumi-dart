// ignore_for_file: unused_element, unnecessary_cast

class OpenZfsVolumeNfsExportsClientConfiguration {
  /// A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.
  final String clients;

  /// The options to use when mounting the file system. Maximum of 20 items. See the [Linix NFS exports man page](https://linux.die.net/man/5/exports) for more information. <span pulumi-lang-nodejs="`crossmount`" pulumi-lang-dotnet="`Crossmount`" pulumi-lang-go="`crossmount`" pulumi-lang-python="`crossmount`" pulumi-lang-yaml="`crossmount`" pulumi-lang-java="`crossmount`">`crossmount`</span> and <span pulumi-lang-nodejs="`sync`" pulumi-lang-dotnet="`Sync`" pulumi-lang-go="`sync`" pulumi-lang-python="`sync`" pulumi-lang-yaml="`sync`" pulumi-lang-java="`sync`">`sync`</span> are used by default.
  final List<String> options;

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
