// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that determine the run agent configuration.
class AgentPropertiesResponse {
  /// The CPU configuration in terms of number of cores required for the run.
  final pulumi.Input<int?>? cpu;

  /// Creates a new [AgentPropertiesResponse].
  /// [cpu] The CPU configuration in terms of number of cores required for the run.
  const AgentPropertiesResponse({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory AgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentPropertiesResponse(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
