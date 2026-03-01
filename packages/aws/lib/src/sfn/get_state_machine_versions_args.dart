// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sfn_get_state_machine_versions_get_state_machine_versions_args_doc}
/// Arguments for getStateMachineVersions.
/// {@endtemplate}
/// {@macro pulumi_sfn_get_state_machine_versions_get_state_machine_versions_args_doc}
class GetStateMachineVersionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the State Machine.
  final pulumi.Input<String> statemachineArn;

  /// Creates a new [GetStateMachineVersionsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statemachineArn] ARN of the State Machine.
  GetStateMachineVersionsArgs({
    String? region,
    required String statemachineArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      statemachineArn = pulumi.Input.asInput<String>(statemachineArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'statemachineArn': statemachineArn,
    };
  }

  factory GetStateMachineVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetStateMachineVersionsArgs(
      region: map['region'] == null ? null : map['region'] as String,
      statemachineArn: map['statemachineArn'] as String,
    );
  }
}

