// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationInclude {
  /// List of S3 bucket ARNs.
  final pulumi.Input<List<String>?>? buckets;
  /// List of AWS Regions.
  final pulumi.Input<List<String>?>? regions;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationInclude].
  /// [buckets] List of S3 bucket ARNs.
  /// [regions] List of AWS Regions.
  const StorageLensConfigurationStorageLensConfigurationInclude({
    this.buckets,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?buckets,
      'regions': ?regions,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationInclude.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationInclude(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
