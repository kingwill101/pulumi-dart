import 'package:pulumi/pulumi.dart';
import '../endpoint_authentication_option/endpoint_authentication_option.dart';
import '../endpoint_client_connect_options/endpoint_client_connect_options.dart';
import '../endpoint_client_login_banner_options/endpoint_client_login_banner_options.dart';
import '../endpoint_client_route_enforcement_options/endpoint_client_route_enforcement_options.dart';
import '../endpoint_connection_log_options/endpoint_connection_log_options.dart';
import 'endpoint_args2.dart';

/// Provides an AWS Client VPN endpoint for OpenVPN clients. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN endpoints using the `id` value found via `aws ec2 describe-client-vpn-endpoints`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/endpoint:Endpoint example cvpn-endpoint-0ac3a1abbccddd666
/// ```
class Endpoint2 extends CustomResource {
  /// The ARN of the Client VPN endpoint.
  late final Output<String> arn;

  /// Information about the authentication method to be used to authenticate clients.
  late final Output<List<EndpointAuthenticationOption>> authenticationOptions;

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `traffic_ip_address_type` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  late final Output<String?> clientCidrBlock;

  /// The options for managing connection authorization for new client connections.
  late final Output<EndpointClientConnectOptions> clientConnectOptions;

  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  late final Output<EndpointClientLoginBannerOptions> clientLoginBannerOptions;

  /// Options for enforce administrator defined routes on devices connected through the VPN.
  late final Output<EndpointClientRouteEnforcementOptions>
      clientRouteEnforcementOptions;

  /// Information about the client connection logging options.
  late final Output<EndpointConnectionLogOptions> connectionLogOptions;

  /// A brief description of the Client VPN endpoint.
  late final Output<String?> description;

  /// Indicates whether the client VPN session is disconnected after the maximum `session_timeout_hours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  late final Output<bool> disconnectOnSessionTimeout;

  /// The DNS name to be used by clients when establishing their VPN session.
  late final Output<String> dnsName;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  late final Output<List<String>?> dnsServers;

  /// IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  late final Output<String> endpointIpAddressType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  late final Output<List<String>> securityGroupIds;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  late final Output<String?> selfServicePortal;

  /// The URL of the self-service portal.
  late final Output<String> selfServicePortalUrl;

  /// The ARN of the ACM server certificate.
  late final Output<String> serverCertificateArn;

  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  late final Output<int?> sessionTimeoutHours;

  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  late final Output<bool?> splitTunnel;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `client_cidr_block` must not be specified.
  late final Output<String> trafficIpAddressType;

  /// The transport protocol to be used by the VPN session. Default value is `udp`.
  late final Output<String?> transportProtocol;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  late final Output<String> vpcId;

  /// The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  late final Output<int?> vpnPort;

  Endpoint2(
    String name, {
    EndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authenticationOptions =
        registerOutput<List<EndpointAuthenticationOption>>(
            'authenticationOptions');
    this.clientCidrBlock = registerOutput<String?>('clientCidrBlock');
    this.clientConnectOptions =
        registerOutput<EndpointClientConnectOptions>('clientConnectOptions');
    this.clientLoginBannerOptions =
        registerOutput<EndpointClientLoginBannerOptions>(
            'clientLoginBannerOptions');
    this.clientRouteEnforcementOptions =
        registerOutput<EndpointClientRouteEnforcementOptions>(
            'clientRouteEnforcementOptions');
    this.connectionLogOptions =
        registerOutput<EndpointConnectionLogOptions>('connectionLogOptions');
    this.description = registerOutput<String?>('description');
    this.disconnectOnSessionTimeout =
        registerOutput<bool>('disconnectOnSessionTimeout');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnsServers = registerOutput<List<String>?>('dnsServers');
    this.endpointIpAddressType =
        registerOutput<String>('endpointIpAddressType');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.selfServicePortal = registerOutput<String?>('selfServicePortal');
    this.selfServicePortalUrl = registerOutput<String>('selfServicePortalUrl');
    this.serverCertificateArn = registerOutput<String>('serverCertificateArn');
    this.sessionTimeoutHours = registerOutput<int?>('sessionTimeoutHours');
    this.splitTunnel = registerOutput<bool?>('splitTunnel');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficIpAddressType = registerOutput<String>('trafficIpAddressType');
    this.transportProtocol = registerOutput<String?>('transportProtocol');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpnPort = registerOutput<int?>('vpnPort');
  }
}
