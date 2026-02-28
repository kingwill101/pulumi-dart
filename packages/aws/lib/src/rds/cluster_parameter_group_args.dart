// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_parameter_group_parameter.dart';

/// {@template pulumi_rds_cluster_parameter_group_cluster_parameter_group_args_doc}
/// The set of arguments for ClusterParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_parameter_group_cluster_parameter_group_args_doc}
class ClusterParameterGroupArgs {
  /// The description of the DB cluster parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;

  /// The family of the DB cluster parameter group.
  final pulumi.Input<String> family;

  /// The name of the DB parameter.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-cluster-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-cluster-parameters.html) after initial creation of the group.
  final pulumi.Input<List<ClusterParameterGroupParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterParameterGroupArgs].
  /// [description] The description of the DB cluster parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the DB cluster parameter group.
  /// [name] The name of the DB parameter.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [parameters] A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-cluster-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-cluster-parameters.html) after initial creation of the group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterParameterGroupArgs({
    String? description,
    required String family,
    String? name,
    String? namePrefix,
    List<ClusterParameterGroupParameter>? parameters,
    String? region,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        family = pulumi.Input.asInput<String>(family),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        parameters =
            pulumi.Input.asOptionalInput<List<ClusterParameterGroupParameter>>(
                parameters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['family'] = family;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterParameterGroupParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<ClusterParameterGroupParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      family: map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ClusterParameterGroupParameter>(
              map['parameters'],
              (value) => ClusterParameterGroupParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
