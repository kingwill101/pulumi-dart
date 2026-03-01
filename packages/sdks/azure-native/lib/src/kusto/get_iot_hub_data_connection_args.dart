// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_iot_hub_data_connection_args_doc}
/// Arguments for getIotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_iot_hub_data_connection_args_doc}
class GetIotHubDataConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the data connection.
  final pulumi.Input<String> dataConnectionName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIotHubDataConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [dataConnectionName] The name of the data connection.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIotHubDataConnectionArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> dataConnectionName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      dataConnectionName = pulumi.Input.asInput<String>(dataConnectionName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'dataConnectionName': dataConnectionName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetIotHubDataConnectionArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      dataConnectionName: pulumi.Output.create<String>(map['dataConnectionName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

