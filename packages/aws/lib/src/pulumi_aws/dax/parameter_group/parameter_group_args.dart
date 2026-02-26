// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter.dart';

/// The set of arguments for ParameterGroup.
class ParameterGroupArgs {
  /// A description of the parameter group.
  final Input<String>? description;

  /// The name of the parameter group.
  final Input<String>? name;

  /// The parameters of the parameter group.
  final Input<List<ParameterGroupParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ParameterGroupArgs({
    this.description,
    this.name,
    this.parameters,
    this.region,
  });

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
      map['parameters'] = Input.mapOptionalInputValue<
              List<ParameterGroupParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<List<ParameterGroupParameter>>(
          map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
