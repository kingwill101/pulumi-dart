// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionForwardStickiness {
  /// Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> duration;
  /// Whether target group stickiness is enabled. Default is `false`.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ListenerDefaultActionForwardStickiness].
  /// [duration] Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  /// [enabled] Whether target group stickiness is enabled. Default is `false`.
  const ListenerDefaultActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enabled': ?enabled,
    };
  }

  factory ListenerDefaultActionForwardStickiness.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardStickiness(
      duration: pulumi.Input.fromValue((map['duration'] as num).toInt()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
