// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alerts_data_type_of_data_connector.dart';

/// {@template pulumi_securityinsights_aaddata_connector_args_doc}
/// The set of arguments for AADDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_aaddata_connector_args_doc}
class AADDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<AlertsDataTypeOfDataConnector>? dataTypes;
  /// The kind of the data connector
  /// Expected value is 'AzureActiveDirectory'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AADDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  AADDataConnectorArgs({
    String? dataConnectorId,
    AlertsDataTypeOfDataConnector? dataTypes,
    required String kind,
    required String resourceGroupName,
    required String tenantId,
    required String workspaceName,
  }) :
      dataConnectorId = pulumi.Input.asOptionalInput<String>(dataConnectorId),
      dataTypes = pulumi.Input.asOptionalInput<AlertsDataTypeOfDataConnector>(dataTypes),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tenantId = pulumi.Input.asInput<String>(tenantId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': ?pulumi.Input.mapOptionalInputValue<AlertsDataTypeOfDataConnector, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory AADDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AADDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] == null ? null : map['dataConnectorId'] as String,
      dataTypes: map['dataTypes'] == null ? null : AlertsDataTypeOfDataConnector.fromMap((map['dataTypes'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tenantId: map['tenantId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

