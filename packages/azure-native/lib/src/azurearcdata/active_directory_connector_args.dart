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
    String? activeDirectoryConnectorName,
    required String dataControllerName,
    required ActiveDirectoryConnectorProperties properties,
    required String resourceGroupName,
  }) :
      activeDirectoryConnectorName = pulumi.Input.asOptionalInput<String>(activeDirectoryConnectorName),
      dataControllerName = pulumi.Input.asInput<String>(dataControllerName),
      properties = pulumi.Input.asInput<ActiveDirectoryConnectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      activeDirectoryConnectorName: map['activeDirectoryConnectorName'] == null ? null : map['activeDirectoryConnectorName'] as String,
      dataControllerName: map['dataControllerName'] as String,
      properties: ActiveDirectoryConnectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

