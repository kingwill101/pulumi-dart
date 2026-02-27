// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_tower_control_parameter/control_tower_control_parameter.dart';

/// The set of arguments for ControlTowerControl.
class ControlTowerControlArgs {
  /// The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  final pulumi.Input<String> controlIdentifier;

  /// Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  final pulumi.Input<List<ControlTowerControlParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the organizational unit.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetIdentifier;

  ControlTowerControlArgs({
    required this.controlIdentifier,
    this.parameters,
    this.region,
    required this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlIdentifier'] = controlIdentifier;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ControlTowerControlParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<ControlTowerControlParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetIdentifier'] = targetIdentifier;
    return map;
  }

  factory ControlTowerControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlTowerControlArgs(
      controlIdentifier: pulumi.Input.asInput<String>(map['controlIdentifier']),
      parameters:
          pulumi.Input.asOptionalInput<List<ControlTowerControlParameter>>(
              map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetIdentifier: pulumi.Input.asInput<String>(map['targetIdentifier']),
    );
  }
}
