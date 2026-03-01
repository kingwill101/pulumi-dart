// ignore_for_file: unused_element, unnecessary_cast

import 'connection_monitor_endpoint_filter.dart';
import 'connection_monitor_endpoint_location_details.dart';
import 'connection_monitor_endpoint_scope.dart';

/// Describes the connection monitor endpoint.
class ConnectionMonitorEndpoint {
  /// Address of the connection monitor endpoint. Supported for AzureVM, ExternalAddress, ArcMachine, MMAWorkspaceMachine endpoint type.
  final String? address;
  /// Test coverage for the endpoint.
  final String? coverageLevel;
  /// Filter field is getting deprecated and should not be used. Instead use Include/Exclude scope fields for it.
  final ConnectionMonitorEndpointFilter? filter;
  /// Location details is optional and only being used for 'AzureArcNetwork' type endpoints, which contains region details.
  final ConnectionMonitorEndpointLocationDetails? locationDetails;
  /// The name of the connection monitor endpoint.
  final String name;
  /// Resource ID of the connection monitor endpoint are supported for AzureVM, AzureVMSS, AzureVNet, AzureSubnet, MMAWorkspaceMachine, MMAWorkspaceNetwork, AzureArcVM endpoint type.
  final String? resourceId;
  /// Endpoint scope defines which target resource to monitor in case of compound resource endpoints like VMSS, AzureSubnet, AzureVNet, MMAWorkspaceNetwork, AzureArcNetwork.
  final ConnectionMonitorEndpointScope? scope;
  /// Subscription ID for connection monitor endpoint. It's an optional parameter which is being used for 'AzureArcNetwork' type endpoint.
  final String? subscriptionId;
  /// The endpoint type.
  final String? type;

  /// Creates a new [ConnectionMonitorEndpoint].
  /// [address] Address of the connection monitor endpoint. Supported for AzureVM, ExternalAddress, ArcMachine, MMAWorkspaceMachine endpoint type.
  /// [coverageLevel] Test coverage for the endpoint.
  /// [filter] Filter field is getting deprecated and should not be used. Instead use Include/Exclude scope fields for it.
  /// [locationDetails] Location details is optional and only being used for 'AzureArcNetwork' type endpoints, which contains region details.
  /// [name] The name of the connection monitor endpoint.
  /// [resourceId] Resource ID of the connection monitor endpoint are supported for AzureVM, AzureVMSS, AzureVNet, AzureSubnet, MMAWorkspaceMachine, MMAWorkspaceNetwork, AzureArcVM endpoint type.
  /// [scope] Endpoint scope defines which target resource to monitor in case of compound resource endpoints like VMSS, AzureSubnet, AzureVNet, MMAWorkspaceNetwork, AzureArcNetwork.
  /// [subscriptionId] Subscription ID for connection monitor endpoint. It's an optional parameter which is being used for 'AzureArcNetwork' type endpoint.
  /// [type] The endpoint type.
  ConnectionMonitorEndpoint({
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
      'filter': ?filter == null ? null : filter!.toMap(),
      'locationDetails': ?locationDetails == null ? null : locationDetails!.toMap(),
      'name': name,
      'resourceId': ?resourceId,
      'scope': ?scope == null ? null : scope!.toMap(),
      'subscriptionId': ?subscriptionId,
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpoint.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      coverageLevel: map['coverageLevel'] == null ? null : map['coverageLevel'] as String,
      filter: map['filter'] == null ? null : ConnectionMonitorEndpointFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      locationDetails: map['locationDetails'] == null ? null : ConnectionMonitorEndpointLocationDetails.fromMap((map['locationDetails'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      scope: map['scope'] == null ? null : ConnectionMonitorEndpointScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

