// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_cluster_parameter_group_get_cluster_parameter_group_args_doc}
/// Arguments for getClusterParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_get_cluster_parameter_group_get_cluster_parameter_group_args_doc}
class GetClusterParameterGroupArgs {
  /// DB cluster parameter group name.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetClusterParameterGroupArgs].
  /// [name] DB cluster parameter group name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetClusterParameterGroupArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetClusterParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterParameterGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
