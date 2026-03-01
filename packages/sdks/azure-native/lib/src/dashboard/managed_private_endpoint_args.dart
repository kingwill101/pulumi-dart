// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dashboard_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The group Ids of the managed private endpoint.
  final pulumi.Input<List<String>>? groupIds;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The managed private endpoint name of Azure Managed Grafana.
  final pulumi.Input<String>? managedPrivateEndpointName;
  /// The ARM resource ID of the resource for which the managed private endpoint is pointing to.
  final pulumi.Input<String>? privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is pointing to.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// The URL of the data store behind the private link service. It would be the URL in the Grafana data source configuration page without the protocol and port.
  final pulumi.Input<String>? privateLinkServiceUrl;
  /// User input request message of the managed private endpoint.
  final pulumi.Input<String>? requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [groupIds] The group Ids of the managed private endpoint.
  /// [location] The geo-location where the resource lives
  /// [managedPrivateEndpointName] The managed private endpoint name of Azure Managed Grafana.
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is pointing to.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is pointing to.
  /// [privateLinkServiceUrl] The URL of the data store behind the private link service. It would be the URL in the Grafana data source configuration page without the protocol and port.
  /// [requestMessage] User input request message of the managed private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  ManagedPrivateEndpointArgs({
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedPrivateEndpointName,
    pulumi.Output<String>? privateLinkResourceId,
    pulumi.Output<String>? privateLinkResourceRegion,
    pulumi.Output<String>? privateLinkServiceUrl,
    pulumi.Output<String>? requestMessage,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedPrivateEndpointName = pulumi.Input.asOptionalInput<String>(managedPrivateEndpointName),
      privateLinkResourceId = pulumi.Input.asOptionalInput<String>(privateLinkResourceId),
      privateLinkResourceRegion = pulumi.Input.asOptionalInput<String>(privateLinkResourceRegion),
      privateLinkServiceUrl = pulumi.Input.asOptionalInput<String>(privateLinkServiceUrl),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'location': ?location,
      'managedPrivateEndpointName': ?managedPrivateEndpointName,
      'privateLinkResourceId': ?privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'privateLinkServiceUrl': ?privateLinkServiceUrl,
      'requestMessage': ?requestMessage,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : pulumi.Output.create<String>(map['managedPrivateEndpointName'] as String),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceId'] as String),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceRegion'] as String),
      privateLinkServiceUrl: map['privateLinkServiceUrl'] == null ? null : pulumi.Output.create<String>(map['privateLinkServiceUrl'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

