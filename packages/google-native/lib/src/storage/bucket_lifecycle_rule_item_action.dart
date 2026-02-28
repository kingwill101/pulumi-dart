// ignore_for_file: unused_element, unnecessary_cast

/// The action to take.
class BucketLifecycleRuleItemAction {
  /// Target storage class. Required iff the type of the action is SetStorageClass.
  final String? storageClass;

  /// Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  final String? type;

  /// Creates a new [BucketLifecycleRuleItemAction].
  /// [storageClass] Target storage class. Required iff the type of the action is SetStorageClass.
  /// [type] Type of the action. Currently, only Delete, SetStorageClass, and AbortIncompleteMultipartUpload are supported.
  BucketLifecycleRuleItemAction({
    this.storageClass,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory BucketLifecycleRuleItemAction.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItemAction(
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
