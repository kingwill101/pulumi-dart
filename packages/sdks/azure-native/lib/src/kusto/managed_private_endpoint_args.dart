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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? managedPrivateEndpointName,
    required pulumi.Output<String> privateLinkResourceId,
    pulumi.Output<String>? privateLinkResourceRegion,
    pulumi.Output<String>? requestMessage,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      groupId = pulumi.Input.asInput<String>(groupId),
      managedPrivateEndpointName = pulumi.Input.asOptionalInput<String>(managedPrivateEndpointName),
      privateLinkResourceId = pulumi.Input.asInput<String>(privateLinkResourceId),
      privateLinkResourceRegion = pulumi.Input.asOptionalInput<String>(privateLinkResourceRegion),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : pulumi.Output.create<String>(map['managedPrivateEndpointName'] as String),
      privateLinkResourceId: pulumi.Output.create<String>(map['privateLinkResourceId'] as String),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceRegion'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

