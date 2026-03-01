// ignore_for_file: unused_element, unnecessary_cast


/// Instance view status.
class ExtensionsResourceStatusResponse {
  /// The status code.
  final String? code;
  /// The short localizable label for the status.
  final String? displayStatus;
  /// The level code.
  final String? level;
  /// The detailed status message, including for alerts and error messages.
  final String? message;
  /// The time of the status.
  final String? time;

  /// Creates a new [ExtensionsResourceStatusResponse].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  ExtensionsResourceStatusResponse({
    this.code,
    this.displayStatus,
    this.level,
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'displayStatus': ?displayStatus,
      'level': ?level,
      'message': ?message,
      'time': ?time,
    };
  }

  factory ExtensionsResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionsResourceStatusResponse(
      code: map['code'] == null ? null : map['code'] as String,
      displayStatus: map['displayStatus'] == null ? null : map['displayStatus'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

