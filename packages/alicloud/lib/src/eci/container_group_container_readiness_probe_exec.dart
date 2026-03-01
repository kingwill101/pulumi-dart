// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerReadinessProbeExec {
  final List<String>? commands;

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
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
    );
  }
}

