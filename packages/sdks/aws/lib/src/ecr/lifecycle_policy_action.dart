// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyAction {
  /// The storage class to transition the image to. Required when 'type' is 'transition'. 'archive' is the only supported value.
  final pulumi.Input<String?>? targetStorageClass;
  /// The type of action to take. Either 'expire' or 'transition'.
  final pulumi.Input<dynamic> type;

  /// Creates a new [LifecyclePolicyAction].
  /// [targetStorageClass] The storage class to transition the image to. Required when 'type' is 'transition'. 'archive' is the only supported value.
  /// [type] The type of action to take. Either 'expire' or 'transition'.
  const LifecyclePolicyAction({
    this.targetStorageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetStorageClass': ?targetStorageClass,
      'type': type,
    };
  }

  factory LifecyclePolicyAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyAction(
      targetStorageClass: (() { final guardedValue = map['targetStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
