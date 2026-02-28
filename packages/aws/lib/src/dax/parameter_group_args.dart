// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// {@template pulumi_dax_parameter_group_parameter_group_args_doc}
/// The set of arguments for ParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_dax_parameter_group_parameter_group_args_doc}
class ParameterGroupArgs {
  /// A description of the parameter group.
  final pulumi.Input<String>? description;

  /// The name of the parameter group.
  final pulumi.Input<String>? name;

  /// The parameters of the parameter group.
  final pulumi.Input<List<ParameterGroupParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ParameterGroupArgs].
  /// [description] A description of the parameter group.
  /// [name] The name of the parameter group.
  /// [parameters] The parameters of the parameter group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ParameterGroupArgs({
    String? description,
    String? name,
    List<ParameterGroupParameter>? parameters,
    String? region,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        parameters =
            pulumi.Input.asOptionalInput<List<ParameterGroupParameter>>(
                parameters),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ParameterGroupParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<ParameterGroupParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ParameterGroupParameter>(
              map['parameters'],
              (value) => ParameterGroupParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
