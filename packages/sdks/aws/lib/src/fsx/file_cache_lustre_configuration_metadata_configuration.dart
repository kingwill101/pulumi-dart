// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileCacheLustreConfigurationMetadataConfiguration {
  /// Storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is `2400` GiB.
  final pulumi.Input<int> storageCapacity;

  /// Creates a new [FileCacheLustreConfigurationMetadataConfiguration].
  /// [storageCapacity] Storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is `2400` GiB.
  const FileCacheLustreConfigurationMetadataConfiguration({
    required this.storageCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageCapacity': storageCapacity,
    };
  }

  factory FileCacheLustreConfigurationMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return FileCacheLustreConfigurationMetadataConfiguration(
      storageCapacity: pulumi.Input.fromValue(map['storageCapacity'] as int),
    );
  }
}
