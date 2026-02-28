// ignore_for_file: unused_element, unnecessary_cast


class FileCacheLustreConfigurationMetadataConfiguration {
  /// The storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is `2400` GiB.
  final int storageCapacity;

  /// Creates a new [FileCacheLustreConfigurationMetadataConfiguration].
  /// [storageCapacity] The storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is `2400` GiB.
  FileCacheLustreConfigurationMetadataConfiguration({
    required this.storageCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageCapacity': storageCapacity,
    };
  }

  factory FileCacheLustreConfigurationMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return FileCacheLustreConfigurationMetadataConfiguration(
      storageCapacity: map['storageCapacity'] as int,
    );
  }
}

