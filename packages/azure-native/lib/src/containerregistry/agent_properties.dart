// ignore_for_file: unused_element, unnecessary_cast


/// The properties that determine the run agent configuration.
class AgentProperties {
  /// The CPU configuration in terms of number of cores required for the run.
  final int? cpu;

  /// Creates a new [AgentProperties].
  /// [cpu] The CPU configuration in terms of number of cores required for the run.
  AgentProperties({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory AgentProperties.fromMap(Map<String, dynamic> map) {
    return AgentProperties(
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
    );
  }
}

