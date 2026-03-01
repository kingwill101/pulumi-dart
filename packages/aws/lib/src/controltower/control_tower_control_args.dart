// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_tower_control_parameter.dart';

/// {@template pulumi_controltower_control_tower_control_control_tower_control_args_doc}
/// The set of arguments for ControlTowerControl.
/// {@endtemplate}
/// {@macro pulumi_controltower_control_tower_control_control_tower_control_args_doc}
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

  /// Creates a new [ControlTowerControlArgs].
  /// [controlIdentifier] The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  /// [parameters] Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetIdentifier] The ARN of the organizational unit.
  ControlTowerControlArgs({
    required String controlIdentifier,
    List<ControlTowerControlParameter>? parameters,
    String? region,
    required String targetIdentifier,
  }) : controlIdentifier = pulumi.Input.asInput<String>(controlIdentifier),
       parameters =
           pulumi.Input.asOptionalInput<List<ControlTowerControlParameter>>(
             parameters,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       targetIdentifier = pulumi.Input.asInput<String>(targetIdentifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlIdentifier': controlIdentifier,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ControlTowerControlParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ControlTowerControlParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'targetIdentifier': targetIdentifier,
    };
  }

  factory ControlTowerControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlTowerControlArgs(
      controlIdentifier: map['controlIdentifier'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ControlTowerControlParameter>(
              map['parameters'],
              (value) => ControlTowerControlParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      targetIdentifier: map['targetIdentifier'] as String,
    );
  }
}
