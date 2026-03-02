// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_kusto_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The groupId in which the managed private endpoint is created.
  final pulumi.Input<String> groupId;
  /// The name of the managed private endpoint.
  final pulumi.Input<String>? managedPrivateEndpointName;
  /// The ARM resource ID of the resource for which the managed private endpoint is created.
  final pulumi.Input<String> privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// The user request message.
  final pulumi.Input<String>? requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [groupId] The groupId in which the managed private endpoint is created.
  /// [managedPrivateEndpointName] The name of the managed private endpoint.
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is created.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is created.
  /// [requestMessage] The user request message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ManagedPrivateEndpointArgs({
    required this.clusterName,
    required this.groupId,
    this.managedPrivateEndpointName,
    required this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    this.requestMessage,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'groupId': groupId,
      'managedPrivateEndpointName': ?managedPrivateEndpointName,
      'privateLinkResourceId': privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'requestMessage': ?requestMessage,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      clusterName: (map['clusterName'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : (map['managedPrivateEndpointName']! as String).input(),
      privateLinkResourceId: (map['privateLinkResourceId'] as String).input(),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : (map['privateLinkResourceRegion']! as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

