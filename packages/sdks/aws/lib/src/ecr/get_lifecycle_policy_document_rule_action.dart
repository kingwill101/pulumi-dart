// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLifecyclePolicyDocumentRuleAction {
  /// The storage class you want the lifecycle policy to transition the image to. `archive` is the only supported value.
  final pulumi.Input<String>? targetStorageClass;
  /// Specify an action type. The supported values are `expire` (to delete images) and `transition` (to move images to archive storage).
  final pulumi.Input<String> type;

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

  factory GetLifecyclePolicyDocumentRuleAction.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRuleAction(
      targetStorageClass: map['targetStorageClass'] == null ? null : (map['targetStorageClass'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

