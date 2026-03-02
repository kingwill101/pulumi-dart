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
    this.groupIds,
    this.location,
    this.managedPrivateEndpointName,
    this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    this.privateLinkServiceUrl,
    this.requestMessage,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceName,
  });

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
      groupIds: map['groupIds'] == null ? null : ((map['groupIds']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : (map['managedPrivateEndpointName']! as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId']! as String).input(),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : (map['privateLinkResourceRegion']! as String).input(),
      privateLinkServiceUrl: map['privateLinkServiceUrl'] == null ? null : (map['privateLinkServiceUrl']! as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

