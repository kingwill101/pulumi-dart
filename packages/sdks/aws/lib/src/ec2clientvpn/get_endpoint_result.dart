// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_authentication_option.dart';
import 'get_endpoint_client_connect_option.dart';
import 'get_endpoint_client_login_banner_option.dart';
import 'get_endpoint_client_route_enforcement_option.dart';
import 'get_endpoint_connection_log_option.dart';
import 'get_endpoint_filter.dart';
import 'get_endpoint_transit_gateway_configuration.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// The ARN of the Client VPN endpoint.
  final String arn;
  /// Information about the authentication method used by the Client VPN endpoint.
  final List<GetEndpointAuthenticationOption> authenticationOptions;
  /// IPv4 address range, in CIDR notation, from which client IP addresses are assigned.
  final String clientCidrBlock;
  /// The options for managing connection authorization for new client connections.
  final List<GetEndpointClientConnectOption> clientConnectOptions;
  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  final List<GetEndpointClientLoginBannerOption> clientLoginBannerOptions;
  /// Options for enforce administrator defined routes on devices connected through the VPN.
  final List<GetEndpointClientRouteEnforcementOption> clientRouteEnforcementOptions;
  final String clientVpnEndpointId;
  /// Information about the client connection logging options for the Client VPN endpoint.
  final List<GetEndpointConnectionLogOption> connectionLogOptions;
  /// Brief description of the endpoint.
  final String description;
  /// DNS name to be used by clients when connecting to the Client VPN endpoint.
  final String dnsName;
  /// Information about the DNS servers to be used for DNS resolution.
  final List<String> dnsServers;
  /// IP address type for the Client VPN endpoint.
  final String endpointIpAddressType;
  final List<GetEndpointFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// IDs of the security groups for the target network associated with the Client VPN endpoint.
  final List<String> securityGroupIds;
  /// Whether the self-service portal for the Client VPN endpoint is enabled.
  final String selfServicePortal;
  /// The URL of the self-service portal.
  final String selfServicePortalUrl;
  /// The ARN of the server certificate.
  final String serverCertificateArn;
  /// The maximum VPN session duration time in hours.
  final int sessionTimeoutHours;
  /// Whether split-tunnel is enabled in the AWS Client VPN endpoint.
  final bool splitTunnel;
  final Map<String, String> tags;
  /// IP address type for traffic within the Client VPN tunnel.
  final String trafficIpAddressType;
  /// ID of the Transit Gateway to which the Client VPN endpoint is associated.
  final List<GetEndpointTransitGatewayConfiguration> transitGatewayConfigurations;
  /// Transport protocol used by the Client VPN endpoint.
  final String transportProtocol;
  /// ID of the VPC associated with the Client VPN endpoint.
  final String vpcId;
  /// Port number for the Client VPN endpoint.
  final int vpnPort;

  /// Creates a new [GetEndpointResult].
  /// [arn] The ARN of the Client VPN endpoint.
  /// [authenticationOptions] Information about the authentication method used by the Client VPN endpoint.
  /// [clientCidrBlock] IPv4 address range, in CIDR notation, from which client IP addresses are assigned.
  /// [clientConnectOptions] The options for managing connection authorization for new client connections.
  /// [clientLoginBannerOptions] Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  /// [clientRouteEnforcementOptions] Options for enforce administrator defined routes on devices connected through the VPN.
  /// [clientVpnEndpointId] Required.
  /// [connectionLogOptions] Information about the client connection logging options for the Client VPN endpoint.
  /// [description] Brief description of the endpoint.
  /// [dnsName] DNS name to be used by clients when connecting to the Client VPN endpoint.
  /// [dnsServers] Information about the DNS servers to be used for DNS resolution.
  /// [endpointIpAddressType] IP address type for the Client VPN endpoint.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [securityGroupIds] IDs of the security groups for the target network associated with the Client VPN endpoint.
  /// [selfServicePortal] Whether the self-service portal for the Client VPN endpoint is enabled.
  /// [selfServicePortalUrl] The URL of the self-service portal.
  /// [serverCertificateArn] The ARN of the server certificate.
  /// [sessionTimeoutHours] The maximum VPN session duration time in hours.
  /// [splitTunnel] Whether split-tunnel is enabled in the AWS Client VPN endpoint.
  /// [tags] Required.
  /// [trafficIpAddressType] IP address type for traffic within the Client VPN tunnel.
  /// [transitGatewayConfigurations] ID of the Transit Gateway to which the Client VPN endpoint is associated.
  /// [transportProtocol] Transport protocol used by the Client VPN endpoint.
  /// [vpcId] ID of the VPC associated with the Client VPN endpoint.
  /// [vpnPort] Port number for the Client VPN endpoint.
  const GetEndpointResult({
    required this.arn,
    required this.authenticationOptions,
    required this.clientCidrBlock,
    required this.clientConnectOptions,
    required this.clientLoginBannerOptions,
    required this.clientRouteEnforcementOptions,
    required this.clientVpnEndpointId,
    required this.connectionLogOptions,
    required this.description,
    required this.dnsName,
    required this.dnsServers,
    required this.endpointIpAddressType,
    this.filters,
    required this.id,
    required this.region,
    required this.securityGroupIds,
    required this.selfServicePortal,
    required this.selfServicePortalUrl,
    required this.serverCertificateArn,
    required this.sessionTimeoutHours,
    required this.splitTunnel,
    required this.tags,
    required this.trafficIpAddressType,
    required this.transitGatewayConfigurations,
    required this.transportProtocol,
    required this.vpcId,
    required this.vpnPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authenticationOptions': pulumi.Input.encodeList<GetEndpointAuthenticationOption, Map<String, dynamic>>(authenticationOptions, (value) => value.toMap()),
      'clientCidrBlock': clientCidrBlock,
      'clientConnectOptions': pulumi.Input.encodeList<GetEndpointClientConnectOption, Map<String, dynamic>>(clientConnectOptions, (value) => value.toMap()),
      'clientLoginBannerOptions': pulumi.Input.encodeList<GetEndpointClientLoginBannerOption, Map<String, dynamic>>(clientLoginBannerOptions, (value) => value.toMap()),
      'clientRouteEnforcementOptions': pulumi.Input.encodeList<GetEndpointClientRouteEnforcementOption, Map<String, dynamic>>(clientRouteEnforcementOptions, (value) => value.toMap()),
      'clientVpnEndpointId': clientVpnEndpointId,
      'connectionLogOptions': pulumi.Input.encodeList<GetEndpointConnectionLogOption, Map<String, dynamic>>(connectionLogOptions, (value) => value.toMap()),
      'description': description,
      'dnsName': dnsName,
      'dnsServers': dnsServers,
      'endpointIpAddressType': endpointIpAddressType,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'securityGroupIds': securityGroupIds,
      'selfServicePortal': selfServicePortal,
      'selfServicePortalUrl': selfServicePortalUrl,
      'serverCertificateArn': serverCertificateArn,
      'sessionTimeoutHours': sessionTimeoutHours,
      'splitTunnel': splitTunnel,
      'tags': tags,
      'trafficIpAddressType': trafficIpAddressType,
      'transitGatewayConfigurations': pulumi.Input.encodeList<GetEndpointTransitGatewayConfiguration, Map<String, dynamic>>(transitGatewayConfigurations, (value) => value.toMap()),
      'transportProtocol': transportProtocol,
      'vpcId': vpcId,
      'vpnPort': vpnPort,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      arn: map['arn'] as String,
      authenticationOptions: pulumi.Input.decodeList<GetEndpointAuthenticationOption>(map['authenticationOptions']!, (value) => GetEndpointAuthenticationOption.fromMap((value as Map).cast<String, dynamic>())),
      clientCidrBlock: map['clientCidrBlock'] as String,
      clientConnectOptions: pulumi.Input.decodeList<GetEndpointClientConnectOption>(map['clientConnectOptions']!, (value) => GetEndpointClientConnectOption.fromMap((value as Map).cast<String, dynamic>())),
      clientLoginBannerOptions: pulumi.Input.decodeList<GetEndpointClientLoginBannerOption>(map['clientLoginBannerOptions']!, (value) => GetEndpointClientLoginBannerOption.fromMap((value as Map).cast<String, dynamic>())),
      clientRouteEnforcementOptions: pulumi.Input.decodeList<GetEndpointClientRouteEnforcementOption>(map['clientRouteEnforcementOptions']!, (value) => GetEndpointClientRouteEnforcementOption.fromMap((value as Map).cast<String, dynamic>())),
      clientVpnEndpointId: map['clientVpnEndpointId'] as String,
      connectionLogOptions: pulumi.Input.decodeList<GetEndpointConnectionLogOption>(map['connectionLogOptions']!, (value) => GetEndpointConnectionLogOption.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      endpointIpAddressType: map['endpointIpAddressType'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointFilter>(guardedValue, (value) => GetEndpointFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      selfServicePortal: map['selfServicePortal'] as String,
      selfServicePortalUrl: map['selfServicePortalUrl'] as String,
      serverCertificateArn: map['serverCertificateArn'] as String,
      sessionTimeoutHours: map['sessionTimeoutHours'] as int,
      splitTunnel: map['splitTunnel'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      trafficIpAddressType: map['trafficIpAddressType'] as String,
      transitGatewayConfigurations: pulumi.Input.decodeList<GetEndpointTransitGatewayConfiguration>(map['transitGatewayConfigurations']!, (value) => GetEndpointTransitGatewayConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      transportProtocol: map['transportProtocol'] as String,
      vpcId: map['vpcId'] as String,
      vpnPort: map['vpnPort'] as int,
    );
  }
}
