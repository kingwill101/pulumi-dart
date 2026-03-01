// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_connection_get_virtual_hub_connection_args_doc}
/// Arguments for getVirtualHubConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_connection_get_virtual_hub_connection_args_doc}
class GetVirtualHubConnectionArgs {
  /// The name of the Connection which should be retrieved.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Virtual Hub Connection exists.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Hub where this Connection exists.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubConnectionArgs].
  /// [name] The name of the Connection which should be retrieved.
  /// [resourceGroupName] The Name of the Resource Group where the Virtual Hub Connection exists.
  /// [virtualHubName] The name of the Virtual Hub where this Connection exists.
  GetVirtualHubConnectionArgs({
    required String name,
    required String resourceGroupName,
    required String virtualHubName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

