// ignore_for_file: unused_element, unnecessary_cast

class GetLifecyclePolicyDocumentRuleAction {
  /// The storage class you want the lifecycle policy to transition the image to. `archive` is the only supported value.
  final String? targetStorageClass;

  /// Specify an action type. The supported values are `expire` (to delete images) and `transition` (to move images to archive storage).
  final String type;

  GetLifecyclePolicyDocumentRuleAction({
    this.targetStorageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetStorageClassValue = targetStorageClass;
    if (targetStorageClassValue != null) {
      map['targetStorageClass'] = targetStorageClassValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetLifecyclePolicyDocumentRuleAction.fromMap(
      Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRuleAction(
      targetStorageClass: map['targetStorageClass'] == null
          ? null
          : map['targetStorageClass'] as String,
      type: map['type'] as String,
    );
  }
}
