// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// {@template pulumi_memorydb_parameter_group_parameter_group_args_doc}
/// The set of arguments for ParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_memorydb_parameter_group_parameter_group_args_doc}
class ParameterGroupArgs {
  /// Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  final pulumi.Input<String>? description;

  /// The engine version that the parameter group can be used with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> family;

  /// Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  final pulumi.Input<List<ParameterGroupParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ParameterGroupArgs].
  /// [description] Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  /// [family] The engine version that the parameter group can be used with.
  /// [name] Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [parameters] Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ParameterGroupArgs({
    String? description,
    required String family,
    String? name,
    String? namePrefix,
    List<ParameterGroupParameter>? parameters,
    String? region,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       family = pulumi.Input.asInput<String>(family),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       parameters = pulumi.Input.asOptionalInput<List<ParameterGroupParameter>>(
         parameters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'family': family,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterGroupParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterGroupParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      family: map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ParameterGroupParameter>(
              map['parameters'],
              (value) => ParameterGroupParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
