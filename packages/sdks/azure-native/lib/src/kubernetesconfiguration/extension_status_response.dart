// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status from the extension.
class ExtensionStatusResponse {
  /// Status code provided by the Extension
  final pulumi.Input<String?>? code;
  /// Short description of status of the extension.
  final pulumi.Input<String?>? displayStatus;
  /// Level of the status.
  final pulumi.Input<String?>? level;
  /// Detailed message of the status from the Extension.
  final pulumi.Input<String?>? message;
  /// DateLiteral (per ISO8601) noting the time of installation status.
  final pulumi.Input<String?>? time;

  /// Creates a new [ExtensionStatusResponse].
  /// [code] Status code provided by the Extension
  /// [displayStatus] Short description of status of the extension.
  /// [level] Level of the status.
  /// [message] Detailed message of the status from the Extension.
  /// [time] DateLiteral (per ISO8601) noting the time of installation status.
  ExtensionStatusResponse({
    this.code,
    this.displayStatus,
    pulumi.Input<String?>? level,
    this.message,
    this.time,
  }) : level = level ?? pulumi.Input.fromValue('Information');

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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayStatus: (() { final guardedValue = map['displayStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
