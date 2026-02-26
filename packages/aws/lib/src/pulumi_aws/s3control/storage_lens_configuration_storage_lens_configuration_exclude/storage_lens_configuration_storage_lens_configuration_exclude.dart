// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationExclude {
  /// List of S3 bucket ARNs.
  final List<String>? buckets;

  /// List of AWS Regions.
  final List<String>? regions;

  StorageLensConfigurationStorageLensConfigurationExclude({
    this.buckets,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketsValue = buckets;
    if (bucketsValue != null) {
      map['buckets'] = bucketsValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationExclude.fromMap(
      Map<String, dynamic> map) {
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
