// ignore_for_file: unused_element, unnecessary_cast


/// Instance view status.
class MachineExtensionInstanceViewResponseStatus {
  /// The status code.
  final String code;
  /// The short localizable label for the status.
  final String displayStatus;
  /// The level code.
  final String level;
  /// The detailed status message, including for alerts and error messages.
  final String message;
  /// The time of the status.
  final String time;

  /// Creates a new [MachineExtensionInstanceViewResponseStatus].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  MachineExtensionInstanceViewResponseStatus({
    required this.code,
    required this.displayStatus,
    required this.level,
    required this.message,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'displayStatus': displayStatus,
      'level': level,
      'message': message,
      'time': time,
    };
  }

  factory MachineExtensionInstanceViewResponseStatus.fromMap(Map<String, dynamic> map) {
    return MachineExtensionInstanceViewResponseStatus(
      code: map['code'] as String,
      displayStatus: map['displayStatus'] as String,
      level: map['level'] as String,
      message: map['message'] as String,
      time: map['time'] as String,
    );
  }
}

