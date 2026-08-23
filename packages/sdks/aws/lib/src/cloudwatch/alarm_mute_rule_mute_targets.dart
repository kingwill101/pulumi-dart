// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlarmMuteRuleMuteTargets {
  /// List of alarm names to mute.
  final pulumi.Input<List<String>> alarmNames;

  /// Creates a new [AlarmMuteRuleMuteTargets].
  /// [alarmNames] List of alarm names to mute.
  const AlarmMuteRuleMuteTargets({
    required this.alarmNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmNames': alarmNames,
    };
  }

  factory AlarmMuteRuleMuteTargets.fromMap(Map<String, dynamic> map) {
    return AlarmMuteRuleMuteTargets(
      alarmNames: pulumi.Input.fromValue((map['alarmNames'] as List).cast<String>()),
    );
  }
}
