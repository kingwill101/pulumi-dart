// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// {@template pulumi_rds_parameter_group_parameter_group_args_doc}
/// The set of arguments for ParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_parameter_group_parameter_group_args_doc}
class ParameterGroupArgs {
  /// The description of the DB parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String?>? description;
  /// The family of the DB parameter group.
  final pulumi.Input<String> family;
  /// The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// The DB parameters to apply. See `parameter` Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  final pulumi.Input<List<ParameterGroupParameter>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  final pulumi.Input<bool?>? skipDestroy;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ParameterGroupArgs].
  /// [description] The description of the DB parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the DB parameter group.
  /// [name] The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [parameters] The DB parameters to apply. See `parameter` Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ParameterGroupArgs({
    pulumi.Input<String?>? description,
    required this.family,
    this.name,
    this.namePrefix,
    this.parameters,
    this.region,
    this.skipDestroy,
    this.tags,
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'family': family,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
    };
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: pulumi.Input.fromValue(map['family'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
