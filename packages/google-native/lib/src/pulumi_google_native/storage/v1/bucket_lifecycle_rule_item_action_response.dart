// ignore_for_file: unused_element, unnecessary_cast

/// The action to take.
class BucketLifecycleRuleItemActionResponse {
  /// Target storage class. Required iff the type of the action is SetStorageClass.
  final String storageClass;

  /// Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  final String type;

  BucketLifecycleRuleItemActionResponse({
    required this.storageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageClass'] = storageClass;
    map['type'] = type;
    return map;
  }

  factory BucketLifecycleRuleItemActionResponse.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleRuleItemActionResponse(
      storageClass: map['storageClass'] as String,
      type: map['type'] as String,
    );
  }
}
