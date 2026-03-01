// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_virtual_hub_bgp_connection_args_doc}
/// The set of arguments for VirtualHubBgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_bgp_connection_args_doc}
class VirtualHubBgpConnectionArgs {
  /// The name of the connection.
  final pulumi.Input<String>? connectionName;
  /// The reference to the HubVirtualNetworkConnection resource.
  final pulumi.Input<SubResource>? hubVirtualNetworkConnection;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the connection.
  final pulumi.Input<String>? name;
  /// Peer ASN.
  final pulumi.Input<double>? peerAsn;
  /// Peer IP.
  final pulumi.Input<String>? peerIp;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubBgpConnectionArgs].
  /// [connectionName] The name of the connection.
  /// [hubVirtualNetworkConnection] The reference to the HubVirtualNetworkConnection resource.
  /// [id] Resource ID.
  /// [name] Name of the connection.
  /// [peerAsn] Peer ASN.
  /// [peerIp] Peer IP.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  VirtualHubBgpConnectionArgs({
    String? connectionName,
    SubResource? hubVirtualNetworkConnection,
    String? id,
    String? name,
    double? peerAsn,
    String? peerIp,
    required String resourceGroupName,
    required String virtualHubName,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      hubVirtualNetworkConnection = pulumi.Input.asOptionalInput<SubResource>(hubVirtualNetworkConnection),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAsn = pulumi.Input.asOptionalInput<double>(peerAsn),
      peerIp = pulumi.Input.asOptionalInput<String>(peerIp),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'hubVirtualNetworkConnection': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hubVirtualNetworkConnection, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubBgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubBgpConnectionArgs(
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      hubVirtualNetworkConnection: map['hubVirtualNetworkConnection'] == null ? null : SubResource.fromMap((map['hubVirtualNetworkConnection'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as double,
      peerIp: map['peerIp'] == null ? null : map['peerIp'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

