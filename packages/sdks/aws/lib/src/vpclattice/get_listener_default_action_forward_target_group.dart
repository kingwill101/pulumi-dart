// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionForwardTargetGroup {
  final pulumi.Input<String> targetGroupIdentifier;
  final pulumi.Input<int> weight;

  /// Creates a new [GetListenerDefaultActionForwardTargetGroup].
  /// [targetGroupIdentifier] Required.
  /// [weight] Required.
  GetListenerDefaultActionForwardTargetGroup({
    required this.targetGroupIdentifier,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupIdentifier': targetGroupIdentifier,
      'weight': weight,
    };
  }

  factory GetListenerDefaultActionForwardTargetGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerDefaultActionForwardTargetGroup(
      targetGroupIdentifier: pulumi.Input.fromValue(
        map['targetGroupIdentifier'] as String,
      ),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
