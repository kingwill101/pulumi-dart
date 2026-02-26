// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_endpoint_authentication_option/get_endpoint_authentication_option.dart';
import '../get_endpoint_client_connect_option/get_endpoint_client_connect_option.dart';
import '../get_endpoint_client_login_banner_option/get_endpoint_client_login_banner_option.dart';
import '../get_endpoint_client_route_enforcement_option/get_endpoint_client_route_enforcement_option.dart';
import '../get_endpoint_connection_log_option/get_endpoint_connection_log_option.dart';
import '../get_endpoint_filter/get_endpoint_filter.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult2 {
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
  final List<GetEndpointClientRouteEnforcementOption>
      clientRouteEnforcementOptions;
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

  /// Transport protocol used by the Client VPN endpoint.
  final String transportProtocol;

  /// ID of the VPC associated with the Client VPN endpoint.
  final String vpcId;

  /// Port number for the Client VPN endpoint.
  final int vpnPort;

  GetEndpointResult2({
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
    required this.transportProtocol,
    required this.vpcId,
    required this.vpnPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['authenticationOptions'] =
        Input.encodeList<GetEndpointAuthenticationOption, Map<String, dynamic>>(
            authenticationOptions, (value) => value.toMap());
    map['clientCidrBlock'] = clientCidrBlock;
    map['clientConnectOptions'] =
        Input.encodeList<GetEndpointClientConnectOption, Map<String, dynamic>>(
            clientConnectOptions, (value) => value.toMap());
    map['clientLoginBannerOptions'] = Input.encodeList<
            GetEndpointClientLoginBannerOption, Map<String, dynamic>>(
        clientLoginBannerOptions, (value) => value.toMap());
    map['clientRouteEnforcementOptions'] = Input.encodeList<
            GetEndpointClientRouteEnforcementOption, Map<String, dynamic>>(
        clientRouteEnforcementOptions, (value) => value.toMap());
    map['clientVpnEndpointId'] = clientVpnEndpointId;
    map['connectionLogOptions'] =
        Input.encodeList<GetEndpointConnectionLogOption, Map<String, dynamic>>(
            connectionLogOptions, (value) => value.toMap());
    map['description'] = description;
    map['dnsName'] = dnsName;
    map['dnsServers'] = dnsServers;
    map['endpointIpAddressType'] = endpointIpAddressType;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetEndpointFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    map['securityGroupIds'] = securityGroupIds;
    map['selfServicePortal'] = selfServicePortal;
    map['selfServicePortalUrl'] = selfServicePortalUrl;
    map['serverCertificateArn'] = serverCertificateArn;
    map['sessionTimeoutHours'] = sessionTimeoutHours;
    map['splitTunnel'] = splitTunnel;
    map['tags'] = tags;
    map['trafficIpAddressType'] = trafficIpAddressType;
    map['transportProtocol'] = transportProtocol;
    map['vpcId'] = vpcId;
    map['vpnPort'] = vpnPort;
    return map;
  }

  factory GetEndpointResult2.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult2(
      arn: map['arn'] as String,
      authenticationOptions: Input.decodeList<GetEndpointAuthenticationOption>(
          map['authenticationOptions'],
          (value) => GetEndpointAuthenticationOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      clientCidrBlock: map['clientCidrBlock'] as String,
      clientConnectOptions: Input.decodeList<GetEndpointClientConnectOption>(
          map['clientConnectOptions'],
          (value) => GetEndpointClientConnectOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      clientLoginBannerOptions:
          Input.decodeList<GetEndpointClientLoginBannerOption>(
              map['clientLoginBannerOptions'],
              (value) => GetEndpointClientLoginBannerOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientRouteEnforcementOptions:
          Input.decodeList<GetEndpointClientRouteEnforcementOption>(
              map['clientRouteEnforcementOptions'],
              (value) => GetEndpointClientRouteEnforcementOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientVpnEndpointId: map['clientVpnEndpointId'] as String,
      connectionLogOptions: Input.decodeList<GetEndpointConnectionLogOption>(
          map['connectionLogOptions'],
          (value) => GetEndpointConnectionLogOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      endpointIpAddressType: map['endpointIpAddressType'] as String,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetEndpointFilter>(
              map['filters'],
              (value) => GetEndpointFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
      transportProtocol: map['transportProtocol'] as String,
      vpcId: map['vpcId'] as String,
      vpnPort: map['vpnPort'] as int,
    );
  }
}
