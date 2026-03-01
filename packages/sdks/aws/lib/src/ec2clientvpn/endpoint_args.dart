// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_authentication_option.dart';
import 'endpoint_client_connect_options.dart';
import 'endpoint_client_login_banner_options.dart';
import 'endpoint_client_route_enforcement_options.dart';
import 'endpoint_connection_log_options.dart';

/// {@template pulumi_ec2clientvpn_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// Information about the authentication method to be used to authenticate clients.
  final pulumi.Input<List<EndpointAuthenticationOption>> authenticationOptions;
  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `traffic_ip_address_type` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  final pulumi.Input<String>? clientCidrBlock;
  /// The options for managing connection authorization for new client connections.
  final pulumi.Input<EndpointClientConnectOptions>? clientConnectOptions;
  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  final pulumi.Input<EndpointClientLoginBannerOptions>? clientLoginBannerOptions;
  /// Options for enforce administrator defined routes on devices connected through the VPN.
  final pulumi.Input<EndpointClientRouteEnforcementOptions>? clientRouteEnforcementOptions;
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

  /// Creates a new [EndpointArgs].
  /// [authenticationOptions] Information about the authentication method to be used to authenticate clients.
  /// [clientCidrBlock] The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `traffic_ip_address_type` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  /// [clientConnectOptions] The options for managing connection authorization for new client connections.
  /// [clientLoginBannerOptions] Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  /// [clientRouteEnforcementOptions] Options for enforce administrator defined routes on devices connected through the VPN.
  /// [connectionLogOptions] Information about the client connection logging options.
  /// [description] A brief description of the Client VPN endpoint.
  /// [disconnectOnSessionTimeout] Indicates whether the client VPN session is disconnected after the maximum `session_timeout_hours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  /// [dnsServers] Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  /// [endpointIpAddressType] IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  /// [selfServicePortal] Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  /// [serverCertificateArn] The ARN of the ACM server certificate.
  /// [sessionTimeoutHours] The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  /// [splitTunnel] Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trafficIpAddressType] IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `client_cidr_block` must not be specified.
  /// [transportProtocol] The transport protocol to be used by the VPN session. Default value is `udp`.
  /// [vpcId] The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  /// [vpnPort] The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  EndpointArgs({
    required pulumi.Output<List<EndpointAuthenticationOption>> authenticationOptions,
    pulumi.Output<String>? clientCidrBlock,
    pulumi.Output<EndpointClientConnectOptions>? clientConnectOptions,
    pulumi.Output<EndpointClientLoginBannerOptions>? clientLoginBannerOptions,
    pulumi.Output<EndpointClientRouteEnforcementOptions>? clientRouteEnforcementOptions,
    required pulumi.Output<EndpointConnectionLogOptions> connectionLogOptions,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disconnectOnSessionTimeout,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? endpointIpAddressType,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? selfServicePortal,
    required pulumi.Output<String> serverCertificateArn,
    pulumi.Output<int>? sessionTimeoutHours,
    pulumi.Output<bool>? splitTunnel,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? trafficIpAddressType,
    pulumi.Output<String>? transportProtocol,
    pulumi.Output<String>? vpcId,
    pulumi.Output<int>? vpnPort,
  }) :
      authenticationOptions = pulumi.Input.asInput<List<EndpointAuthenticationOption>>(authenticationOptions),
      clientCidrBlock = pulumi.Input.asOptionalInput<String>(clientCidrBlock),
      clientConnectOptions = pulumi.Input.asOptionalInput<EndpointClientConnectOptions>(clientConnectOptions),
      clientLoginBannerOptions = pulumi.Input.asOptionalInput<EndpointClientLoginBannerOptions>(clientLoginBannerOptions),
      clientRouteEnforcementOptions = pulumi.Input.asOptionalInput<EndpointClientRouteEnforcementOptions>(clientRouteEnforcementOptions),
      connectionLogOptions = pulumi.Input.asInput<EndpointConnectionLogOptions>(connectionLogOptions),
      description = pulumi.Input.asOptionalInput<String>(description),
      disconnectOnSessionTimeout = pulumi.Input.asOptionalInput<bool>(disconnectOnSessionTimeout),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      endpointIpAddressType = pulumi.Input.asOptionalInput<String>(endpointIpAddressType),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      selfServicePortal = pulumi.Input.asOptionalInput<String>(selfServicePortal),
      serverCertificateArn = pulumi.Input.asInput<String>(serverCertificateArn),
      sessionTimeoutHours = pulumi.Input.asOptionalInput<int>(sessionTimeoutHours),
      splitTunnel = pulumi.Input.asOptionalInput<bool>(splitTunnel),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficIpAddressType = pulumi.Input.asOptionalInput<String>(trafficIpAddressType),
      transportProtocol = pulumi.Input.asOptionalInput<String>(transportProtocol),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpnPort = pulumi.Input.asOptionalInput<int>(vpnPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationOptions': pulumi.Input.mapInputValue<List<EndpointAuthenticationOption>, List<Map<String, dynamic>>>(authenticationOptions, (value) => pulumi.Input.encodeList<EndpointAuthenticationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCidrBlock': ?clientCidrBlock,
      'clientConnectOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientConnectOptions, Map<String, dynamic>>(clientConnectOptions, (value) => value.toMap()),
      'clientLoginBannerOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientLoginBannerOptions, Map<String, dynamic>>(clientLoginBannerOptions, (value) => value.toMap()),
      'clientRouteEnforcementOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientRouteEnforcementOptions, Map<String, dynamic>>(clientRouteEnforcementOptions, (value) => value.toMap()),
      'connectionLogOptions': pulumi.Input.mapInputValue<EndpointConnectionLogOptions, Map<String, dynamic>>(connectionLogOptions, (value) => value.toMap()),
      'description': ?description,
      'disconnectOnSessionTimeout': ?disconnectOnSessionTimeout,
      'dnsServers': ?dnsServers,
      'endpointIpAddressType': ?endpointIpAddressType,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'selfServicePortal': ?selfServicePortal,
      'serverCertificateArn': serverCertificateArn,
      'sessionTimeoutHours': ?sessionTimeoutHours,
      'splitTunnel': ?splitTunnel,
      'tags': ?tags,
      'trafficIpAddressType': ?trafficIpAddressType,
      'transportProtocol': ?transportProtocol,
      'vpcId': ?vpcId,
      'vpnPort': ?vpnPort,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      authenticationOptions: pulumi.Output.create<List<EndpointAuthenticationOption>>(pulumi.Input.decodeList<EndpointAuthenticationOption>(map['authenticationOptions'], (value) => EndpointAuthenticationOption.fromMap((value as Map).cast<String, dynamic>()))),
      clientCidrBlock: map['clientCidrBlock'] == null ? null : pulumi.Output.create<String>(map['clientCidrBlock'] as String),
      clientConnectOptions: map['clientConnectOptions'] == null ? null : pulumi.Output.create<EndpointClientConnectOptions>(EndpointClientConnectOptions.fromMap((map['clientConnectOptions'] as Map).cast<String, dynamic>())),
      clientLoginBannerOptions: map['clientLoginBannerOptions'] == null ? null : pulumi.Output.create<EndpointClientLoginBannerOptions>(EndpointClientLoginBannerOptions.fromMap((map['clientLoginBannerOptions'] as Map).cast<String, dynamic>())),
      clientRouteEnforcementOptions: map['clientRouteEnforcementOptions'] == null ? null : pulumi.Output.create<EndpointClientRouteEnforcementOptions>(EndpointClientRouteEnforcementOptions.fromMap((map['clientRouteEnforcementOptions'] as Map).cast<String, dynamic>())),
      connectionLogOptions: pulumi.Output.create<EndpointConnectionLogOptions>(EndpointConnectionLogOptions.fromMap((map['connectionLogOptions'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disconnectOnSessionTimeout: map['disconnectOnSessionTimeout'] == null ? null : pulumi.Output.create<bool>(map['disconnectOnSessionTimeout'] as bool),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      endpointIpAddressType: map['endpointIpAddressType'] == null ? null : pulumi.Output.create<String>(map['endpointIpAddressType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      selfServicePortal: map['selfServicePortal'] == null ? null : pulumi.Output.create<String>(map['selfServicePortal'] as String),
      serverCertificateArn: pulumi.Output.create<String>(map['serverCertificateArn'] as String),
      sessionTimeoutHours: map['sessionTimeoutHours'] == null ? null : pulumi.Output.create<int>(map['sessionTimeoutHours'] as int),
      splitTunnel: map['splitTunnel'] == null ? null : pulumi.Output.create<bool>(map['splitTunnel'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficIpAddressType: map['trafficIpAddressType'] == null ? null : pulumi.Output.create<String>(map['trafficIpAddressType'] as String),
      transportProtocol: map['transportProtocol'] == null ? null : pulumi.Output.create<String>(map['transportProtocol'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpnPort: map['vpnPort'] == null ? null : pulumi.Output.create<int>(map['vpnPort'] as int),
    );
  }
}

