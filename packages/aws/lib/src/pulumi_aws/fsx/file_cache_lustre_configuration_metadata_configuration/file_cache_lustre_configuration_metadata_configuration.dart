// ignore_for_file: unused_element, unnecessary_cast

class FileCacheLustreConfigurationMetadataConfiguration {
  /// The storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is <span pulumi-lang-nodejs="`2400`" pulumi-lang-dotnet="`2400`" pulumi-lang-go="`2400`" pulumi-lang-python="`2400`" pulumi-lang-yaml="`2400`" pulumi-lang-java="`2400`">`2400`</span> GiB.
  final int storageCapacity;

  FileCacheLustreConfigurationMetadataConfiguration({
    required this.storageCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageCapacity'] = storageCapacity;
    return map;
  }

  factory FileCacheLustreConfigurationMetadataConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FileCacheLustreConfigurationMetadataConfiguration(
      storageCapacity: map['storageCapacity'] as int,
    );
  }
}
