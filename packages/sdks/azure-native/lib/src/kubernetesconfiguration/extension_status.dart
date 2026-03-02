// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status from the extension.
class ExtensionStatus {
  /// Status code provided by the Extension
  final pulumi.Input<String>? code;
  /// Short description of status of the extension.
  final pulumi.Input<String>? displayStatus;
  /// Level of the status.
  final pulumi.Input<String>? level;
  /// Detailed message of the status from the Extension.
  final pulumi.Input<String>? message;
  /// DateLiteral (per ISO8601) noting the time of installation status.
  final pulumi.Input<String>? time;

  /// Creates a new [ExtensionStatus].
  /// [code] Status code provided by the Extension
  /// [displayStatus] Short description of status of the extension.
  /// [level] Level of the status.
  /// [message] Detailed message of the status from the Extension.
  /// [time] DateLiteral (per ISO8601) noting the time of installation status.
  ExtensionStatus({
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

  factory ExtensionStatus.fromMap(Map<String, dynamic> map) {
    return ExtensionStatus(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      displayStatus: map['displayStatus'] == null ? null : (map['displayStatus']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      time: map['time'] == null ? null : (map['time']! as String).input(),
    );
  }
}

