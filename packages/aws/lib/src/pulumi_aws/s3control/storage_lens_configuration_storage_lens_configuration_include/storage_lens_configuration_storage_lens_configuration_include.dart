// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationInclude {
  /// List of S3 bucket ARNs.
  final List<String>? buckets;

  /// List of AWS Regions.
  final List<String>? regions;

  StorageLensConfigurationStorageLensConfigurationInclude({
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

  factory StorageLensConfigurationStorageLensConfigurationInclude.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationInclude(
      buckets: map['buckets'] == null
          ? null
          : (map['buckets'] as List).cast<String>(),
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
    );
  }
}
