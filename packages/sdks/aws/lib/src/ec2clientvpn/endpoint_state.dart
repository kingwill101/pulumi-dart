// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_authentication_option.dart';
import 'endpoint_client_connect_options.dart';
import 'endpoint_client_login_banner_options.dart';
import 'endpoint_client_route_enforcement_options.dart';
import 'endpoint_connection_log_options.dart';
import 'endpoint_transit_gateway_configuration.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// The ARN of the Client VPN endpoint.
  final pulumi.Input<String?>? arn;
  /// Information about the authentication method to be used to authenticate clients. See `authenticationOptions` Block Reference below for details.
  final pulumi.Input<List<EndpointAuthenticationOption>?>? authenticationOptions;
  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `trafficIpAddressType` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  final pulumi.Input<String?>? clientCidrBlock;
  /// The options for managing connection authorization for new client connections. See `clientConnectOptions` Block Reference below for details.
  final pulumi.Input<EndpointClientConnectOptions?>? clientConnectOptions;
  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established. See `clientLoginBannerOptions` Block Reference below for details.
  final pulumi.Input<EndpointClientLoginBannerOptions?>? clientLoginBannerOptions;
  /// Options for enforce administrator defined routes on devices connected through the VPN. See `clientRouteEnforcementOptions` Block Reference below for details.
  final pulumi.Input<EndpointClientRouteEnforcementOptions?>? clientRouteEnforcementOptions;
  /// Information about the client connection logging options. See `connectionLogOptions` Block Reference below for details.
  final pulumi.Input<EndpointConnectionLogOptions?>? connectionLogOptions;
  /// A brief description of the Client VPN endpoint.
  final pulumi.Input<String?>? description;
  /// Indicates whether the client VPN session is disconnected after the maximum `sessionTimeoutHours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  final pulumi.Input<bool?>? disconnectOnSessionTimeout;
  /// The DNS name to be used by clients when establishing their VPN session.
  final pulumi.Input<String?>? dnsName;
  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  final pulumi.Input<List<String>?>? dnsServers;
  /// IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  final pulumi.Input<String?>? endpointIpAddressType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups. Conflicts with `transitGatewayConfiguration`.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  final pulumi.Input<String?>? selfServicePortal;
  /// The URL of the self-service portal.
  final pulumi.Input<String?>? selfServicePortalUrl;
  /// The ARN of the ACM server certificate.
  final pulumi.Input<String?>? serverCertificateArn;
  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  final pulumi.Input<int?>? sessionTimeoutHours;
  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  final pulumi.Input<bool?>? splitTunnel;
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `clientCidrBlock` must not be specified.
  final pulumi.Input<String?>? trafficIpAddressType;
  /// Configuration block for associating the Client VPN endpoint with a Transit Gateway. Conflicts with `vpcId` and `securityGroupIds`. See `transitGatewayConfiguration` Block Reference below for details.
  final pulumi.Input<EndpointTransitGatewayConfiguration?>? transitGatewayConfiguration;
  /// The transport protocol to be used by the VPN session. Default value is `udp`.
  final pulumi.Input<String?>? transportProtocol;
  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied. Conflicts with `transitGatewayConfiguration`.
  final pulumi.Input<String?>? vpcId;
  /// The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  final pulumi.Input<int?>? vpnPort;

  /// Creates a new [EndpointState].
  /// [arn] The ARN of the Client VPN endpoint.
  /// [authenticationOptions] Information about the authentication method to be used to authenticate clients. See `authenticationOptions` Block Reference below for details.
  /// [clientCidrBlock] The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `trafficIpAddressType` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  /// [clientConnectOptions] The options for managing connection authorization for new client connections. See `clientConnectOptions` Block Reference below for details.
  /// [clientLoginBannerOptions] Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established. See `clientLoginBannerOptions` Block Reference below for details.
  /// [clientRouteEnforcementOptions] Options for enforce administrator defined routes on devices connected through the VPN. See `clientRouteEnforcementOptions` Block Reference below for details.
  /// [connectionLogOptions] Information about the client connection logging options. See `connectionLogOptions` Block Reference below for details.
  /// [description] A brief description of the Client VPN endpoint.
  /// [disconnectOnSessionTimeout] Indicates whether the client VPN session is disconnected after the maximum `sessionTimeoutHours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  /// [dnsName] The DNS name to be used by clients when establishing their VPN session.
  /// [dnsServers] Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  /// [endpointIpAddressType] IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups. Conflicts with `transitGatewayConfiguration`.
  /// [selfServicePortal] Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  /// [selfServicePortalUrl] The URL of the self-service portal.
  /// [serverCertificateArn] The ARN of the ACM server certificate.
  /// [sessionTimeoutHours] The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  /// [splitTunnel] Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [trafficIpAddressType] IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `clientCidrBlock` must not be specified.
  /// [transitGatewayConfiguration] Configuration block for associating the Client VPN endpoint with a Transit Gateway. Conflicts with `vpcId` and `securityGroupIds`. See `transitGatewayConfiguration` Block Reference below for details.
  /// [transportProtocol] The transport protocol to be used by the VPN session. Default value is `udp`.
  /// [vpcId] The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied. Conflicts with `transitGatewayConfiguration`.
  /// [vpnPort] The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  const EndpointState({
    this.arn,
    this.authenticationOptions,
    this.clientCidrBlock,
    this.clientConnectOptions,
    this.clientLoginBannerOptions,
    this.clientRouteEnforcementOptions,
    this.connectionLogOptions,
    this.description,
    this.disconnectOnSessionTimeout,
    this.dnsName,
    this.dnsServers,
    this.endpointIpAddressType,
    this.region,
    this.securityGroupIds,
    this.selfServicePortal,
    this.selfServicePortalUrl,
    this.serverCertificateArn,
    this.sessionTimeoutHours,
    this.splitTunnel,
    this.tags,
    this.tagsAll,
    this.trafficIpAddressType,
    this.transitGatewayConfiguration,
    this.transportProtocol,
    this.vpcId,
    this.vpnPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authenticationOptions': ?pulumi.Input.mapOptionalInputValue<List<EndpointAuthenticationOption>, List<Map<String, dynamic>>>(authenticationOptions, (value) => pulumi.Input.encodeList<EndpointAuthenticationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientCidrBlock': ?clientCidrBlock,
      'clientConnectOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientConnectOptions, Map<String, dynamic>>(clientConnectOptions, (value) => value.toMap()),
      'clientLoginBannerOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientLoginBannerOptions, Map<String, dynamic>>(clientLoginBannerOptions, (value) => value.toMap()),
      'clientRouteEnforcementOptions': ?pulumi.Input.mapOptionalInputValue<EndpointClientRouteEnforcementOptions, Map<String, dynamic>>(clientRouteEnforcementOptions, (value) => value.toMap()),
      'connectionLogOptions': ?pulumi.Input.mapOptionalInputValue<EndpointConnectionLogOptions, Map<String, dynamic>>(connectionLogOptions, (value) => value.toMap()),
      'description': ?description,
      'disconnectOnSessionTimeout': ?disconnectOnSessionTimeout,
      'dnsName': ?dnsName,
      'dnsServers': ?dnsServers,
      'endpointIpAddressType': ?endpointIpAddressType,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'selfServicePortal': ?selfServicePortal,
      'selfServicePortalUrl': ?selfServicePortalUrl,
      'serverCertificateArn': ?serverCertificateArn,
      'sessionTimeoutHours': ?sessionTimeoutHours,
      'splitTunnel': ?splitTunnel,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trafficIpAddressType': ?trafficIpAddressType,
      'transitGatewayConfiguration': ?pulumi.Input.mapOptionalInputValue<EndpointTransitGatewayConfiguration, Map<String, dynamic>>(transitGatewayConfiguration, (value) => value.toMap()),
      'transportProtocol': ?transportProtocol,
      'vpcId': ?vpcId,
      'vpnPort': ?vpnPort,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationOptions: (() { final guardedValue = map['authenticationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointAuthenticationOption>(guardedValue, (value) => EndpointAuthenticationOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientCidrBlock: (() { final guardedValue = map['clientCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientConnectOptions: (() { final guardedValue = map['clientConnectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointClientConnectOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientLoginBannerOptions: (() { final guardedValue = map['clientLoginBannerOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointClientLoginBannerOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientRouteEnforcementOptions: (() { final guardedValue = map['clientRouteEnforcementOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointClientRouteEnforcementOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionLogOptions: (() { final guardedValue = map['connectionLogOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConnectionLogOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disconnectOnSessionTimeout: (() { final guardedValue = map['disconnectOnSessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      endpointIpAddressType: (() { final guardedValue = map['endpointIpAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfServicePortal: (() { final guardedValue = map['selfServicePortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfServicePortalUrl: (() { final guardedValue = map['selfServicePortalUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateArn: (() { final guardedValue = map['serverCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeoutHours: (() { final guardedValue = map['sessionTimeoutHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      splitTunnel: (() { final guardedValue = map['splitTunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficIpAddressType: (() { final guardedValue = map['trafficIpAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayConfiguration: (() { final guardedValue = map['transitGatewayConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transportProtocol: (() { final guardedValue = map['transportProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnPort: (() { final guardedValue = map['vpnPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
