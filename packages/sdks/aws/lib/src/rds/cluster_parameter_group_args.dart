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
    this.description,
    required this.family,
    this.name,
    this.namePrefix,
    this.parameters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'family': family,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ClusterParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ClusterParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ClusterParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      family: (map['family'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      parameters: map['parameters'] == null ? null : ((pulumi.Input.decodeList<ClusterParameterGroupParameter>(map['parameters']!, (value) => ClusterParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

