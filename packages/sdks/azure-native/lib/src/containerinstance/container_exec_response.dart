// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container execution command, for liveness or readiness probe
class ContainerExecResponse {
  /// The commands to execute within the container.
  final pulumi.Input<List<String>>? command;

  /// Creates a new [ContainerExecResponse].
  /// [command] The commands to execute within the container.
  ContainerExecResponse({
    this.command,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
    };
  }

  factory ContainerExecResponse.fromMap(Map<String, dynamic> map) {
    return ContainerExecResponse(
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
    );
  }
}

