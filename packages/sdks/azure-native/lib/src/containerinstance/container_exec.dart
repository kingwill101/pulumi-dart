// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container execution command, for liveness or readiness probe
class ContainerExec {
  /// The commands to execute within the container.
  final pulumi.Input<List<String>>? command;

  /// Creates a new [ContainerExec].
  /// [command] The commands to execute within the container.
  ContainerExec({
    this.command,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
    };
  }

  factory ContainerExec.fromMap(Map<String, dynamic> map) {
    return ContainerExec(
      command: map['command'] == null ? null : ((map['command']! as List).cast<String>()).input(),
    );
  }
}

