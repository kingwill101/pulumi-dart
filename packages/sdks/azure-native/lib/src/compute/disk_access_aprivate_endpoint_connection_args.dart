// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_compute_disk_access_aprivate_endpoint_connection_args_doc}
/// The set of arguments for DiskAccessAPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_access_aprivate_endpoint_connection_args_doc}
class DiskAccessAPrivateEndpointConnectionArgs {
  /// The name of the disk access resource that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String> diskAccessName;
  /// The name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between DiskAccess and Virtual Network.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DiskAccessAPrivateEndpointConnectionArgs].
  /// [diskAccessName] The name of the disk access resource that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between DiskAccess and Virtual Network.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DiskAccessAPrivateEndpointConnectionArgs({
    required this.diskAccessName,
    this.privateEndpointConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskAccessName': diskAccessName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DiskAccessAPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return DiskAccessAPrivateEndpointConnectionArgs(
      diskAccessName: (map['diskAccessName'] as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      privateLinkServiceConnectionState: (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

