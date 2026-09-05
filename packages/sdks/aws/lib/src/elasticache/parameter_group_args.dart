// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// {@template pulumi_elasticache_parameter_group_parameter_group_args_doc}
/// The set of arguments for ParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_parameter_group_parameter_group_args_doc}
class ParameterGroupArgs {
  /// The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String?>? description;
  /// The family of the ElastiCache parameter group.
  final pulumi.Input<String> family;
  /// The name of the ElastiCache parameter.
  final pulumi.Input<String?>? name;
  /// A list of ElastiCache parameters to apply.
  final pulumi.Input<List<ParameterGroupParameter>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ParameterGroupArgs].
  /// [description] The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the ElastiCache parameter group.
  /// [name] The name of the ElastiCache parameter.
  /// [parameters] A list of ElastiCache parameters to apply.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  ParameterGroupArgs({
    pulumi.Input<String?>? description,
    required this.family,
    this.name,
    this.parameters,
    this.region,
    this.tags,
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'family': family,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: pulumi.Input.fromValue(map['family'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
