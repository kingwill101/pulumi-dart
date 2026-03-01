// ignore_for_file: unused_element, unnecessary_cast


/// Status from the extension.
class ExtensionStatusResponse {
  /// Status code provided by the Extension
  final String? code;
  /// Short description of status of the extension.
  final String? displayStatus;
  /// Level of the status.
  final String? level;
  /// Detailed message of the status from the Extension.
  final String? message;
  /// DateLiteral (per ISO8601) noting the time of installation status.
  final String? time;

  /// Creates a new [ExtensionStatusResponse].
  /// [code] Status code provided by the Extension
  /// [displayStatus] Short description of status of the extension.
  /// [level] Level of the status.
  /// [message] Detailed message of the status from the Extension.
  /// [time] DateLiteral (per ISO8601) noting the time of installation status.
  ExtensionStatusResponse({
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

  factory ExtensionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionStatusResponse(
      code: map['code'] == null ? null : map['code'] as String,
      displayStatus: map['displayStatus'] == null ? null : map['displayStatus'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

