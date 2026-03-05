// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerReadinessProbeExec {
  final pulumi.Input<List<String>>? commands;

  /// Creates a new [ContainerGroupContainerReadinessProbeExec].
  /// [commands] Optional.
  ContainerGroupContainerReadinessProbeExec({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory ContainerGroupContainerReadinessProbeExec.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerReadinessProbeExec(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

