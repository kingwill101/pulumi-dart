// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExecAction describes a "run in container" action.
class ExecActionResponse {
  /// Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  final pulumi.Input<List<String>>? command;
  /// The type of the action to take to perform the health check.
  /// Expected value is 'ExecAction'.
  final pulumi.Input<String> type;

  /// Creates a new [ExecActionResponse].
  /// [command] Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  /// [type] The type of the action to take to perform the health check.
  ExecActionResponse({
    this.command,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'type': type,
    };
  }

  factory ExecActionResponse.fromMap(Map<String, dynamic> map) {
    return ExecActionResponse(
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

