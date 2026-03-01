// ignore_for_file: unused_element, unnecessary_cast


class ApplicationLivenessV2Exec {
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  final List<String>? commands;

  /// Creates a new [ApplicationLivenessV2Exec].
  /// [commands] Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  ApplicationLivenessV2Exec({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory ApplicationLivenessV2Exec.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2Exec(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
    );
  }
}

