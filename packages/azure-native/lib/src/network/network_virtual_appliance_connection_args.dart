// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_virtual_appliance_connection_properties.dart';

/// {@template pulumi_network_network_virtual_appliance_connection_args_doc}
/// The set of arguments for NetworkVirtualApplianceConnection.
/// {@endtemplate}
/// {@macro pulumi_network_network_virtual_appliance_connection_args_doc}
class NetworkVirtualApplianceConnectionArgs {
  /// The name of the NVA connection.
  final pulumi.Input<String>? connectionName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String>? name;
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// Properties of the express route connection.
  final pulumi.Input<NetworkVirtualApplianceConnectionProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkVirtualApplianceConnectionArgs].
  /// [connectionName] The name of the NVA connection.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [properties] Properties of the express route connection.
  /// [resourceGroupName] The name of the resource group.
  NetworkVirtualApplianceConnectionArgs({
    String? connectionName,
    String? id,
    String? name,
    required String networkVirtualApplianceName,
    NetworkVirtualApplianceConnectionProperties? properties,
    required String resourceGroupName,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkVirtualApplianceName = pulumi.Input.asInput<String>(networkVirtualApplianceName),
      properties = pulumi.Input.asOptionalInput<NetworkVirtualApplianceConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'id': ?id,
      'name': ?name,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualApplianceConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkVirtualApplianceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualApplianceConnectionArgs(
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkVirtualApplianceName: map['networkVirtualApplianceName'] as String,
      properties: map['properties'] == null ? null : NetworkVirtualApplianceConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

