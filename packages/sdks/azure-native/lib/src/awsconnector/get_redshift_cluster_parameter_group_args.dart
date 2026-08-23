// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_redshift_cluster_parameter_group_args_doc}
/// Arguments for getRedshiftClusterParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_redshift_cluster_parameter_group_args_doc}
class GetRedshiftClusterParameterGroupArgs {
  /// Name of RedshiftClusterParameterGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRedshiftClusterParameterGroupArgs].
  /// [name] Name of RedshiftClusterParameterGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRedshiftClusterParameterGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRedshiftClusterParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRedshiftClusterParameterGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
