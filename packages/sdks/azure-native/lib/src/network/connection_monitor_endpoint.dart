// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_endpoint_filter.dart';
import 'connection_monitor_endpoint_location_details.dart';
import 'connection_monitor_endpoint_scope.dart';

/// Describes the connection monitor endpoint.
class ConnectionMonitorEndpoint {
  /// Address of the connection monitor endpoint. Supported for AzureVM, ExternalAddress, ArcMachine, MMAWorkspaceMachine endpoint type.
  final pulumi.Input<String>? address;
  /// Test coverage for the endpoint.
  final pulumi.Input<String>? coverageLevel;
  /// Filter field is getting deprecated and should not be used. Instead use Include/Exclude scope fields for it.
  final pulumi.Input<ConnectionMonitorEndpointFilter>? filter;
  /// Location details is optional and only being used for 'AzureArcNetwork' type endpoints, which contains region details.
  final pulumi.Input<ConnectionMonitorEndpointLocationDetails>? locationDetails;
  /// The name of the connection monitor endpoint.
  final pulumi.Input<String> name;
  /// Resource ID of the connection monitor endpoint are supported for AzureVM, AzureVMSS, AzureVNet, AzureSubnet, MMAWorkspaceMachine, MMAWorkspaceNetwork, AzureArcVM endpoint type.
  final pulumi.Input<String>? resourceId;
  /// Endpoint scope defines which target resource to monitor in case of compound resource endpoints like VMSS, AzureSubnet, AzureVNet, MMAWorkspaceNetwork, AzureArcNetwork.
  final pulumi.Input<ConnectionMonitorEndpointScope>? scope;
  /// Subscription ID for connection monitor endpoint. It's an optional parameter which is being used for 'AzureArcNetwork' type endpoint.
  final pulumi.Input<String>? subscriptionId;
  /// The endpoint type.
  final pulumi.Input<String>? type;

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
  const ConnectionMonitorEndpoint({
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
      'filter': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'locationDetails': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointLocationDetails, Map<String, dynamic>>(locationDetails, (value) => value.toMap()),
      'name': name,
      'resourceId': ?resourceId,
      'scope': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorEndpointScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpoint.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coverageLevel: (() { final guardedValue = map['coverageLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorEndpointFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locationDetails: (() { final guardedValue = map['locationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorEndpointLocationDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorEndpointScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
