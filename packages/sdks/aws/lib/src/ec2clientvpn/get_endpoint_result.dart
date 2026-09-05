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
  final String? arn;
  /// Information about the authentication method used by the Client VPN endpoint.
  final List<GetEndpointAuthenticationOption>? authenticationOptions;
  /// IPv4 address range, in CIDR notation, from which client IP addresses are assigned.
  final String? clientCidrBlock;
  /// The options for managing connection authorization for new client connections.
  final List<GetEndpointClientConnectOption>? clientConnectOptions;
  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  final List<GetEndpointClientLoginBannerOption>? clientLoginBannerOptions;
  /// Options for enforce administrator defined routes on devices connected through the VPN.
  final List<GetEndpointClientRouteEnforcementOption>? clientRouteEnforcementOptions;
  final String? clientVpnEndpointId;
  /// Information about the client connection logging options for the Client VPN endpoint.
  final List<GetEndpointConnectionLogOption>? connectionLogOptions;
  /// Brief description of the endpoint.
  final String? description;
  /// DNS name to be used by clients when connecting to the Client VPN endpoint.
  final String? dnsName;
  /// Information about the DNS servers to be used for DNS resolution.
  final List<String>? dnsServers;
  /// IP address type for the Client VPN endpoint.
  final String? endpointIpAddressType;
  final List<GetEndpointFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// IDs of the security groups for the target network associated with the Client VPN endpoint.
  final List<String>? securityGroupIds;
  /// Whether the self-service portal for the Client VPN endpoint is enabled.
  final String? selfServicePortal;
  /// The URL of the self-service portal.
  final String? selfServicePortalUrl;
  /// The ARN of the server certificate.
  final String? serverCertificateArn;
  /// The maximum VPN session duration time in hours.
  final int? sessionTimeoutHours;
  /// Whether split-tunnel is enabled in the AWS Client VPN endpoint.
  final bool? splitTunnel;
  final Map<String, String>? tags;
  /// IP address type for traffic within the Client VPN tunnel.
  final String? trafficIpAddressType;
  /// ID of the Transit Gateway to which the Client VPN endpoint is associated.
  final List<GetEndpointTransitGatewayConfiguration>? transitGatewayConfigurations;
  /// Transport protocol used by the Client VPN endpoint.
  final String? transportProtocol;
  /// ID of the VPC associated with the Client VPN endpoint.
  final String? vpcId;
  /// Port number for the Client VPN endpoint.
  final int? vpnPort;

  /// Creates a new [GetEndpointResult].
  /// [arn] The ARN of the Client VPN endpoint.
  /// [authenticationOptions] Information about the authentication method used by the Client VPN endpoint.
  /// [clientCidrBlock] IPv4 address range, in CIDR notation, from which client IP addresses are assigned.
  /// [clientConnectOptions] The options for managing connection authorization for new client connections.
  /// [clientLoginBannerOptions] Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  /// [clientRouteEnforcementOptions] Options for enforce administrator defined routes on devices connected through the VPN.
  /// [clientVpnEndpointId] Optional.
  /// [connectionLogOptions] Information about the client connection logging options for the Client VPN endpoint.
  /// [description] Brief description of the endpoint.
  /// [dnsName] DNS name to be used by clients when connecting to the Client VPN endpoint.
  /// [dnsServers] Information about the DNS servers to be used for DNS resolution.
  /// [endpointIpAddressType] IP address type for the Client VPN endpoint.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [securityGroupIds] IDs of the security groups for the target network associated with the Client VPN endpoint.
  /// [selfServicePortal] Whether the self-service portal for the Client VPN endpoint is enabled.
  /// [selfServicePortalUrl] The URL of the self-service portal.
  /// [serverCertificateArn] The ARN of the server certificate.
  /// [sessionTimeoutHours] The maximum VPN session duration time in hours.
  /// [splitTunnel] Whether split-tunnel is enabled in the AWS Client VPN endpoint.
  /// [tags] Optional.
  /// [trafficIpAddressType] IP address type for traffic within the Client VPN tunnel.
  /// [transitGatewayConfigurations] ID of the Transit Gateway to which the Client VPN endpoint is associated.
  /// [transportProtocol] Transport protocol used by the Client VPN endpoint.
  /// [vpcId] ID of the VPC associated with the Client VPN endpoint.
  /// [vpnPort] Port number for the Client VPN endpoint.
  const GetEndpointResult({
    this.arn,
    this.authenticationOptions,
    this.clientCidrBlock,
    this.clientConnectOptions,
    this.clientLoginBannerOptions,
    this.clientRouteEnforcementOptions,
    this.clientVpnEndpointId,
    this.connectionLogOptions,
    this.description,
    this.dnsName,
    this.dnsServers,
    this.endpointIpAddressType,
    this.filters,
    this.id,
    this.region,
    this.securityGroupIds,
    this.selfServicePortal,
    this.selfServicePortalUrl,
    this.serverCertificateArn,
    this.sessionTimeoutHours,
    this.splitTunnel,
    this.tags,
    this.trafficIpAddressType,
    this.transitGatewayConfigurations,
    this.transportProtocol,
    this.vpcId,
    this.vpnPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authenticationOptions': ?(() { final guardedValue = authenticationOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointAuthenticationOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientCidrBlock': ?clientCidrBlock,
      'clientConnectOptions': ?(() { final guardedValue = clientConnectOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointClientConnectOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientLoginBannerOptions': ?(() { final guardedValue = clientLoginBannerOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointClientLoginBannerOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientRouteEnforcementOptions': ?(() { final guardedValue = clientRouteEnforcementOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointClientRouteEnforcementOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientVpnEndpointId': ?clientVpnEndpointId,
      'connectionLogOptions': ?(() { final guardedValue = connectionLogOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointConnectionLogOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'dnsName': ?dnsName,
      'dnsServers': ?dnsServers,
      'endpointIpAddressType': ?endpointIpAddressType,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'selfServicePortal': ?selfServicePortal,
      'selfServicePortalUrl': ?selfServicePortalUrl,
      'serverCertificateArn': ?serverCertificateArn,
      'sessionTimeoutHours': ?sessionTimeoutHours,
      'splitTunnel': ?splitTunnel,
      'tags': ?tags,
      'trafficIpAddressType': ?trafficIpAddressType,
      'transitGatewayConfigurations': ?(() { final guardedValue = transitGatewayConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointTransitGatewayConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'transportProtocol': ?transportProtocol,
      'vpcId': ?vpcId,
      'vpnPort': ?vpnPort,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationOptions: (() { final guardedValue = map['authenticationOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointAuthenticationOption>(guardedValue, (value) => GetEndpointAuthenticationOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientCidrBlock: (() { final guardedValue = map['clientCidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientConnectOptions: (() { final guardedValue = map['clientConnectOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointClientConnectOption>(guardedValue, (value) => GetEndpointClientConnectOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientLoginBannerOptions: (() { final guardedValue = map['clientLoginBannerOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointClientLoginBannerOption>(guardedValue, (value) => GetEndpointClientLoginBannerOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientRouteEnforcementOptions: (() { final guardedValue = map['clientRouteEnforcementOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointClientRouteEnforcementOption>(guardedValue, (value) => GetEndpointClientRouteEnforcementOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientVpnEndpointId: (() { final guardedValue = map['clientVpnEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionLogOptions: (() { final guardedValue = map['connectionLogOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointConnectionLogOption>(guardedValue, (value) => GetEndpointConnectionLogOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      endpointIpAddressType: (() { final guardedValue = map['endpointIpAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointFilter>(guardedValue, (value) => GetEndpointFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      selfServicePortal: (() { final guardedValue = map['selfServicePortal']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfServicePortalUrl: (() { final guardedValue = map['selfServicePortalUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificateArn: (() { final guardedValue = map['serverCertificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionTimeoutHours: (() { final guardedValue = map['sessionTimeoutHours']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      splitTunnel: (() { final guardedValue = map['splitTunnel']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trafficIpAddressType: (() { final guardedValue = map['trafficIpAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayConfigurations: (() { final guardedValue = map['transitGatewayConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointTransitGatewayConfiguration>(guardedValue, (value) => GetEndpointTransitGatewayConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      transportProtocol: (() { final guardedValue = map['transportProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnPort: (() { final guardedValue = map['vpnPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
