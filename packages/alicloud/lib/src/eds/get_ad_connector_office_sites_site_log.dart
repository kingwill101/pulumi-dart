// ignore_for_file: unused_element, unnecessary_cast


class GetAdConnectorOfficeSitesSiteLog {
  /// Log Level. Possible Values: Info: Information Error: Error Warn: Warning.
  final String level;
  /// The Log Details.
  final String message;
  /// Log Information Corresponding to the Step.
  final String step;
  /// Log Print Time.
  final String timeStamp;

  /// Creates a new [GetAdConnectorOfficeSitesSiteLog].
  /// [level] Log Level. Possible Values: Info: Information Error: Error Warn: Warning.
  /// [message] The Log Details.
  /// [step] Log Information Corresponding to the Step.
  /// [timeStamp] Log Print Time.
  GetAdConnectorOfficeSitesSiteLog({
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
      level: map['level'] as String,
      message: map['message'] as String,
      step: map['step'] as String,
      timeStamp: map['timeStamp'] as String,
    );
  }
}

