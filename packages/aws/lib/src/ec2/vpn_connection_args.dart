// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_tunnel1_log_options.dart';
import 'vpn_connection_tunnel2_log_options.dart';

/// {@template pulumi_ec2_vpn_connection_vpn_connection_args_doc}
/// The set of arguments for VpnConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_connection_vpn_connection_args_doc}
class VpnConnectionArgs {
  /// The ID of the customer gateway.
  final pulumi.Input<String> customerGatewayId;
  /// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  final pulumi.Input<bool>? enableAcceleration;
  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  final pulumi.Input<String>? localIpv4NetworkCidr;
  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  final pulumi.Input<String>? localIpv6NetworkCidr;
  /// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  final pulumi.Input<String>? outsideIpAddressType;
  /// Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  final pulumi.Input<String>? presharedKeyStorage;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IPv4 CIDR on the AWS side of the VPN connection.
  final pulumi.Input<String>? remoteIpv4NetworkCidr;
  /// The IPv6 CIDR on the AWS side of the VPN connection.
  final pulumi.Input<String>? remoteIpv6NetworkCidr;
  /// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  final pulumi.Input<bool>? staticRoutesOnly;
  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  final pulumi.Input<String>? transportTransitGatewayAttachmentId;
  /// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  final pulumi.Input<String>? tunnel1DpdTimeoutAction;
  /// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than `30`.
  final pulumi.Input<int>? tunnel1DpdTimeoutSeconds;
  /// Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  final pulumi.Input<bool>? tunnel1EnableTunnelLifecycleControl;
  /// The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  final pulumi.Input<List<String>>? tunnel1IkeVersions;
  /// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  final pulumi.Input<String>? tunnel1InsideCidr;
  /// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  final pulumi.Input<String>? tunnel1InsideIpv6Cidr;
  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  final pulumi.Input<VpnConnectionTunnel1LogOptions>? tunnel1LogOptions;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final pulumi.Input<List<int>>? tunnel1Phase1DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final pulumi.Input<List<String>>? tunnel1Phase1EncryptionAlgorithms;
  /// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final pulumi.Input<List<String>>? tunnel1Phase1IntegrityAlgorithms;
  /// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  final pulumi.Input<int>? tunnel1Phase1LifetimeSeconds;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final pulumi.Input<List<int>>? tunnel1Phase2DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final pulumi.Input<List<String>>? tunnel1Phase2EncryptionAlgorithms;
  /// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final pulumi.Input<List<String>>? tunnel1Phase2IntegrityAlgorithms;
  /// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  final pulumi.Input<int>? tunnel1Phase2LifetimeSeconds;
  /// The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  final pulumi.Input<String>? tunnel1PresharedKey;
  /// The percentage of the rekey window for the first VPN tunnel (determined by `tunnel1_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  final pulumi.Input<int>? tunnel1RekeyFuzzPercentage;
  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel1_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel1_phase2_lifetime_seconds`.
  final pulumi.Input<int>? tunnel1RekeyMarginTimeSeconds;
  /// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between `64` and `2048`.
  final pulumi.Input<int>? tunnel1ReplayWindowSize;
  /// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  final pulumi.Input<String>? tunnel1StartupAction;
  /// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  final pulumi.Input<String>? tunnel2DpdTimeoutAction;
  /// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than `30`.
  final pulumi.Input<int>? tunnel2DpdTimeoutSeconds;
  /// Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  final pulumi.Input<bool>? tunnel2EnableTunnelLifecycleControl;
  /// The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  final pulumi.Input<List<String>>? tunnel2IkeVersions;
  /// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  final pulumi.Input<String>? tunnel2InsideCidr;
  /// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  final pulumi.Input<String>? tunnel2InsideIpv6Cidr;
  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  final pulumi.Input<VpnConnectionTunnel2LogOptions>? tunnel2LogOptions;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final pulumi.Input<List<int>>? tunnel2Phase1DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final pulumi.Input<List<String>>? tunnel2Phase1EncryptionAlgorithms;
  /// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final pulumi.Input<List<String>>? tunnel2Phase1IntegrityAlgorithms;
  /// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  final pulumi.Input<int>? tunnel2Phase1LifetimeSeconds;
  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final pulumi.Input<List<int>>? tunnel2Phase2DhGroupNumbers;
  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final pulumi.Input<List<String>>? tunnel2Phase2EncryptionAlgorithms;
  /// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final pulumi.Input<List<String>>? tunnel2Phase2IntegrityAlgorithms;
  /// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  final pulumi.Input<int>? tunnel2Phase2LifetimeSeconds;
  /// The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  final pulumi.Input<String>? tunnel2PresharedKey;
  /// The percentage of the rekey window for the second VPN tunnel (determined by `tunnel2_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  final pulumi.Input<int>? tunnel2RekeyFuzzPercentage;
  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel2_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel2_phase2_lifetime_seconds`.
  final pulumi.Input<int>? tunnel2RekeyMarginTimeSeconds;
  /// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between `64` and `2048`.
  final pulumi.Input<int>? tunnel2ReplayWindowSize;
  /// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  final pulumi.Input<String>? tunnel2StartupAction;
  /// Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. `standard` supports up to 1.25 Gbps per tunnel, while `large` supports up to 5 Gbps per tunnel. Not supported when `vpn_gateway_id` is specified, or `enable_acceleration` is `true`.
  final pulumi.Input<String>? tunnelBandwidth;
  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. `ipv6` Supports only EC2 Transit Gateway.
  final pulumi.Input<String>? tunnelInsideIpVersion;
  /// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  final pulumi.Input<String> type;
  /// ID of the VPN concentrator to associate with the VPN connection.
  final pulumi.Input<String>? vpnConcentratorId;
  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [VpnConnectionArgs].
  /// [customerGatewayId] The ID of the customer gateway.
  /// [enableAcceleration] Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  /// [localIpv4NetworkCidr] The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  /// [localIpv6NetworkCidr] The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  /// [outsideIpAddressType] Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  /// [presharedKeyStorage] Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteIpv4NetworkCidr] The IPv4 CIDR on the AWS side of the VPN connection.
  /// [remoteIpv6NetworkCidr] The IPv6 CIDR on the AWS side of the VPN connection.
  /// [staticRoutesOnly] Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  /// [tags] Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] The ID of the EC2 Transit Gateway.
  /// [transportTransitGatewayAttachmentId] . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  /// [tunnel1DpdTimeoutAction] The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  /// [tunnel1DpdTimeoutSeconds] The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than `30`.
  /// [tunnel1EnableTunnelLifecycleControl] Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  /// [tunnel1IkeVersions] The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  /// [tunnel1InsideCidr] The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  /// [tunnel1InsideIpv6Cidr] The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  /// [tunnel1LogOptions] Options for logging VPN tunnel activity. See Log Options below for more details.
  /// [tunnel1Phase1DhGroupNumbers] List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  /// [tunnel1Phase1EncryptionAlgorithms] List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  /// [tunnel1Phase1IntegrityAlgorithms] One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  /// [tunnel1Phase1LifetimeSeconds] The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  /// [tunnel1Phase2DhGroupNumbers] List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  /// [tunnel1Phase2EncryptionAlgorithms] List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  /// [tunnel1Phase2IntegrityAlgorithms] List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  /// [tunnel1Phase2LifetimeSeconds] The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  /// [tunnel1PresharedKey] The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  /// [tunnel1RekeyFuzzPercentage] The percentage of the rekey window for the first VPN tunnel (determined by `tunnel1_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  /// [tunnel1RekeyMarginTimeSeconds] The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel1_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel1_phase2_lifetime_seconds`.
  /// [tunnel1ReplayWindowSize] The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between `64` and `2048`.
  /// [tunnel1StartupAction] The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  /// [tunnel2DpdTimeoutAction] The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  /// [tunnel2DpdTimeoutSeconds] The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than `30`.
  /// [tunnel2EnableTunnelLifecycleControl] Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  /// [tunnel2IkeVersions] The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  /// [tunnel2InsideCidr] The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  /// [tunnel2InsideIpv6Cidr] The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  /// [tunnel2LogOptions] Options for logging VPN tunnel activity. See Log Options below for more details.
  /// [tunnel2Phase1DhGroupNumbers] List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  /// [tunnel2Phase1EncryptionAlgorithms] List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  /// [tunnel2Phase1IntegrityAlgorithms] One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  /// [tunnel2Phase1LifetimeSeconds] The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  /// [tunnel2Phase2DhGroupNumbers] List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  /// [tunnel2Phase2EncryptionAlgorithms] List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  /// [tunnel2Phase2IntegrityAlgorithms] List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  /// [tunnel2Phase2LifetimeSeconds] The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  /// [tunnel2PresharedKey] The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  /// [tunnel2RekeyFuzzPercentage] The percentage of the rekey window for the second VPN tunnel (determined by `tunnel2_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  /// [tunnel2RekeyMarginTimeSeconds] The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel2_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel2_phase2_lifetime_seconds`.
  /// [tunnel2ReplayWindowSize] The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between `64` and `2048`.
  /// [tunnel2StartupAction] The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  /// [tunnelBandwidth] Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. `standard` supports up to 1.25 Gbps per tunnel, while `large` supports up to 5 Gbps per tunnel. Not supported when `vpn_gateway_id` is specified, or `enable_acceleration` is `true`.
  /// [tunnelInsideIpVersion] Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. `ipv6` Supports only EC2 Transit Gateway.
  /// [type] The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  /// [vpnConcentratorId] ID of the VPN concentrator to associate with the VPN connection.
  /// [vpnGatewayId] The ID of the Virtual Private Gateway.
  VpnConnectionArgs({
    required String customerGatewayId,
    bool? enableAcceleration,
    String? localIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? outsideIpAddressType,
    String? presharedKeyStorage,
    String? region,
    String? remoteIpv4NetworkCidr,
    String? remoteIpv6NetworkCidr,
    bool? staticRoutesOnly,
    Map<String, String>? tags,
    String? transitGatewayId,
    String? transportTransitGatewayAttachmentId,
    String? tunnel1DpdTimeoutAction,
    int? tunnel1DpdTimeoutSeconds,
    bool? tunnel1EnableTunnelLifecycleControl,
    List<String>? tunnel1IkeVersions,
    String? tunnel1InsideCidr,
    String? tunnel1InsideIpv6Cidr,
    VpnConnectionTunnel1LogOptions? tunnel1LogOptions,
    List<int>? tunnel1Phase1DhGroupNumbers,
    List<String>? tunnel1Phase1EncryptionAlgorithms,
    List<String>? tunnel1Phase1IntegrityAlgorithms,
    int? tunnel1Phase1LifetimeSeconds,
    List<int>? tunnel1Phase2DhGroupNumbers,
    List<String>? tunnel1Phase2EncryptionAlgorithms,
    List<String>? tunnel1Phase2IntegrityAlgorithms,
    int? tunnel1Phase2LifetimeSeconds,
    String? tunnel1PresharedKey,
    int? tunnel1RekeyFuzzPercentage,
    int? tunnel1RekeyMarginTimeSeconds,
    int? tunnel1ReplayWindowSize,
    String? tunnel1StartupAction,
    String? tunnel2DpdTimeoutAction,
    int? tunnel2DpdTimeoutSeconds,
    bool? tunnel2EnableTunnelLifecycleControl,
    List<String>? tunnel2IkeVersions,
    String? tunnel2InsideCidr,
    String? tunnel2InsideIpv6Cidr,
    VpnConnectionTunnel2LogOptions? tunnel2LogOptions,
    List<int>? tunnel2Phase1DhGroupNumbers,
    List<String>? tunnel2Phase1EncryptionAlgorithms,
    List<String>? tunnel2Phase1IntegrityAlgorithms,
    int? tunnel2Phase1LifetimeSeconds,
    List<int>? tunnel2Phase2DhGroupNumbers,
    List<String>? tunnel2Phase2EncryptionAlgorithms,
    List<String>? tunnel2Phase2IntegrityAlgorithms,
    int? tunnel2Phase2LifetimeSeconds,
    String? tunnel2PresharedKey,
    int? tunnel2RekeyFuzzPercentage,
    int? tunnel2RekeyMarginTimeSeconds,
    int? tunnel2ReplayWindowSize,
    String? tunnel2StartupAction,
    String? tunnelBandwidth,
    String? tunnelInsideIpVersion,
    required String type,
    String? vpnConcentratorId,
    String? vpnGatewayId,
  }) :
      customerGatewayId = pulumi.Input.asInput<String>(customerGatewayId),
      enableAcceleration = pulumi.Input.asOptionalInput<bool>(enableAcceleration),
      localIpv4NetworkCidr = pulumi.Input.asOptionalInput<String>(localIpv4NetworkCidr),
      localIpv6NetworkCidr = pulumi.Input.asOptionalInput<String>(localIpv6NetworkCidr),
      outsideIpAddressType = pulumi.Input.asOptionalInput<String>(outsideIpAddressType),
      presharedKeyStorage = pulumi.Input.asOptionalInput<String>(presharedKeyStorage),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteIpv4NetworkCidr = pulumi.Input.asOptionalInput<String>(remoteIpv4NetworkCidr),
      remoteIpv6NetworkCidr = pulumi.Input.asOptionalInput<String>(remoteIpv6NetworkCidr),
      staticRoutesOnly = pulumi.Input.asOptionalInput<bool>(staticRoutesOnly),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      transportTransitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transportTransitGatewayAttachmentId),
      tunnel1DpdTimeoutAction = pulumi.Input.asOptionalInput<String>(tunnel1DpdTimeoutAction),
      tunnel1DpdTimeoutSeconds = pulumi.Input.asOptionalInput<int>(tunnel1DpdTimeoutSeconds),
      tunnel1EnableTunnelLifecycleControl = pulumi.Input.asOptionalInput<bool>(tunnel1EnableTunnelLifecycleControl),
      tunnel1IkeVersions = pulumi.Input.asOptionalInput<List<String>>(tunnel1IkeVersions),
      tunnel1InsideCidr = pulumi.Input.asOptionalInput<String>(tunnel1InsideCidr),
      tunnel1InsideIpv6Cidr = pulumi.Input.asOptionalInput<String>(tunnel1InsideIpv6Cidr),
      tunnel1LogOptions = pulumi.Input.asOptionalInput<VpnConnectionTunnel1LogOptions>(tunnel1LogOptions),
      tunnel1Phase1DhGroupNumbers = pulumi.Input.asOptionalInput<List<int>>(tunnel1Phase1DhGroupNumbers),
      tunnel1Phase1EncryptionAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel1Phase1EncryptionAlgorithms),
      tunnel1Phase1IntegrityAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel1Phase1IntegrityAlgorithms),
      tunnel1Phase1LifetimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel1Phase1LifetimeSeconds),
      tunnel1Phase2DhGroupNumbers = pulumi.Input.asOptionalInput<List<int>>(tunnel1Phase2DhGroupNumbers),
      tunnel1Phase2EncryptionAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel1Phase2EncryptionAlgorithms),
      tunnel1Phase2IntegrityAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel1Phase2IntegrityAlgorithms),
      tunnel1Phase2LifetimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel1Phase2LifetimeSeconds),
      tunnel1PresharedKey = pulumi.Input.asOptionalInput<String>(tunnel1PresharedKey),
      tunnel1RekeyFuzzPercentage = pulumi.Input.asOptionalInput<int>(tunnel1RekeyFuzzPercentage),
      tunnel1RekeyMarginTimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel1RekeyMarginTimeSeconds),
      tunnel1ReplayWindowSize = pulumi.Input.asOptionalInput<int>(tunnel1ReplayWindowSize),
      tunnel1StartupAction = pulumi.Input.asOptionalInput<String>(tunnel1StartupAction),
      tunnel2DpdTimeoutAction = pulumi.Input.asOptionalInput<String>(tunnel2DpdTimeoutAction),
      tunnel2DpdTimeoutSeconds = pulumi.Input.asOptionalInput<int>(tunnel2DpdTimeoutSeconds),
      tunnel2EnableTunnelLifecycleControl = pulumi.Input.asOptionalInput<bool>(tunnel2EnableTunnelLifecycleControl),
      tunnel2IkeVersions = pulumi.Input.asOptionalInput<List<String>>(tunnel2IkeVersions),
      tunnel2InsideCidr = pulumi.Input.asOptionalInput<String>(tunnel2InsideCidr),
      tunnel2InsideIpv6Cidr = pulumi.Input.asOptionalInput<String>(tunnel2InsideIpv6Cidr),
      tunnel2LogOptions = pulumi.Input.asOptionalInput<VpnConnectionTunnel2LogOptions>(tunnel2LogOptions),
      tunnel2Phase1DhGroupNumbers = pulumi.Input.asOptionalInput<List<int>>(tunnel2Phase1DhGroupNumbers),
      tunnel2Phase1EncryptionAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel2Phase1EncryptionAlgorithms),
      tunnel2Phase1IntegrityAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel2Phase1IntegrityAlgorithms),
      tunnel2Phase1LifetimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel2Phase1LifetimeSeconds),
      tunnel2Phase2DhGroupNumbers = pulumi.Input.asOptionalInput<List<int>>(tunnel2Phase2DhGroupNumbers),
      tunnel2Phase2EncryptionAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel2Phase2EncryptionAlgorithms),
      tunnel2Phase2IntegrityAlgorithms = pulumi.Input.asOptionalInput<List<String>>(tunnel2Phase2IntegrityAlgorithms),
      tunnel2Phase2LifetimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel2Phase2LifetimeSeconds),
      tunnel2PresharedKey = pulumi.Input.asOptionalInput<String>(tunnel2PresharedKey),
      tunnel2RekeyFuzzPercentage = pulumi.Input.asOptionalInput<int>(tunnel2RekeyFuzzPercentage),
      tunnel2RekeyMarginTimeSeconds = pulumi.Input.asOptionalInput<int>(tunnel2RekeyMarginTimeSeconds),
      tunnel2ReplayWindowSize = pulumi.Input.asOptionalInput<int>(tunnel2ReplayWindowSize),
      tunnel2StartupAction = pulumi.Input.asOptionalInput<String>(tunnel2StartupAction),
      tunnelBandwidth = pulumi.Input.asOptionalInput<String>(tunnelBandwidth),
      tunnelInsideIpVersion = pulumi.Input.asOptionalInput<String>(tunnelInsideIpVersion),
      type = pulumi.Input.asInput<String>(type),
      vpnConcentratorId = pulumi.Input.asOptionalInput<String>(vpnConcentratorId),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayId': customerGatewayId,
      'enableAcceleration': ?enableAcceleration,
      'localIpv4NetworkCidr': ?localIpv4NetworkCidr,
      'localIpv6NetworkCidr': ?localIpv6NetworkCidr,
      'outsideIpAddressType': ?outsideIpAddressType,
      'presharedKeyStorage': ?presharedKeyStorage,
      'region': ?region,
      'remoteIpv4NetworkCidr': ?remoteIpv4NetworkCidr,
      'remoteIpv6NetworkCidr': ?remoteIpv6NetworkCidr,
      'staticRoutesOnly': ?staticRoutesOnly,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'transportTransitGatewayAttachmentId': ?transportTransitGatewayAttachmentId,
      'tunnel1DpdTimeoutAction': ?tunnel1DpdTimeoutAction,
      'tunnel1DpdTimeoutSeconds': ?tunnel1DpdTimeoutSeconds,
      'tunnel1EnableTunnelLifecycleControl': ?tunnel1EnableTunnelLifecycleControl,
      'tunnel1IkeVersions': ?tunnel1IkeVersions,
      'tunnel1InsideCidr': ?tunnel1InsideCidr,
      'tunnel1InsideIpv6Cidr': ?tunnel1InsideIpv6Cidr,
      'tunnel1LogOptions': ?pulumi.Input.mapOptionalInputValue<VpnConnectionTunnel1LogOptions, Map<String, dynamic>>(tunnel1LogOptions, (value) => value.toMap()),
      'tunnel1Phase1DhGroupNumbers': ?tunnel1Phase1DhGroupNumbers,
      'tunnel1Phase1EncryptionAlgorithms': ?tunnel1Phase1EncryptionAlgorithms,
      'tunnel1Phase1IntegrityAlgorithms': ?tunnel1Phase1IntegrityAlgorithms,
      'tunnel1Phase1LifetimeSeconds': ?tunnel1Phase1LifetimeSeconds,
      'tunnel1Phase2DhGroupNumbers': ?tunnel1Phase2DhGroupNumbers,
      'tunnel1Phase2EncryptionAlgorithms': ?tunnel1Phase2EncryptionAlgorithms,
      'tunnel1Phase2IntegrityAlgorithms': ?tunnel1Phase2IntegrityAlgorithms,
      'tunnel1Phase2LifetimeSeconds': ?tunnel1Phase2LifetimeSeconds,
      'tunnel1PresharedKey': ?tunnel1PresharedKey,
      'tunnel1RekeyFuzzPercentage': ?tunnel1RekeyFuzzPercentage,
      'tunnel1RekeyMarginTimeSeconds': ?tunnel1RekeyMarginTimeSeconds,
      'tunnel1ReplayWindowSize': ?tunnel1ReplayWindowSize,
      'tunnel1StartupAction': ?tunnel1StartupAction,
      'tunnel2DpdTimeoutAction': ?tunnel2DpdTimeoutAction,
      'tunnel2DpdTimeoutSeconds': ?tunnel2DpdTimeoutSeconds,
      'tunnel2EnableTunnelLifecycleControl': ?tunnel2EnableTunnelLifecycleControl,
      'tunnel2IkeVersions': ?tunnel2IkeVersions,
      'tunnel2InsideCidr': ?tunnel2InsideCidr,
      'tunnel2InsideIpv6Cidr': ?tunnel2InsideIpv6Cidr,
      'tunnel2LogOptions': ?pulumi.Input.mapOptionalInputValue<VpnConnectionTunnel2LogOptions, Map<String, dynamic>>(tunnel2LogOptions, (value) => value.toMap()),
      'tunnel2Phase1DhGroupNumbers': ?tunnel2Phase1DhGroupNumbers,
      'tunnel2Phase1EncryptionAlgorithms': ?tunnel2Phase1EncryptionAlgorithms,
      'tunnel2Phase1IntegrityAlgorithms': ?tunnel2Phase1IntegrityAlgorithms,
      'tunnel2Phase1LifetimeSeconds': ?tunnel2Phase1LifetimeSeconds,
      'tunnel2Phase2DhGroupNumbers': ?tunnel2Phase2DhGroupNumbers,
      'tunnel2Phase2EncryptionAlgorithms': ?tunnel2Phase2EncryptionAlgorithms,
      'tunnel2Phase2IntegrityAlgorithms': ?tunnel2Phase2IntegrityAlgorithms,
      'tunnel2Phase2LifetimeSeconds': ?tunnel2Phase2LifetimeSeconds,
      'tunnel2PresharedKey': ?tunnel2PresharedKey,
      'tunnel2RekeyFuzzPercentage': ?tunnel2RekeyFuzzPercentage,
      'tunnel2RekeyMarginTimeSeconds': ?tunnel2RekeyMarginTimeSeconds,
      'tunnel2ReplayWindowSize': ?tunnel2ReplayWindowSize,
      'tunnel2StartupAction': ?tunnel2StartupAction,
      'tunnelBandwidth': ?tunnelBandwidth,
      'tunnelInsideIpVersion': ?tunnelInsideIpVersion,
      'type': type,
      'vpnConcentratorId': ?vpnConcentratorId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      customerGatewayId: map['customerGatewayId'] as String,
      enableAcceleration: map['enableAcceleration'] == null ? null : map['enableAcceleration'] as bool,
      localIpv4NetworkCidr: map['localIpv4NetworkCidr'] == null ? null : map['localIpv4NetworkCidr'] as String,
      localIpv6NetworkCidr: map['localIpv6NetworkCidr'] == null ? null : map['localIpv6NetworkCidr'] as String,
      outsideIpAddressType: map['outsideIpAddressType'] == null ? null : map['outsideIpAddressType'] as String,
      presharedKeyStorage: map['presharedKeyStorage'] == null ? null : map['presharedKeyStorage'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      remoteIpv4NetworkCidr: map['remoteIpv4NetworkCidr'] == null ? null : map['remoteIpv4NetworkCidr'] as String,
      remoteIpv6NetworkCidr: map['remoteIpv6NetworkCidr'] == null ? null : map['remoteIpv6NetworkCidr'] as String,
      staticRoutesOnly: map['staticRoutesOnly'] == null ? null : map['staticRoutesOnly'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] == null ? null : map['transitGatewayId'] as String,
      transportTransitGatewayAttachmentId: map['transportTransitGatewayAttachmentId'] == null ? null : map['transportTransitGatewayAttachmentId'] as String,
      tunnel1DpdTimeoutAction: map['tunnel1DpdTimeoutAction'] == null ? null : map['tunnel1DpdTimeoutAction'] as String,
      tunnel1DpdTimeoutSeconds: map['tunnel1DpdTimeoutSeconds'] == null ? null : map['tunnel1DpdTimeoutSeconds'] as int,
      tunnel1EnableTunnelLifecycleControl: map['tunnel1EnableTunnelLifecycleControl'] == null ? null : map['tunnel1EnableTunnelLifecycleControl'] as bool,
      tunnel1IkeVersions: map['tunnel1IkeVersions'] == null ? null : (map['tunnel1IkeVersions'] as List).cast<String>(),
      tunnel1InsideCidr: map['tunnel1InsideCidr'] == null ? null : map['tunnel1InsideCidr'] as String,
      tunnel1InsideIpv6Cidr: map['tunnel1InsideIpv6Cidr'] == null ? null : map['tunnel1InsideIpv6Cidr'] as String,
      tunnel1LogOptions: map['tunnel1LogOptions'] == null ? null : VpnConnectionTunnel1LogOptions.fromMap((map['tunnel1LogOptions'] as Map).cast<String, dynamic>()),
      tunnel1Phase1DhGroupNumbers: map['tunnel1Phase1DhGroupNumbers'] == null ? null : (map['tunnel1Phase1DhGroupNumbers'] as List).cast<int>(),
      tunnel1Phase1EncryptionAlgorithms: map['tunnel1Phase1EncryptionAlgorithms'] == null ? null : (map['tunnel1Phase1EncryptionAlgorithms'] as List).cast<String>(),
      tunnel1Phase1IntegrityAlgorithms: map['tunnel1Phase1IntegrityAlgorithms'] == null ? null : (map['tunnel1Phase1IntegrityAlgorithms'] as List).cast<String>(),
      tunnel1Phase1LifetimeSeconds: map['tunnel1Phase1LifetimeSeconds'] == null ? null : map['tunnel1Phase1LifetimeSeconds'] as int,
      tunnel1Phase2DhGroupNumbers: map['tunnel1Phase2DhGroupNumbers'] == null ? null : (map['tunnel1Phase2DhGroupNumbers'] as List).cast<int>(),
      tunnel1Phase2EncryptionAlgorithms: map['tunnel1Phase2EncryptionAlgorithms'] == null ? null : (map['tunnel1Phase2EncryptionAlgorithms'] as List).cast<String>(),
      tunnel1Phase2IntegrityAlgorithms: map['tunnel1Phase2IntegrityAlgorithms'] == null ? null : (map['tunnel1Phase2IntegrityAlgorithms'] as List).cast<String>(),
      tunnel1Phase2LifetimeSeconds: map['tunnel1Phase2LifetimeSeconds'] == null ? null : map['tunnel1Phase2LifetimeSeconds'] as int,
      tunnel1PresharedKey: map['tunnel1PresharedKey'] == null ? null : map['tunnel1PresharedKey'] as String,
      tunnel1RekeyFuzzPercentage: map['tunnel1RekeyFuzzPercentage'] == null ? null : map['tunnel1RekeyFuzzPercentage'] as int,
      tunnel1RekeyMarginTimeSeconds: map['tunnel1RekeyMarginTimeSeconds'] == null ? null : map['tunnel1RekeyMarginTimeSeconds'] as int,
      tunnel1ReplayWindowSize: map['tunnel1ReplayWindowSize'] == null ? null : map['tunnel1ReplayWindowSize'] as int,
      tunnel1StartupAction: map['tunnel1StartupAction'] == null ? null : map['tunnel1StartupAction'] as String,
      tunnel2DpdTimeoutAction: map['tunnel2DpdTimeoutAction'] == null ? null : map['tunnel2DpdTimeoutAction'] as String,
      tunnel2DpdTimeoutSeconds: map['tunnel2DpdTimeoutSeconds'] == null ? null : map['tunnel2DpdTimeoutSeconds'] as int,
      tunnel2EnableTunnelLifecycleControl: map['tunnel2EnableTunnelLifecycleControl'] == null ? null : map['tunnel2EnableTunnelLifecycleControl'] as bool,
      tunnel2IkeVersions: map['tunnel2IkeVersions'] == null ? null : (map['tunnel2IkeVersions'] as List).cast<String>(),
      tunnel2InsideCidr: map['tunnel2InsideCidr'] == null ? null : map['tunnel2InsideCidr'] as String,
      tunnel2InsideIpv6Cidr: map['tunnel2InsideIpv6Cidr'] == null ? null : map['tunnel2InsideIpv6Cidr'] as String,
      tunnel2LogOptions: map['tunnel2LogOptions'] == null ? null : VpnConnectionTunnel2LogOptions.fromMap((map['tunnel2LogOptions'] as Map).cast<String, dynamic>()),
      tunnel2Phase1DhGroupNumbers: map['tunnel2Phase1DhGroupNumbers'] == null ? null : (map['tunnel2Phase1DhGroupNumbers'] as List).cast<int>(),
      tunnel2Phase1EncryptionAlgorithms: map['tunnel2Phase1EncryptionAlgorithms'] == null ? null : (map['tunnel2Phase1EncryptionAlgorithms'] as List).cast<String>(),
      tunnel2Phase1IntegrityAlgorithms: map['tunnel2Phase1IntegrityAlgorithms'] == null ? null : (map['tunnel2Phase1IntegrityAlgorithms'] as List).cast<String>(),
      tunnel2Phase1LifetimeSeconds: map['tunnel2Phase1LifetimeSeconds'] == null ? null : map['tunnel2Phase1LifetimeSeconds'] as int,
      tunnel2Phase2DhGroupNumbers: map['tunnel2Phase2DhGroupNumbers'] == null ? null : (map['tunnel2Phase2DhGroupNumbers'] as List).cast<int>(),
      tunnel2Phase2EncryptionAlgorithms: map['tunnel2Phase2EncryptionAlgorithms'] == null ? null : (map['tunnel2Phase2EncryptionAlgorithms'] as List).cast<String>(),
      tunnel2Phase2IntegrityAlgorithms: map['tunnel2Phase2IntegrityAlgorithms'] == null ? null : (map['tunnel2Phase2IntegrityAlgorithms'] as List).cast<String>(),
      tunnel2Phase2LifetimeSeconds: map['tunnel2Phase2LifetimeSeconds'] == null ? null : map['tunnel2Phase2LifetimeSeconds'] as int,
      tunnel2PresharedKey: map['tunnel2PresharedKey'] == null ? null : map['tunnel2PresharedKey'] as String,
      tunnel2RekeyFuzzPercentage: map['tunnel2RekeyFuzzPercentage'] == null ? null : map['tunnel2RekeyFuzzPercentage'] as int,
      tunnel2RekeyMarginTimeSeconds: map['tunnel2RekeyMarginTimeSeconds'] == null ? null : map['tunnel2RekeyMarginTimeSeconds'] as int,
      tunnel2ReplayWindowSize: map['tunnel2ReplayWindowSize'] == null ? null : map['tunnel2ReplayWindowSize'] as int,
      tunnel2StartupAction: map['tunnel2StartupAction'] == null ? null : map['tunnel2StartupAction'] as String,
      tunnelBandwidth: map['tunnelBandwidth'] == null ? null : map['tunnelBandwidth'] as String,
      tunnelInsideIpVersion: map['tunnelInsideIpVersion'] == null ? null : map['tunnelInsideIpVersion'] as String,
      type: map['type'] as String,
      vpnConcentratorId: map['vpnConcentratorId'] == null ? null : map['vpnConcentratorId'] as String,
      vpnGatewayId: map['vpnGatewayId'] == null ? null : map['vpnGatewayId'] as String,
    );
  }
}

