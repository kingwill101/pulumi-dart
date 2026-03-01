// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_access_connector_args_doc}
/// Arguments for getAccessConnector.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_access_connector_args_doc}
class GetAccessConnectorArgs {
  /// The name of the Azure Databricks Access Connector.
  final pulumi.Input<String> connectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessConnectorArgs].
  /// [connectorName] The name of the Azure Databricks Access Connector.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccessConnectorArgs({
    required pulumi.Output<String> connectorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessConnectorArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

