// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_authentication_option/endpoint_authentication_option.dart';
import '../endpoint_client_connect_options/endpoint_client_connect_options.dart';
import '../endpoint_client_login_banner_options/endpoint_client_login_banner_options.dart';
import '../endpoint_client_route_enforcement_options/endpoint_client_route_enforcement_options.dart';
import '../endpoint_connection_log_options/endpoint_connection_log_options.dart';

/// The set of arguments for Endpoint.
class EndpointArgs2 {
  /// Information about the authentication method to be used to authenticate clients.
  final Input<List<EndpointAuthenticationOption>> authenticationOptions;

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When <span pulumi-lang-nodejs="`trafficIpAddressType`" pulumi-lang-dotnet="`TrafficIpAddressType`" pulumi-lang-go="`trafficIpAddressType`" pulumi-lang-python="`traffic_ip_address_type`" pulumi-lang-yaml="`trafficIpAddressType`" pulumi-lang-java="`trafficIpAddressType`">`traffic_ip_address_type`</span> is set to <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, it must not be specified. Otherwise, it is required.
  final Input<String>? clientCidrBlock;

  /// The options for managing connection authorization for new client connections.
  final Input<EndpointClientConnectOptions>? clientConnectOptions;

  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  final Input<EndpointClientLoginBannerOptions>? clientLoginBannerOptions;

  /// Options for enforce administrator defined routes on devices connected through the VPN.
  final Input<EndpointClientRouteEnforcementOptions>?
      clientRouteEnforcementOptions;

  /// Information about the client connection logging options.
  final Input<EndpointConnectionLogOptions> connectionLogOptions;

  /// A brief description of the Client VPN endpoint.
  final Input<String>? description;

  /// Indicates whether the client VPN session is disconnected after the maximum <span pulumi-lang-nodejs="`sessionTimeoutHours`" pulumi-lang-dotnet="`SessionTimeoutHours`" pulumi-lang-go="`sessionTimeoutHours`" pulumi-lang-python="`session_timeout_hours`" pulumi-lang-yaml="`sessionTimeoutHours`" pulumi-lang-java="`sessionTimeoutHours`">`session_timeout_hours`</span> is reached. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, users are prompted to reconnect client VPN. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, client VPN attempts to reconnect automatically. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? disconnectOnSessionTimeout;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  final Input<List<String>>? dnsServers;

  /// IP address type for the Client VPN endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, or `dual-stack`. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>.
  final Input<String>? endpointIpAddressType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  final Input<List<String>>? securityGroupIds;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> or <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>. Default value is <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final Input<String>? selfServicePortal;

  /// The ARN of the ACM server certificate.
  final Input<String> serverCertificateArn;

  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span> - Valid values: `8 | 10 | 12 | 24`
  final Input<int>? sessionTimeoutHours;

  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? splitTunnel;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// IP address type for traffic within the Client VPN tunnel. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, or `dual-stack`. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. When it is set to <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, <span pulumi-lang-nodejs="`clientCidrBlock`" pulumi-lang-dotnet="`ClientCidrBlock`" pulumi-lang-go="`clientCidrBlock`" pulumi-lang-python="`client_cidr_block`" pulumi-lang-yaml="`clientCidrBlock`" pulumi-lang-java="`clientCidrBlock`">`client_cidr_block`</span> must not be specified.
  final Input<String>? trafficIpAddressType;

  /// The transport protocol to be used by the VPN session. Default value is <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>.
  final Input<String>? transportProtocol;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  final Input<String>? vpcId;

  /// The port number for the Client VPN endpoint. Valid values are <span pulumi-lang-nodejs="`443`" pulumi-lang-dotnet="`443`" pulumi-lang-go="`443`" pulumi-lang-python="`443`" pulumi-lang-yaml="`443`" pulumi-lang-java="`443`">`443`</span> and <span pulumi-lang-nodejs="`1194`" pulumi-lang-dotnet="`1194`" pulumi-lang-go="`1194`" pulumi-lang-python="`1194`" pulumi-lang-yaml="`1194`" pulumi-lang-java="`1194`">`1194`</span>. Default value is <span pulumi-lang-nodejs="`443`" pulumi-lang-dotnet="`443`" pulumi-lang-go="`443`" pulumi-lang-python="`443`" pulumi-lang-yaml="`443`" pulumi-lang-java="`443`">`443`</span>.
  final Input<int>? vpnPort;

  EndpointArgs2({
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
    map['authenticationOptions'] = Input.mapInputValue<
            List<EndpointAuthenticationOption>, List<Map<String, dynamic>>>(
        authenticationOptions,
        (value) => Input.encodeList<EndpointAuthenticationOption,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final clientCidrBlockValue = clientCidrBlock;
    if (clientCidrBlockValue != null) {
      map['clientCidrBlock'] = clientCidrBlockValue;
    }
    final clientConnectOptionsValue = clientConnectOptions;
    if (clientConnectOptionsValue != null) {
      map['clientConnectOptions'] = Input.mapOptionalInputValue<
              EndpointClientConnectOptions, Map<String, dynamic>>(
          clientConnectOptionsValue, (value) => value.toMap());
    }
    final clientLoginBannerOptionsValue = clientLoginBannerOptions;
    if (clientLoginBannerOptionsValue != null) {
      map['clientLoginBannerOptions'] = Input.mapOptionalInputValue<
              EndpointClientLoginBannerOptions, Map<String, dynamic>>(
          clientLoginBannerOptionsValue, (value) => value.toMap());
    }
    final clientRouteEnforcementOptionsValue = clientRouteEnforcementOptions;
    if (clientRouteEnforcementOptionsValue != null) {
      map['clientRouteEnforcementOptions'] = Input.mapOptionalInputValue<
              EndpointClientRouteEnforcementOptions, Map<String, dynamic>>(
          clientRouteEnforcementOptionsValue, (value) => value.toMap());
    }
    map['connectionLogOptions'] =
        Input.mapInputValue<EndpointConnectionLogOptions, Map<String, dynamic>>(
            connectionLogOptions, (value) => value.toMap());
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

  factory EndpointArgs2.fromMap(Map<String, dynamic> map) {
    return EndpointArgs2(
      authenticationOptions: Input.asInput<List<EndpointAuthenticationOption>>(
          map['authenticationOptions']),
      clientCidrBlock: Input.asOptionalInput<String>(map['clientCidrBlock']),
      clientConnectOptions: Input.asOptionalInput<EndpointClientConnectOptions>(
          map['clientConnectOptions']),
      clientLoginBannerOptions:
          Input.asOptionalInput<EndpointClientLoginBannerOptions>(
              map['clientLoginBannerOptions']),
      clientRouteEnforcementOptions:
          Input.asOptionalInput<EndpointClientRouteEnforcementOptions>(
              map['clientRouteEnforcementOptions']),
      connectionLogOptions: Input.asInput<EndpointConnectionLogOptions>(
          map['connectionLogOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      disconnectOnSessionTimeout:
          Input.asOptionalInput<bool>(map['disconnectOnSessionTimeout']),
      dnsServers: Input.asOptionalInput<List<String>>(map['dnsServers']),
      endpointIpAddressType:
          Input.asOptionalInput<String>(map['endpointIpAddressType']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      selfServicePortal:
          Input.asOptionalInput<String>(map['selfServicePortal']),
      serverCertificateArn: Input.asInput<String>(map['serverCertificateArn']),
      sessionTimeoutHours:
          Input.asOptionalInput<int>(map['sessionTimeoutHours']),
      splitTunnel: Input.asOptionalInput<bool>(map['splitTunnel']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficIpAddressType:
          Input.asOptionalInput<String>(map['trafficIpAddressType']),
      transportProtocol:
          Input.asOptionalInput<String>(map['transportProtocol']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
      vpnPort: Input.asOptionalInput<int>(map['vpnPort']),
    );
  }
}
