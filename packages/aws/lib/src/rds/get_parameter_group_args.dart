// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_parameter_group_get_parameter_group_args_doc}
/// Arguments for getParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_get_parameter_group_get_parameter_group_args_doc}
class GetParameterGroupArgs {
  /// DB parameter group name.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetParameterGroupArgs].
  /// [name] DB parameter group name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetParameterGroupArgs({required String name, String? region})
    : name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region};
  }

  factory GetParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
