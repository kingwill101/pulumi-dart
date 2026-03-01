// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_office_data_connector_args_doc}
/// Arguments for getOfficeDataConnector.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_office_data_connector_args_doc}
class GetOfficeDataConnectorArgs {
  /// Connector ID
  final pulumi.Input<String> dataConnectorId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOfficeDataConnectorArgs].
  /// [dataConnectorId] Connector ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetOfficeDataConnectorArgs({
    required String dataConnectorId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      dataConnectorId = pulumi.Input.asInput<String>(dataConnectorId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': dataConnectorId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetOfficeDataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetOfficeDataConnectorArgs(
      dataConnectorId: map['dataConnectorId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

