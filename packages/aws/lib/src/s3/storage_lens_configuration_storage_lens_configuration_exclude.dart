// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationExclude {
  /// List of S3 bucket ARNs.
  final List<String>? buckets;

  /// List of AWS Regions.
  final List<String>? regions;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExclude].
  /// [buckets] List of S3 bucket ARNs.
  /// [regions] List of AWS Regions.
  StorageLensConfigurationStorageLensConfigurationExclude({
    this.buckets,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'buckets': ?buckets, 'regions': ?regions};
  }

  factory StorageLensConfigurationStorageLensConfigurationExclude.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationExclude(
      buckets: map['buckets'] == null
          ? null
          : (map['buckets'] as List).cast<String>(),
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
    );
  }
}
