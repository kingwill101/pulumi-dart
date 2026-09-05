// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionForwardStickiness {
  final pulumi.Input<int> duration;
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetListenerDefaultActionForwardStickiness].
  /// [duration] Required.
  /// [enabled] Required.
  const GetListenerDefaultActionForwardStickiness({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enabled': enabled,
    };
  }

  factory GetListenerDefaultActionForwardStickiness.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardStickiness(
      duration: pulumi.Input.fromValue((map['duration'] as num).toInt()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
