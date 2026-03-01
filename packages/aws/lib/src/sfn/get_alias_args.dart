// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sfn_get_alias_get_alias_args_doc}
/// Arguments for getAlias.
/// {@endtemplate}
/// {@macro pulumi_sfn_get_alias_get_alias_args_doc}
class GetAliasArgs {
  /// Description of state machine alias.
  final pulumi.Input<String>? description;
  /// Name of the State Machine alias.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the State Machine.
  final pulumi.Input<String> statemachineArn;

  /// Creates a new [GetAliasArgs].
  /// [description] Description of state machine alias.
  /// [name] Name of the State Machine alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statemachineArn] ARN of the State Machine.
  GetAliasArgs({
    String? description,
    required String name,
    String? region,
    required String statemachineArn,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      statemachineArn = pulumi.Input.asInput<String>(statemachineArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'region': ?region,
      'statemachineArn': statemachineArn,
    };
  }

  factory GetAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      statemachineArn: map['statemachineArn'] as String,
    );
  }
}

