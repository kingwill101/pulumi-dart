// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerLivenessProbeExec {
  final List<String>? commands;

  /// Creates a new [ContainerGroupContainerLivenessProbeExec].
  /// [commands] Optional.
  ContainerGroupContainerLivenessProbeExec({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory ContainerGroupContainerLivenessProbeExec.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerLivenessProbeExec(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
    );
  }
}

