// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance view status.
class MachineExtensionInstanceViewResponseStatus {
  /// The status code.
  final pulumi.Input<String> code;
  /// The short localizable label for the status.
  final pulumi.Input<String> displayStatus;
  /// The level code.
  final pulumi.Input<String> level;
  /// The detailed status message, including for alerts and error messages.
  final pulumi.Input<String> message;
  /// The time of the status.
  final pulumi.Input<String> time;

  /// Creates a new [MachineExtensionInstanceViewResponseStatus].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  const MachineExtensionInstanceViewResponseStatus({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      displayStatus: pulumi.Input.fromValue(map['displayStatus'] as String),
      level: pulumi.Input.fromValue(map['level'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

