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
    required this.customerGatewayId,
    this.enableAcceleration,
    this.localIpv4NetworkCidr,
    this.localIpv6NetworkCidr,
    this.outsideIpAddressType,
    this.presharedKeyStorage,
    this.region,
    this.remoteIpv4NetworkCidr,
    this.remoteIpv6NetworkCidr,
    this.staticRoutesOnly,
    this.tags,
    this.transitGatewayId,
    this.transportTransitGatewayAttachmentId,
    this.tunnel1DpdTimeoutAction,
    this.tunnel1DpdTimeoutSeconds,
    this.tunnel1EnableTunnelLifecycleControl,
    this.tunnel1IkeVersions,
    this.tunnel1InsideCidr,
    this.tunnel1InsideIpv6Cidr,
    this.tunnel1LogOptions,
    this.tunnel1Phase1DhGroupNumbers,
    this.tunnel1Phase1EncryptionAlgorithms,
    this.tunnel1Phase1IntegrityAlgorithms,
    this.tunnel1Phase1LifetimeSeconds,
    this.tunnel1Phase2DhGroupNumbers,
    this.tunnel1Phase2EncryptionAlgorithms,
    this.tunnel1Phase2IntegrityAlgorithms,
    this.tunnel1Phase2LifetimeSeconds,
    this.tunnel1PresharedKey,
    this.tunnel1RekeyFuzzPercentage,
    this.tunnel1RekeyMarginTimeSeconds,
    this.tunnel1ReplayWindowSize,
    this.tunnel1StartupAction,
    this.tunnel2DpdTimeoutAction,
    this.tunnel2DpdTimeoutSeconds,
    this.tunnel2EnableTunnelLifecycleControl,
    this.tunnel2IkeVersions,
    this.tunnel2InsideCidr,
    this.tunnel2InsideIpv6Cidr,
    this.tunnel2LogOptions,
    this.tunnel2Phase1DhGroupNumbers,
    this.tunnel2Phase1EncryptionAlgorithms,
    this.tunnel2Phase1IntegrityAlgorithms,
    this.tunnel2Phase1LifetimeSeconds,
    this.tunnel2Phase2DhGroupNumbers,
    this.tunnel2Phase2EncryptionAlgorithms,
    this.tunnel2Phase2IntegrityAlgorithms,
    this.tunnel2Phase2LifetimeSeconds,
    this.tunnel2PresharedKey,
    this.tunnel2RekeyFuzzPercentage,
    this.tunnel2RekeyMarginTimeSeconds,
    this.tunnel2ReplayWindowSize,
    this.tunnel2StartupAction,
    this.tunnelBandwidth,
    this.tunnelInsideIpVersion,
    required this.type,
    this.vpnConcentratorId,
    this.vpnGatewayId,
  });

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
      'transportTransitGatewayAttachmentId':
          ?transportTransitGatewayAttachmentId,
      'tunnel1DpdTimeoutAction': ?tunnel1DpdTimeoutAction,
      'tunnel1DpdTimeoutSeconds': ?tunnel1DpdTimeoutSeconds,
      'tunnel1EnableTunnelLifecycleControl':
          ?tunnel1EnableTunnelLifecycleControl,
      'tunnel1IkeVersions': ?tunnel1IkeVersions,
      'tunnel1InsideCidr': ?tunnel1InsideCidr,
      'tunnel1InsideIpv6Cidr': ?tunnel1InsideIpv6Cidr,
      'tunnel1LogOptions':
          ?pulumi.Input.mapOptionalInputValue<
            VpnConnectionTunnel1LogOptions,
            Map<String, dynamic>
          >(tunnel1LogOptions, (value) => value.toMap()),
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
      'tunnel2EnableTunnelLifecycleControl':
          ?tunnel2EnableTunnelLifecycleControl,
      'tunnel2IkeVersions': ?tunnel2IkeVersions,
      'tunnel2InsideCidr': ?tunnel2InsideCidr,
      'tunnel2InsideIpv6Cidr': ?tunnel2InsideIpv6Cidr,
      'tunnel2LogOptions':
          ?pulumi.Input.mapOptionalInputValue<
            VpnConnectionTunnel2LogOptions,
            Map<String, dynamic>
          >(tunnel2LogOptions, (value) => value.toMap()),
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
      customerGatewayId: pulumi.Input.fromValue(
        map['customerGatewayId'] as String,
      ),
      enableAcceleration: (() {
        final guardedValue = map['enableAcceleration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      localIpv4NetworkCidr: (() {
        final guardedValue = map['localIpv4NetworkCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localIpv6NetworkCidr: (() {
        final guardedValue = map['localIpv6NetworkCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outsideIpAddressType: (() {
        final guardedValue = map['outsideIpAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      presharedKeyStorage: (() {
        final guardedValue = map['presharedKeyStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteIpv4NetworkCidr: (() {
        final guardedValue = map['remoteIpv4NetworkCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteIpv6NetworkCidr: (() {
        final guardedValue = map['remoteIpv6NetworkCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      staticRoutesOnly: (() {
        final guardedValue = map['staticRoutesOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitGatewayId: (() {
        final guardedValue = map['transitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transportTransitGatewayAttachmentId: (() {
        final guardedValue = map['transportTransitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel1DpdTimeoutAction: (() {
        final guardedValue = map['tunnel1DpdTimeoutAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel1DpdTimeoutSeconds: (() {
        final guardedValue = map['tunnel1DpdTimeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1EnableTunnelLifecycleControl: (() {
        final guardedValue = map['tunnel1EnableTunnelLifecycleControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tunnel1IkeVersions: (() {
        final guardedValue = map['tunnel1IkeVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel1InsideCidr: (() {
        final guardedValue = map['tunnel1InsideCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel1InsideIpv6Cidr: (() {
        final guardedValue = map['tunnel1InsideIpv6Cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel1LogOptions: (() {
        final guardedValue = map['tunnel1LogOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnConnectionTunnel1LogOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tunnel1Phase1DhGroupNumbers: (() {
        final guardedValue = map['tunnel1Phase1DhGroupNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      tunnel1Phase1EncryptionAlgorithms: (() {
        final guardedValue = map['tunnel1Phase1EncryptionAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel1Phase1IntegrityAlgorithms: (() {
        final guardedValue = map['tunnel1Phase1IntegrityAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel1Phase1LifetimeSeconds: (() {
        final guardedValue = map['tunnel1Phase1LifetimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1Phase2DhGroupNumbers: (() {
        final guardedValue = map['tunnel1Phase2DhGroupNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      tunnel1Phase2EncryptionAlgorithms: (() {
        final guardedValue = map['tunnel1Phase2EncryptionAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel1Phase2IntegrityAlgorithms: (() {
        final guardedValue = map['tunnel1Phase2IntegrityAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel1Phase2LifetimeSeconds: (() {
        final guardedValue = map['tunnel1Phase2LifetimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1PresharedKey: (() {
        final guardedValue = map['tunnel1PresharedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel1RekeyFuzzPercentage: (() {
        final guardedValue = map['tunnel1RekeyFuzzPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1RekeyMarginTimeSeconds: (() {
        final guardedValue = map['tunnel1RekeyMarginTimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1ReplayWindowSize: (() {
        final guardedValue = map['tunnel1ReplayWindowSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel1StartupAction: (() {
        final guardedValue = map['tunnel1StartupAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel2DpdTimeoutAction: (() {
        final guardedValue = map['tunnel2DpdTimeoutAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel2DpdTimeoutSeconds: (() {
        final guardedValue = map['tunnel2DpdTimeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2EnableTunnelLifecycleControl: (() {
        final guardedValue = map['tunnel2EnableTunnelLifecycleControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tunnel2IkeVersions: (() {
        final guardedValue = map['tunnel2IkeVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel2InsideCidr: (() {
        final guardedValue = map['tunnel2InsideCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel2InsideIpv6Cidr: (() {
        final guardedValue = map['tunnel2InsideIpv6Cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel2LogOptions: (() {
        final guardedValue = map['tunnel2LogOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpnConnectionTunnel2LogOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tunnel2Phase1DhGroupNumbers: (() {
        final guardedValue = map['tunnel2Phase1DhGroupNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      tunnel2Phase1EncryptionAlgorithms: (() {
        final guardedValue = map['tunnel2Phase1EncryptionAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel2Phase1IntegrityAlgorithms: (() {
        final guardedValue = map['tunnel2Phase1IntegrityAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel2Phase1LifetimeSeconds: (() {
        final guardedValue = map['tunnel2Phase1LifetimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2Phase2DhGroupNumbers: (() {
        final guardedValue = map['tunnel2Phase2DhGroupNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      tunnel2Phase2EncryptionAlgorithms: (() {
        final guardedValue = map['tunnel2Phase2EncryptionAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel2Phase2IntegrityAlgorithms: (() {
        final guardedValue = map['tunnel2Phase2IntegrityAlgorithms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tunnel2Phase2LifetimeSeconds: (() {
        final guardedValue = map['tunnel2Phase2LifetimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2PresharedKey: (() {
        final guardedValue = map['tunnel2PresharedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnel2RekeyFuzzPercentage: (() {
        final guardedValue = map['tunnel2RekeyFuzzPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2RekeyMarginTimeSeconds: (() {
        final guardedValue = map['tunnel2RekeyMarginTimeSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2ReplayWindowSize: (() {
        final guardedValue = map['tunnel2ReplayWindowSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tunnel2StartupAction: (() {
        final guardedValue = map['tunnel2StartupAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelBandwidth: (() {
        final guardedValue = map['tunnelBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelInsideIpVersion: (() {
        final guardedValue = map['tunnelInsideIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpnConcentratorId: (() {
        final guardedValue = map['vpnConcentratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnGatewayId: (() {
        final guardedValue = map['vpnGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
