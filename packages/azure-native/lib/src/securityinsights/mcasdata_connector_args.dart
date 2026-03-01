// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcasdata_connector_data_types.dart';

/// {@template pulumi_securityinsights_mcasdata_connector_args_doc}
/// The set of arguments for MCASDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_mcasdata_connector_args_doc}
class MCASDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;
  /// The available data types for the connector.
  final pulumi.Input<MCASDataConnectorDataTypes> dataTypes;
  /// The kind of the data connector
  /// Expected value is 'MicrosoftCloudAppSecurity'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MCASDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  MCASDataConnectorArgs({
    String? dataConnectorId,
    required MCASDataConnectorDataTypes dataTypes,
    required String kind,
    required String resourceGroupName,
    required String tenantId,
    required String workspaceName,
  }) :
      dataConnectorId = pulumi.Input.asOptionalInput<String>(dataConnectorId),
      dataTypes = pulumi.Input.asInput<MCASDataConnectorDataTypes>(dataTypes),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tenantId = pulumi.Input.asInput<String>(tenantId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes': pulumi.Input.mapInputValue<MCASDataConnectorDataTypes, Map<String, dynamic>>(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory MCASDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return MCASDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] == null ? null : map['dataConnectorId'] as String,
      dataTypes: MCASDataConnectorDataTypes.fromMap((map['dataTypes'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tenantId: map['tenantId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

