// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_properties.dart';

/// {@template pulumi_azurearcdata_active_directory_connector_args_doc}
/// The set of arguments for ActiveDirectoryConnector.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_active_directory_connector_args_doc}
class ActiveDirectoryConnectorArgs {
  /// The name of the Active Directory connector instance
  final pulumi.Input<String>? activeDirectoryConnectorName;
  /// The name of the data controller
  final pulumi.Input<String> dataControllerName;
  /// null
  final pulumi.Input<ActiveDirectoryConnectorProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ActiveDirectoryConnectorArgs].
  /// [activeDirectoryConnectorName] The name of the Active Directory connector instance
  /// [dataControllerName] The name of the data controller
  /// [properties] null
  /// [resourceGroupName] The name of the Azure resource group
  ActiveDirectoryConnectorArgs({
    this.activeDirectoryConnectorName,
    required this.dataControllerName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConnectorName': ?activeDirectoryConnectorName,
      'dataControllerName': dataControllerName,
      'properties': pulumi.Input.mapInputValue<ActiveDirectoryConnectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ActiveDirectoryConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorArgs(
      activeDirectoryConnectorName: (() { final guardedValue = map['activeDirectoryConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataControllerName: pulumi.Input.fromValue(map['dataControllerName'] as String),
      properties: pulumi.Input.fromValue(ActiveDirectoryConnectorProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

