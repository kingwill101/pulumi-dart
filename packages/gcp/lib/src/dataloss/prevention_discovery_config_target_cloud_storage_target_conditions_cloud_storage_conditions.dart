// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions {
  /// Only objects with the specified attributes will be scanned. Defaults to [ALL_SUPPORTED_BUCKETS] if unset.
  /// Each value may be one of: `ALL_SUPPORTED_BUCKETS`, `AUTOCLASS_DISABLED`, `AUTOCLASS_ENABLED`.
  final List<String>? includedBucketAttributes;

  /// Only objects with the specified attributes will be scanned. If an object has one of the specified attributes but is inside an excluded bucket, it will not be scanned. Defaults to [ALL_SUPPORTED_OBJECTS]. A profile will be created even if no objects match the included_object_attributes.
  /// Each value may be one of: `ALL_SUPPORTED_OBJECTS`, `STANDARD`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `REGIONAL`, `MULTI_REGIONAL`, `DURABLE_REDUCED_AVAILABILITY`.
  final List<String>? includedObjectAttributes;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions].
  /// [includedBucketAttributes] Only objects with the specified attributes will be scanned. Defaults to [ALL_SUPPORTED_BUCKETS] if unset.
  /// [includedObjectAttributes] Only objects with the specified attributes will be scanned. If an object has one of the specified attributes but is inside an excluded bucket, it will not be scanned. Defaults to [ALL_SUPPORTED_OBJECTS]. A profile will be created even if no objects match the included_object_attributes.
  PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions({
    this.includedBucketAttributes,
    this.includedObjectAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includedBucketAttributesValue = includedBucketAttributes;
    if (includedBucketAttributesValue != null) {
      map['includedBucketAttributes'] = includedBucketAttributesValue;
    }
    final includedObjectAttributesValue = includedObjectAttributes;
    if (includedObjectAttributesValue != null) {
      map['includedObjectAttributes'] = includedObjectAttributesValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetConditionsCloudStorageConditions(
      includedBucketAttributes: map['includedBucketAttributes'] == null
          ? null
          : (map['includedBucketAttributes'] as List).cast<String>(),
      includedObjectAttributes: map['includedObjectAttributes'] == null
          ? null
          : (map['includedObjectAttributes'] as List).cast<String>(),
    );
  }
}
