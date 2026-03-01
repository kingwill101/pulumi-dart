// ignore_for_file: unused_element, unnecessary_cast

class GetLifecyclePolicyDocumentRuleAction {
  /// The storage class you want the lifecycle policy to transition the image to. `archive` is the only supported value.
  final String? targetStorageClass;

  /// Specify an action type. The supported values are `expire` (to delete images) and `transition` (to move images to archive storage).
  final String type;

  /// Creates a new [GetLifecyclePolicyDocumentRuleAction].
  /// [targetStorageClass] The storage class you want the lifecycle policy to transition the image to. `archive` is the only supported value.
  /// [type] Specify an action type. The supported values are `expire` (to delete images) and `transition` (to move images to archive storage).
  GetLifecyclePolicyDocumentRuleAction({
    this.targetStorageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClass': ?targetStorageClass,
      'type': type,
    };
  }

  factory GetLifecyclePolicyDocumentRuleAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLifecyclePolicyDocumentRuleAction(
      targetStorageClass: map['targetStorageClass'] == null
          ? null
          : map['targetStorageClass'] as String,
      type: map['type'] as String,
    );
  }
}
