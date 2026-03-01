// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_response.dart';
import 'private_endpoint_connection_response.dart';
import 'private_link_service_ip_configuration_response.dart';
import 'private_link_service_properties_response_auto_approval.dart';
import 'private_link_service_properties_response_visibility.dart';

/// Result data returned by getPrivateLinkService.
class GetPrivateLinkServiceResult {
  /// The alias of the private link service.
  final String alias;
  /// The auto-approval list of the private link service.
  final PrivateLinkServicePropertiesResponseAutoApproval? autoApproval;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The destination IP address of the private link service.
  final String? destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  final bool? enableProxyProtocol;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the load balancer.
  final ExtendedLocationResponse? extendedLocation;
  /// The list of Fqdn.
  final List<String>? fqdns;
  /// Resource ID.
  final String? id;
  /// An array of private link service IP configurations.
  final List<PrivateLinkServiceIpConfigurationResponse>? ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  final List<FrontendIPConfigurationResponse>? loadBalancerFrontendIpConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// An array of references to the network interfaces created for this private link service.
  final List<NetworkInterfaceResponse> networkInterfaces;
  /// An array of list about connections to the private endpoint.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The provisioning state of the private link service resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// The visibility list of the private link service.
  final PrivateLinkServicePropertiesResponseVisibility? visibility;

  /// Creates a new [GetPrivateLinkServiceResult].
  /// [alias] The alias of the private link service.
  /// [autoApproval] The auto-approval list of the private link service.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [destinationIPAddress] The destination IP address of the private link service.
  /// [enableProxyProtocol] Whether the private link service is enabled for proxy protocol or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the load balancer.
  /// [fqdns] The list of Fqdn.
  /// [id] Resource ID.
  /// [ipConfigurations] An array of private link service IP configurations.
  /// [loadBalancerFrontendIpConfigurations] An array of references to the load balancer IP configurations.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] An array of references to the network interfaces created for this private link service.
  /// [privateEndpointConnections] An array of list about connections to the private endpoint.
  /// [provisioningState] The provisioning state of the private link service resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [visibility] The visibility list of the private link service.
  GetPrivateLinkServiceResult({
    required this.alias,
    this.autoApproval,
    required this.azureApiVersion,
    this.destinationIPAddress,
    this.enableProxyProtocol,
    required this.etag,
    this.extendedLocation,
    this.fqdns,
    this.id,
    this.ipConfigurations,
    this.loadBalancerFrontendIpConfigurations,
    this.location,
    required this.name,
    required this.networkInterfaces,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.tags,
    required this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'autoApproval': ?autoApproval == null ? null : autoApproval!.toMap(),
      'azureApiVersion': azureApiVersion,
      'destinationIPAddress': ?destinationIPAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'fqdns': ?fqdns,
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkServiceIpConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'loadBalancerFrontendIpConfigurations': ?loadBalancerFrontendIpConfigurations == null ? null : pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(loadBalancerFrontendIpConfigurations!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'visibility': ?visibility == null ? null : visibility!.toMap(),
    };
  }

  factory GetPrivateLinkServiceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServiceResult(
      alias: map['alias'] as String,
      autoApproval: map['autoApproval'] == null ? null : PrivateLinkServicePropertiesResponseAutoApproval.fromMap((map['autoApproval'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      destinationIPAddress: map['destinationIPAddress'] == null ? null : map['destinationIPAddress'] as String,
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceIpConfigurationResponse>(map['ipConfigurations'], (value) => PrivateLinkServiceIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerFrontendIpConfigurations: map['loadBalancerFrontendIpConfigurations'] == null ? null : pulumi.Input.decodeList<FrontendIPConfigurationResponse>(map['loadBalancerFrontendIpConfigurations'], (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      visibility: map['visibility'] == null ? null : PrivateLinkServicePropertiesResponseVisibility.fromMap((map['visibility'] as Map).cast<String, dynamic>()),
    );
  }
}

