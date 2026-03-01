// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_attached_database_configuration_args_doc}
/// Arguments for getAttachedDatabaseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_attached_database_configuration_args_doc}
class GetAttachedDatabaseConfigurationArgs {
  /// The name of the attached database configuration.
  final pulumi.Input<String> attachedDatabaseConfigurationName;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAttachedDatabaseConfigurationArgs].
  /// [attachedDatabaseConfigurationName] The name of the attached database configuration.
  /// [clusterName] The name of the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAttachedDatabaseConfigurationArgs({
    required pulumi.Output<String> attachedDatabaseConfigurationName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      attachedDatabaseConfigurationName = pulumi.Input.asInput<String>(attachedDatabaseConfigurationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': attachedDatabaseConfigurationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttachedDatabaseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedDatabaseConfigurationArgs(
      attachedDatabaseConfigurationName: pulumi.Output.create<String>(map['attachedDatabaseConfigurationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

