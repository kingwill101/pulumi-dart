// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionForwardStickiness {
  final pulumi.Input<int> duration;
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetListenerDefaultActionForwardStickiness].
  /// [duration] Required.
  /// [enabled] Required.
  GetListenerDefaultActionForwardStickiness({
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
      duration: (map['duration'] as int).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

