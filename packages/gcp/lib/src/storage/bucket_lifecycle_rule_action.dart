// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleRuleAction {
  /// The target [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects affected by this Lifecycle Rule. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  final String? storageClass;

  /// The type of the action of this Lifecycle Rule. Supported values include: `Delete`, `SetStorageClass` and `AbortIncompleteMultipartUpload`.
  final String type;

  /// Creates a new [BucketLifecycleRuleAction].
  /// [storageClass] The target [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects affected by this Lifecycle Rule. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  /// [type] The type of the action of this Lifecycle Rule. Supported values include: `Delete`, `SetStorageClass` and `AbortIncompleteMultipartUpload`.
  BucketLifecycleRuleAction({
    this.storageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    map['type'] = type;
    return map;
  }

  factory BucketLifecycleRuleAction.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleAction(
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
      type: map['type'] as String,
    );
  }
}
