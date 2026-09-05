// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentOutputContext {
  /// Name of the output context.
  final pulumi.Input<String> name;
  /// Amount of time, in seconds, that the output context should remain active. The time is figured from the first time the context is sent to the user.
  final pulumi.Input<int> timeToLiveInSeconds;
  /// Number of conversation turns that the output context should remain active. The number of turns is counted from the first time that the context is sent to the user.
  final pulumi.Input<int> turnsToLive;

  /// Creates a new [V2modelsIntentOutputContext].
  /// [name] Name of the output context.
  /// [timeToLiveInSeconds] Amount of time, in seconds, that the output context should remain active. The time is figured from the first time the context is sent to the user.
  /// [turnsToLive] Number of conversation turns that the output context should remain active. The number of turns is counted from the first time that the context is sent to the user.
  const V2modelsIntentOutputContext({
    required this.name,
    required this.timeToLiveInSeconds,
    required this.turnsToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'timeToLiveInSeconds': timeToLiveInSeconds,
      'turnsToLive': turnsToLive,
    };
  }

  factory V2modelsIntentOutputContext.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentOutputContext(
      name: pulumi.Input.fromValue(map['name'] as String),
      timeToLiveInSeconds: pulumi.Input.fromValue((map['timeToLiveInSeconds'] as num).toInt()),
      turnsToLive: pulumi.Input.fromValue((map['turnsToLive'] as num).toInt()),
    );
  }
}
