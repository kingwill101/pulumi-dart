// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_filter_response.dart';
import 'connection_monitor_endpoint_location_details_response.dart';
import 'connection_monitor_endpoint_scope_response.dart';

/// Describes the connection monitor endpoint.
class ConnectionMonitorEndpointResponse {
  /// Address of the connection monitor endpoint. Supported for AzureVM, ExternalAddress, ArcMachine, MMAWorkspaceMachine endpoint type.
  final pulumi.Input<String>? address;
  /// Test coverage for the endpoint.
  final pulumi.Input<String>? coverageLevel;
  /// Filter field is getting deprecated and should not be used. Instead use Include/Exclude scope fields for it.
  final pulumi.Input<ConnectionMonitorEndpointFilterResponse>? filter;
  /// Location details is optional and only being used for 'AzureArcNetwork' type endpoints, which contains region details.
  final pulumi.Input<ConnectionMonitorEndpointLocationDetailsResponse>? locationDetails;
  /// The name of the connection monitor endpoint.
  final pulumi.Input<String> name;
  /// Resource ID of the connection monitor endpoint are supported for AzureVM, AzureVMSS, AzureVNet, AzureSubnet, MMAWorkspaceMachine, MMAWorkspaceNetwork, AzureArcVM endpoint type.
  final pulumi.Input<String>? resourceId;
  /// Endpoint scope defines which target resource to monitor in case of compound resource endpoints like VMSS, AzureSubnet, AzureVNet, MMAWorkspaceNetwork, AzureArcNetwork.
  final pulumi.Input<ConnectionMonitorEndpointScopeResponse>? scope;
  /// Subscription ID for connection monitor endpoint. It's an optional parameter which is being used for 'AzureArcNetwork' type endpoint.
  final pulumi.Input<String>? subscriptionId;
  /// The endpoint type.
  final pulumi.Input<String>? type;

  /// Creates a new [ConnectionMonitorEndpointResponse].
  /// [address] Address of the connection monitor endpoint. Supported for AzureVM, ExternalAddress, ArcMachine, MMAWorkspaceMachine endpoint type.
  /// [coverageLevel] Test coverage for the endpoint.
  /// [filter] Filter field is getting deprecated and should not be used. Instead use Include/Exclude scope fields for it.
  /// [locationDetails] Location details is optional and only being used for 'AzureArcNetwork' type endpoints, which contains region details.
  /// [name] The name of the connection monitor endpoint.
  /// [resourceId] Resource ID of the connection monitor endpoint are supported for AzureVM, AzureVMSS, AzureVNet, AzureSubnet, MMAWorkspaceMachine, MMAWorkspaceNetwork, AzureArcVM endpoint type.
  /// [scope] Endpoint scope defines which target resource to monitor in case of compound resource endpoints like VMSS, AzureSubnet, AzureVNet, MMAWorkspaceNetwork, AzureArcNetwork.
  /// [subscriptionId] Subscription ID for connection monitor endpoint. It's an optional parameter which is being used for 'AzureArcNetwork' type endpoint.
  /// [type] The endpoint type.
  ConnectionMonitorEndpointResponse({
    this.address,
    this.coverageLevel,
    this.filter,
    this.locationDetails,
    required this.name,
    this.resourceId,
    this.scope,
    this.subscriptionId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'coverageLevel': ?coverageLevel,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'locationDetails': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointLocationDetailsResponse, Map<String, dynamic>>(locationDetails, (value) => value.toMap()),
      'name': name,
      'resourceId': ?resourceId,
      'scope': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointResponse(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      coverageLevel: map['coverageLevel'] == null ? null : (map['coverageLevel']! as String).input(),
      filter: map['filter'] == null ? null : (ConnectionMonitorEndpointFilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      locationDetails: map['locationDetails'] == null ? null : (ConnectionMonitorEndpointLocationDetailsResponse.fromMap((map['locationDetails']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      scope: map['scope'] == null ? null : (ConnectionMonitorEndpointScopeResponse.fromMap((map['scope']! as Map).cast<String, dynamic>())).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

