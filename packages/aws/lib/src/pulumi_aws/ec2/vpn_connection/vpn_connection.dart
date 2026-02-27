import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpn_connection_route/vpn_connection_route.dart';
import '../vpn_connection_tunnel1_log_options/vpn_connection_tunnel1_log_options.dart';
import '../vpn_connection_tunnel2_log_options/vpn_connection_tunnel2_log_options.dart';
import '../vpn_connection_vgw_telemetry/vpn_connection_vgw_telemetry.dart';
import 'vpn_connection_args.dart';

/// Manages a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
/// Any new Site-to-Site VPN connection that you create is an [AWS VPN connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/vpn-categories.html).
///
/// > **Note:** The CIDR blocks in the arguments `tunnel1_inside_cidr` and `tunnel2_inside_cidr` must have a prefix of /30 and be a part of a specific range.
/// [Read more about this in the AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnTunnelOptionsSpecification.html).
///
/// ## Example Usage
///
/// ### EC2 Transit Gateway
///
///
///
/// ### Virtual Private Gateway
///
///
///
/// ### AWS Site to Site Private VPN
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Connections using the VPN connection `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnConnection:VpnConnection testvpnconnection vpn-40f41529
/// ```
class VpnConnection extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the VPN Connection.
  late final pulumi.Output<String> arn;

  /// The ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;

  /// The ARN of the core network attachment.
  late final pulumi.Output<String> coreNetworkAttachmentArn;

  /// The configuration information for the VPN connection's customer gateway (in the native XML format).
  late final pulumi.Output<String> customerGatewayConfiguration;

  /// The ID of the customer gateway.
  late final pulumi.Output<String> customerGatewayId;

  /// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  late final pulumi.Output<bool> enableAcceleration;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final pulumi.Output<String> localIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  late final pulumi.Output<String> localIpv6NetworkCidr;

  /// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  late final pulumi.Output<String> outsideIpAddressType;

  /// ARN of the Secrets Manager secret storing the pre-shared key(s) for the VPN connection. Note that even if it returns a valid Secrets Manager ARN, the pre-shared key(s) will not be stored in Secrets Manager unless the `preshared_key_storage` argument is set to `SecretsManager`.
  late final pulumi.Output<String> presharedKeyArn;

  /// Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  late final pulumi.Output<String> presharedKeyStorage;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IPv4 CIDR on the AWS side of the VPN connection.
  late final pulumi.Output<String> remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the AWS side of the VPN connection.
  late final pulumi.Output<String> remoteIpv6NetworkCidr;

  /// The static routes associated with the VPN connection. Detailed below.
  late final pulumi.Output<List<VpnConnectionRoute>> routes;

  /// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  late final pulumi.Output<bool> staticRoutesOnly;

  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// When associated with an EC2 Transit Gateway (`transit_gateway_id` argument), the attachment ID. See also the `aws.ec2.Tag` resource for tagging the EC2 Transit Gateway VPN Attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// The ID of the EC2 Transit Gateway.
  late final pulumi.Output<String?> transitGatewayId;

  /// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  late final pulumi.Output<String?> transportTransitGatewayAttachmentId;

  /// The public IP address of the first VPN tunnel.
  late final pulumi.Output<String> tunnel1Address;

  /// The bgp asn number of the first VPN tunnel.
  late final pulumi.Output<String> tunnel1BgpAsn;

  /// The bgp holdtime of the first VPN tunnel.
  late final pulumi.Output<int> tunnel1BgpHoldtime;

  /// The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side).
  late final pulumi.Output<String> tunnel1CgwInsideAddress;

  /// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final pulumi.Output<String?> tunnel1DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than `30`.
  late final pulumi.Output<int?> tunnel1DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  late final pulumi.Output<bool?> tunnel1EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final pulumi.Output<List<String>?> tunnel1IkeVersions;

  /// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final pulumi.Output<String> tunnel1InsideCidr;

  /// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final pulumi.Output<String> tunnel1InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final pulumi.Output<VpnConnectionTunnel1LogOptions> tunnel1LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel1Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel1Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel1Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  late final pulumi.Output<int?> tunnel1Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel1Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel1Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel1Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  late final pulumi.Output<int?> tunnel1Phase2LifetimeSeconds;

  /// The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final pulumi.Output<String> tunnel1PresharedKey;

  /// The percentage of the rekey window for the first VPN tunnel (determined by `tunnel1_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  late final pulumi.Output<int?> tunnel1RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel1_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel1_phase2_lifetime_seconds`.
  late final pulumi.Output<int?> tunnel1RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between `64` and `2048`.
  late final pulumi.Output<int?> tunnel1ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final pulumi.Output<String?> tunnel1StartupAction;

  /// The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side).
  late final pulumi.Output<String> tunnel1VgwInsideAddress;

  /// The public IP address of the second VPN tunnel.
  late final pulumi.Output<String> tunnel2Address;

  /// The bgp asn number of the second VPN tunnel.
  late final pulumi.Output<String> tunnel2BgpAsn;

  /// The bgp holdtime of the second VPN tunnel.
  late final pulumi.Output<int> tunnel2BgpHoldtime;

  /// The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side).
  late final pulumi.Output<String> tunnel2CgwInsideAddress;

  /// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  late final pulumi.Output<String?> tunnel2DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than `30`.
  late final pulumi.Output<int?> tunnel2DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  late final pulumi.Output<bool?> tunnel2EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  late final pulumi.Output<List<String>?> tunnel2IkeVersions;

  /// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  late final pulumi.Output<String> tunnel2InsideCidr;

  /// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  late final pulumi.Output<String> tunnel2InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  late final pulumi.Output<VpnConnectionTunnel2LogOptions> tunnel2LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel2Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel2Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel2Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  late final pulumi.Output<int?> tunnel2Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  late final pulumi.Output<List<int>?> tunnel2Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  late final pulumi.Output<List<String>?> tunnel2Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  late final pulumi.Output<List<String>?> tunnel2Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  late final pulumi.Output<int?> tunnel2Phase2LifetimeSeconds;

  /// The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  late final pulumi.Output<String> tunnel2PresharedKey;

  /// The percentage of the rekey window for the second VPN tunnel (determined by `tunnel2_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  late final pulumi.Output<int?> tunnel2RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel2_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel2_phase2_lifetime_seconds`.
  late final pulumi.Output<int?> tunnel2RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between `64` and `2048`.
  late final pulumi.Output<int?> tunnel2ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  late final pulumi.Output<String?> tunnel2StartupAction;

  /// The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side).
  late final pulumi.Output<String> tunnel2VgwInsideAddress;

  /// Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. `standard` supports up to 1.25 Gbps per tunnel, while `large` supports up to 5 Gbps per tunnel. Not supported when `vpn_gateway_id` is specified, or `enable_acceleration` is `true`.
  late final pulumi.Output<String> tunnelBandwidth;

  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. `ipv6` Supports only EC2 Transit Gateway.
  late final pulumi.Output<String> tunnelInsideIpVersion;

  /// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  late final pulumi.Output<String> type;

  /// Telemetry for the VPN tunnels. Detailed below.
  late final pulumi.Output<List<VpnConnectionVgwTelemetry>> vgwTelemetries;

  /// ID of the VPN concentrator to associate with the VPN connection.
  late final pulumi.Output<String?> vpnConcentratorId;

  /// The ID of the Virtual Private Gateway.
  late final pulumi.Output<String?> vpnGatewayId;

  VpnConnection(
    String name, {
    VpnConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkAttachmentArn =
        registerOutput<String>('coreNetworkAttachmentArn');
    this.customerGatewayConfiguration =
        registerOutput<String>('customerGatewayConfiguration');
    this.customerGatewayId = registerOutput<String>('customerGatewayId');
    this.enableAcceleration = registerOutput<bool>('enableAcceleration');
    this.localIpv4NetworkCidr = registerOutput<String>('localIpv4NetworkCidr');
    this.localIpv6NetworkCidr = registerOutput<String>('localIpv6NetworkCidr');
    this.outsideIpAddressType = registerOutput<String>('outsideIpAddressType');
    this.presharedKeyArn = registerOutput<String>('presharedKeyArn');
    this.presharedKeyStorage = registerOutput<String>('presharedKeyStorage');
    this.region = registerOutput<String>('region');
    this.remoteIpv4NetworkCidr =
        registerOutput<String>('remoteIpv4NetworkCidr');
    this.remoteIpv6NetworkCidr =
        registerOutput<String>('remoteIpv6NetworkCidr');
    this.routes = registerOutput<List<VpnConnectionRoute>>('routes');
    this.staticRoutesOnly = registerOutput<bool>('staticRoutesOnly');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.transportTransitGatewayAttachmentId =
        registerOutput<String?>('transportTransitGatewayAttachmentId');
    this.tunnel1Address = registerOutput<String>('tunnel1Address');
    this.tunnel1BgpAsn = registerOutput<String>('tunnel1BgpAsn');
    this.tunnel1BgpHoldtime = registerOutput<int>('tunnel1BgpHoldtime');
    this.tunnel1CgwInsideAddress =
        registerOutput<String>('tunnel1CgwInsideAddress');
    this.tunnel1DpdTimeoutAction =
        registerOutput<String?>('tunnel1DpdTimeoutAction');
    this.tunnel1DpdTimeoutSeconds =
        registerOutput<int?>('tunnel1DpdTimeoutSeconds');
    this.tunnel1EnableTunnelLifecycleControl =
        registerOutput<bool?>('tunnel1EnableTunnelLifecycleControl');
    this.tunnel1IkeVersions =
        registerOutput<List<String>?>('tunnel1IkeVersions');
    this.tunnel1InsideCidr = registerOutput<String>('tunnel1InsideCidr');
    this.tunnel1InsideIpv6Cidr =
        registerOutput<String>('tunnel1InsideIpv6Cidr');
    this.tunnel1LogOptions =
        registerOutput<VpnConnectionTunnel1LogOptions>('tunnel1LogOptions');
    this.tunnel1Phase1DhGroupNumbers =
        registerOutput<List<int>?>('tunnel1Phase1DhGroupNumbers');
    this.tunnel1Phase1EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase1EncryptionAlgorithms');
    this.tunnel1Phase1IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase1IntegrityAlgorithms');
    this.tunnel1Phase1LifetimeSeconds =
        registerOutput<int?>('tunnel1Phase1LifetimeSeconds');
    this.tunnel1Phase2DhGroupNumbers =
        registerOutput<List<int>?>('tunnel1Phase2DhGroupNumbers');
    this.tunnel1Phase2EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase2EncryptionAlgorithms');
    this.tunnel1Phase2IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel1Phase2IntegrityAlgorithms');
    this.tunnel1Phase2LifetimeSeconds =
        registerOutput<int?>('tunnel1Phase2LifetimeSeconds');
    this.tunnel1PresharedKey = registerOutput<String>('tunnel1PresharedKey');
    this.tunnel1RekeyFuzzPercentage =
        registerOutput<int?>('tunnel1RekeyFuzzPercentage');
    this.tunnel1RekeyMarginTimeSeconds =
        registerOutput<int?>('tunnel1RekeyMarginTimeSeconds');
    this.tunnel1ReplayWindowSize =
        registerOutput<int?>('tunnel1ReplayWindowSize');
    this.tunnel1StartupAction = registerOutput<String?>('tunnel1StartupAction');
    this.tunnel1VgwInsideAddress =
        registerOutput<String>('tunnel1VgwInsideAddress');
    this.tunnel2Address = registerOutput<String>('tunnel2Address');
    this.tunnel2BgpAsn = registerOutput<String>('tunnel2BgpAsn');
    this.tunnel2BgpHoldtime = registerOutput<int>('tunnel2BgpHoldtime');
    this.tunnel2CgwInsideAddress =
        registerOutput<String>('tunnel2CgwInsideAddress');
    this.tunnel2DpdTimeoutAction =
        registerOutput<String?>('tunnel2DpdTimeoutAction');
    this.tunnel2DpdTimeoutSeconds =
        registerOutput<int?>('tunnel2DpdTimeoutSeconds');
    this.tunnel2EnableTunnelLifecycleControl =
        registerOutput<bool?>('tunnel2EnableTunnelLifecycleControl');
    this.tunnel2IkeVersions =
        registerOutput<List<String>?>('tunnel2IkeVersions');
    this.tunnel2InsideCidr = registerOutput<String>('tunnel2InsideCidr');
    this.tunnel2InsideIpv6Cidr =
        registerOutput<String>('tunnel2InsideIpv6Cidr');
    this.tunnel2LogOptions =
        registerOutput<VpnConnectionTunnel2LogOptions>('tunnel2LogOptions');
    this.tunnel2Phase1DhGroupNumbers =
        registerOutput<List<int>?>('tunnel2Phase1DhGroupNumbers');
    this.tunnel2Phase1EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase1EncryptionAlgorithms');
    this.tunnel2Phase1IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase1IntegrityAlgorithms');
    this.tunnel2Phase1LifetimeSeconds =
        registerOutput<int?>('tunnel2Phase1LifetimeSeconds');
    this.tunnel2Phase2DhGroupNumbers =
        registerOutput<List<int>?>('tunnel2Phase2DhGroupNumbers');
    this.tunnel2Phase2EncryptionAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase2EncryptionAlgorithms');
    this.tunnel2Phase2IntegrityAlgorithms =
        registerOutput<List<String>?>('tunnel2Phase2IntegrityAlgorithms');
    this.tunnel2Phase2LifetimeSeconds =
        registerOutput<int?>('tunnel2Phase2LifetimeSeconds');
    this.tunnel2PresharedKey = registerOutput<String>('tunnel2PresharedKey');
    this.tunnel2RekeyFuzzPercentage =
        registerOutput<int?>('tunnel2RekeyFuzzPercentage');
    this.tunnel2RekeyMarginTimeSeconds =
        registerOutput<int?>('tunnel2RekeyMarginTimeSeconds');
    this.tunnel2ReplayWindowSize =
        registerOutput<int?>('tunnel2ReplayWindowSize');
    this.tunnel2StartupAction = registerOutput<String?>('tunnel2StartupAction');
    this.tunnel2VgwInsideAddress =
        registerOutput<String>('tunnel2VgwInsideAddress');
    this.tunnelBandwidth = registerOutput<String>('tunnelBandwidth');
    this.tunnelInsideIpVersion =
        registerOutput<String>('tunnelInsideIpVersion');
    this.type = registerOutput<String>('type');
    this.vgwTelemetries =
        registerOutput<List<VpnConnectionVgwTelemetry>>('vgwTelemetries');
    this.vpnConcentratorId = registerOutput<String?>('vpnConcentratorId');
    this.vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }
}
