// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_authentication_option/endpoint_authentication_option.dart';
import '../endpoint_client_connect_options/endpoint_client_connect_options.dart';
import '../endpoint_client_login_banner_options/endpoint_client_login_banner_options.dart';
import '../endpoint_client_route_enforcement_options/endpoint_client_route_enforcement_options.dart';
import '../endpoint_connection_log_options/endpoint_connection_log_options.dart';

/// The set of arguments for Endpoint.
class EndpointEc2clientvpnArgs {
  /// Information about the authentication method to be used to authenticate clients.
  final pulumi.Input<List<EndpointAuthenticationOption>> authenticationOptions;

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `traffic_ip_address_type` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  final pulumi.Input<String>? clientCidrBlock;

  /// The options for managing connection authorization for new client connections.
  final pulumi.Input<EndpointClientConnectOptions>? clientConnectOptions;

  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  final pulumi.Input<EndpointClientLoginBannerOptions>?
      clientLoginBannerOptions;

  /// Options for enforce administrator defined routes on devices connected through the VPN.
  final pulumi.Input<EndpointClientRouteEnforcementOptions>?
      clientRouteEnforcementOptions;

  /// Information about the client connection logging options.
  final pulumi.Input<EndpointConnectionLogOptions> connectionLogOptions;

  /// A brief description of the Client VPN endpoint.
  final pulumi.Input<String>? description;

  /// Indicates whether the client VPN session is disconnected after the maximum `session_timeout_hours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  final pulumi.Input<bool>? disconnectOnSessionTimeout;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  final pulumi.Input<List<String>>? dnsServers;

  /// IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  final pulumi.Input<String>? endpointIpAddressType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  final pulumi.Input<String>? selfServicePortal;

  /// The ARN of the ACM server certificate.
  final pulumi.Input<String> serverCertificateArn;

  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  final pulumi.Input<int>? sessionTimeoutHours;

  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  final pulumi.Input<bool>? splitTunnel;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `client_cidr_block` must not be specified.
  final pulumi.Input<String>? trafficIpAddressType;

  /// The transport protocol to be used by the VPN session. Default value is `udp`.
  final pulumi.Input<String>? transportProtocol;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  final pulumi.Input<String>? vpcId;

  /// The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  final pulumi.Input<int>? vpnPort;

  EndpointEc2clientvpnArgs({
    required this.authenticationOptions,
    this.clientCidrBlock,
    this.clientConnectOptions,
    this.clientLoginBannerOptions,
    this.clientRouteEnforcementOptions,
    required this.connectionLogOptions,
    this.description,
    this.disconnectOnSessionTimeout,
    this.dnsServers,
    this.endpointIpAddressType,
    this.region,
    this.securityGroupIds,
    this.selfServicePortal,
    required this.serverCertificateArn,
    this.sessionTimeoutHours,
    this.splitTunnel,
    this.tags,
    this.trafficIpAddressType,
    this.transportProtocol,
    this.vpcId,
    this.vpnPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationOptions'] = pulumi.Input.mapInputValue<
            List<EndpointAuthenticationOption>, List<Map<String, dynamic>>>(
        authenticationOptions,
        (value) => pulumi.Input.encodeList<EndpointAuthenticationOption,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final clientCidrBlockValue = clientCidrBlock;
    if (clientCidrBlockValue != null) {
      map['clientCidrBlock'] = clientCidrBlockValue;
    }
    final clientConnectOptionsValue = clientConnectOptions;
    if (clientConnectOptionsValue != null) {
      map['clientConnectOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointClientConnectOptions, Map<String, dynamic>>(
          clientConnectOptionsValue, (value) => value.toMap());
    }
    final clientLoginBannerOptionsValue = clientLoginBannerOptions;
    if (clientLoginBannerOptionsValue != null) {
      map['clientLoginBannerOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointClientLoginBannerOptions, Map<String, dynamic>>(
          clientLoginBannerOptionsValue, (value) => value.toMap());
    }
    final clientRouteEnforcementOptionsValue = clientRouteEnforcementOptions;
    if (clientRouteEnforcementOptionsValue != null) {
      map['clientRouteEnforcementOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointClientRouteEnforcementOptions, Map<String, dynamic>>(
          clientRouteEnforcementOptionsValue, (value) => value.toMap());
    }
    map['connectionLogOptions'] = pulumi.Input.mapInputValue<
        EndpointConnectionLogOptions,
        Map<String, dynamic>>(connectionLogOptions, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disconnectOnSessionTimeoutValue = disconnectOnSessionTimeout;
    if (disconnectOnSessionTimeoutValue != null) {
      map['disconnectOnSessionTimeout'] = disconnectOnSessionTimeoutValue;
    }
    final dnsServersValue = dnsServers;
    if (dnsServersValue != null) {
      map['dnsServers'] = dnsServersValue;
    }
    final endpointIpAddressTypeValue = endpointIpAddressType;
    if (endpointIpAddressTypeValue != null) {
      map['endpointIpAddressType'] = endpointIpAddressTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final selfServicePortalValue = selfServicePortal;
    if (selfServicePortalValue != null) {
      map['selfServicePortal'] = selfServicePortalValue;
    }
    map['serverCertificateArn'] = serverCertificateArn;
    final sessionTimeoutHoursValue = sessionTimeoutHours;
    if (sessionTimeoutHoursValue != null) {
      map['sessionTimeoutHours'] = sessionTimeoutHoursValue;
    }
    final splitTunnelValue = splitTunnel;
    if (splitTunnelValue != null) {
      map['splitTunnel'] = splitTunnelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trafficIpAddressTypeValue = trafficIpAddressType;
    if (trafficIpAddressTypeValue != null) {
      map['trafficIpAddressType'] = trafficIpAddressTypeValue;
    }
    final transportProtocolValue = transportProtocol;
    if (transportProtocolValue != null) {
      map['transportProtocol'] = transportProtocolValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    final vpnPortValue = vpnPort;
    if (vpnPortValue != null) {
      map['vpnPort'] = vpnPortValue;
    }
    return map;
  }

  factory EndpointEc2clientvpnArgs.fromMap(Map<String, dynamic> map) {
    return EndpointEc2clientvpnArgs(
      authenticationOptions:
          pulumi.Input.asInput<List<EndpointAuthenticationOption>>(
              map['authenticationOptions']),
      clientCidrBlock:
          pulumi.Input.asOptionalInput<String>(map['clientCidrBlock']),
      clientConnectOptions:
          pulumi.Input.asOptionalInput<EndpointClientConnectOptions>(
              map['clientConnectOptions']),
      clientLoginBannerOptions:
          pulumi.Input.asOptionalInput<EndpointClientLoginBannerOptions>(
              map['clientLoginBannerOptions']),
      clientRouteEnforcementOptions:
          pulumi.Input.asOptionalInput<EndpointClientRouteEnforcementOptions>(
              map['clientRouteEnforcementOptions']),
      connectionLogOptions: pulumi.Input.asInput<EndpointConnectionLogOptions>(
          map['connectionLogOptions']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disconnectOnSessionTimeout:
          pulumi.Input.asOptionalInput<bool>(map['disconnectOnSessionTimeout']),
      dnsServers: pulumi.Input.asOptionalInput<List<String>>(map['dnsServers']),
      endpointIpAddressType:
          pulumi.Input.asOptionalInput<String>(map['endpointIpAddressType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      selfServicePortal:
          pulumi.Input.asOptionalInput<String>(map['selfServicePortal']),
      serverCertificateArn:
          pulumi.Input.asInput<String>(map['serverCertificateArn']),
      sessionTimeoutHours:
          pulumi.Input.asOptionalInput<int>(map['sessionTimeoutHours']),
      splitTunnel: pulumi.Input.asOptionalInput<bool>(map['splitTunnel']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficIpAddressType:
          pulumi.Input.asOptionalInput<String>(map['trafficIpAddressType']),
      transportProtocol:
          pulumi.Input.asOptionalInput<String>(map['transportProtocol']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
      vpnPort: pulumi.Input.asOptionalInput<int>(map['vpnPort']),
    );
  }
}
