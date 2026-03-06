// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdConnectorOfficeSitesSiteLog {
  /// Log Level. Possible Values: Info: Information Error: Error Warn: Warning.
  final pulumi.Input<String> level;
  /// The Log Details.
  final pulumi.Input<String> message;
  /// Log Information Corresponding to the Step.
  final pulumi.Input<String> step;
  /// Log Print Time.
  final pulumi.Input<String> timeStamp;

  /// Creates a new [GetAdConnectorOfficeSitesSiteLog].
  /// [level] Log Level. Possible Values: Info: Information Error: Error Warn: Warning.
  /// [message] The Log Details.
  /// [step] Log Information Corresponding to the Step.
  /// [timeStamp] Log Print Time.
  const GetAdConnectorOfficeSitesSiteLog({
    required this.level,
    required this.message,
    required this.step,
    required this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'message': message,
      'step': step,
      'timeStamp': timeStamp,
    };
  }

  factory GetAdConnectorOfficeSitesSiteLog.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorOfficeSitesSiteLog(
      level: pulumi.Input.fromValue(map['level'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      step: pulumi.Input.fromValue(map['step'] as String),
      timeStamp: pulumi.Input.fromValue(map['timeStamp'] as String),
    );
  }
}

