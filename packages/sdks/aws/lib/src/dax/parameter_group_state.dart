// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// Input properties used for looking up and filtering ParameterGroup resources.
class ParameterGroupState {
  /// A description of the parameter group.
  final pulumi.Input<String>? description;
  /// The name of the parameter group.
  final pulumi.Input<String>? name;
  /// The parameters of the parameter group.
  final pulumi.Input<List<ParameterGroupParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ParameterGroupState].
  /// [description] A description of the parameter group.
  /// [name] The name of the parameter group.
  /// [parameters] The parameters of the parameter group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ParameterGroupState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<List<ParameterGroupParameter>>? parameters,
    pulumi.Output<String>? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<List<ParameterGroupParameter>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory ParameterGroupState.fromMap(Map<String, dynamic> map) {
    return ParameterGroupState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ParameterGroupParameter>>(pulumi.Input.decodeList<ParameterGroupParameter>(map['parameters'], (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

