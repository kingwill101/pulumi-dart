// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions {
  /// Bucket types that should be profiled. Optional. Defaults to TYPE_ALL_SUPPORTED if unspecified. Possible values: ["TYPE_ALL_SUPPORTED", "TYPE_GENERAL_PURPOSE"]
  final List<String>? bucketTypes;

  /// Object classes that should be profiled. Optional. Defaults to ALL_SUPPORTED_CLASSES if unspecified. Possible values: ["ALL_SUPPORTED_CLASSES", "STANDARD", "STANDARD_INFREQUENT_ACCESS", "GLACIER_INSTANT_RETRIEVAL", "INTELLIGENT_TIERING"]
  final List<String>? objectStorageClasses;

  PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions({
    this.bucketTypes,
    this.objectStorageClasses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketTypesValue = bucketTypes;
    if (bucketTypesValue != null) {
      map['bucketTypes'] = bucketTypesValue;
    }
    final objectStorageClassesValue = objectStorageClasses;
    if (objectStorageClassesValue != null) {
      map['objectStorageClasses'] = objectStorageClassesValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions(
      bucketTypes: map['bucketTypes'] == null
          ? null
          : (map['bucketTypes'] as List).cast<String>(),
      objectStorageClasses: map['objectStorageClasses'] == null
          ? null
          : (map['objectStorageClasses'] as List).cast<String>(),
    );
  }
}
