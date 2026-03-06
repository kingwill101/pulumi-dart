// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that determine the run agent configuration.
class AgentProperties {
  /// The CPU configuration in terms of number of cores required for the run.
  final pulumi.Input<int>? cpu;

  /// Creates a new [AgentProperties].
  /// [cpu] The CPU configuration in terms of number of cores required for the run.
  const AgentProperties({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory AgentProperties.fromMap(Map<String, dynamic> map) {
    return AgentProperties(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

