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
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedPrivateEndpointName: (() { final guardedValue = map['managedPrivateEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceRegion: (() { final guardedValue = map['privateLinkResourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceUrl: (() { final guardedValue = map['privateLinkServiceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

