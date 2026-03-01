// ignore_for_file: unused_element, unnecessary_cast


/// The properties that determine the run agent configuration.
class AgentPropertiesResponse {
  /// The CPU configuration in terms of number of cores required for the run.
  final int? cpu;

  /// Creates a new [AgentPropertiesResponse].
  /// [cpu] The CPU configuration in terms of number of cores required for the run.
  AgentPropertiesResponse({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory AgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentPropertiesResponse(
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
    );
  }
}

