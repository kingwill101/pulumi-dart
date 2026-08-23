// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurearcdata_get_active_directory_connector_args_doc}
/// Arguments for getActiveDirectoryConnector.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_get_active_directory_connector_args_doc}
class GetActiveDirectoryConnectorArgs {
  /// The name of the Active Directory connector instance
  final pulumi.Input<String> activeDirectoryConnectorName;
  /// The name of the data controller
  final pulumi.Input<String> dataControllerName;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActiveDirectoryConnectorArgs].
  /// [activeDirectoryConnectorName] The name of the Active Directory connector instance
  /// [dataControllerName] The name of the data controller
  /// [resourceGroupName] The name of the Azure resource group
  const GetActiveDirectoryConnectorArgs({
    required this.activeDirectoryConnectorName,
    required this.dataControllerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConnectorName': activeDirectoryConnectorName,
      'dataControllerName': dataControllerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActiveDirectoryConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveDirectoryConnectorArgs(
      activeDirectoryConnectorName: pulumi.Input.fromValue(map['activeDirectoryConnectorName'] as String),
      dataControllerName: pulumi.Input.fromValue(map['dataControllerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
