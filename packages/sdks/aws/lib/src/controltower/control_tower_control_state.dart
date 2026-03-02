// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_tower_control_parameter.dart';

/// Input properties used for looking up and filtering ControlTowerControl resources.
class ControlTowerControlState {
  /// The ARN of the EnabledControl resource.
  final pulumi.Input<String>? arn;
  /// The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  final pulumi.Input<String>? controlIdentifier;
  /// Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  final pulumi.Input<List<ControlTowerControlParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the organizational unit.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? targetIdentifier;

  /// Creates a new [ControlTowerControlState].
  /// [arn] The ARN of the EnabledControl resource.
  /// [controlIdentifier] The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  /// [parameters] Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetIdentifier] The ARN of the organizational unit.
  ControlTowerControlState({
    this.arn,
    this.controlIdentifier,
    this.parameters,
    this.region,
    this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'controlIdentifier': ?controlIdentifier,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ControlTowerControlParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ControlTowerControlParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'targetIdentifier': ?targetIdentifier,
    };
  }

  factory ControlTowerControlState.fromMap(Map<String, dynamic> map) {
    return ControlTowerControlState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      controlIdentifier: map['controlIdentifier'] == null ? null : (map['controlIdentifier'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ControlTowerControlParameter>(map['parameters'], (value) => ControlTowerControlParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetIdentifier: map['targetIdentifier'] == null ? null : (map['targetIdentifier'] as String).input(),
    );
  }
}

