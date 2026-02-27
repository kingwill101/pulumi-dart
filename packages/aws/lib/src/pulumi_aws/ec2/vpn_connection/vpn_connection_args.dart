// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpn_connection_tunnel1_log_options/vpn_connection_tunnel1_log_options.dart';
import '../vpn_connection_tunnel2_log_options/vpn_connection_tunnel2_log_options.dart';

/// The set of arguments for VpnConnection.
class VpnConnectionArgs {
  /// The ID of the customer gateway.
  final Input<String> customerGatewayId;

  /// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
  final Input<bool>? enableAcceleration;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  final Input<String>? localIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  final Input<String>? localIpv6NetworkCidr;

  /// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are `PublicIpv4 | PrivateIpv4`
  final Input<String>? outsideIpAddressType;

  /// Storage mode for the pre-shared key (PSK). Valid values are `Standard` (stored in the Site-to-Site VPN service) or `SecretsManager` (stored in AWS Secrets Manager).
  final Input<String>? presharedKeyStorage;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IPv4 CIDR on the AWS side of the VPN connection.
  final Input<String>? remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the AWS side of the VPN connection.
  final Input<String>? remoteIpv6NetworkCidr;

  /// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
  final Input<bool>? staticRoutesOnly;

  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the EC2 Transit Gateway.
  final Input<String>? transitGatewayId;

  /// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
  final Input<String>? transportTransitGatewayAttachmentId;

  /// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  final Input<String>? tunnel1DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than `30`.
  final Input<int>? tunnel1DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the first VPN tunnel. Valid values are `true | false`.
  final Input<bool>? tunnel1EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the first VPN tunnel. Valid values are `ikev1 | ikev2`.
  final Input<List<String>>? tunnel1IkeVersions;

  /// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  final Input<String>? tunnel1InsideCidr;

  /// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  final Input<String>? tunnel1InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  final Input<VpnConnectionTunnel1LogOptions>? tunnel1LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final Input<List<int>>? tunnel1Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final Input<List<String>>? tunnel1Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final Input<List<String>>? tunnel1Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  final Input<int>? tunnel1Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final Input<List<int>>? tunnel1Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final Input<List<String>>? tunnel1Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final Input<List<String>>? tunnel1Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  final Input<int>? tunnel1Phase2LifetimeSeconds;

  /// The preshared key of the first VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  final Input<String>? tunnel1PresharedKey;

  /// The percentage of the rekey window for the first VPN tunnel (determined by `tunnel1_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  final Input<int>? tunnel1RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel1_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel1_phase2_lifetime_seconds`.
  final Input<int>? tunnel1RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between `64` and `2048`.
  final Input<int>? tunnel1ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  final Input<String>? tunnel1StartupAction;

  /// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are `clear | none | restart`.
  final Input<String>? tunnel2DpdTimeoutAction;

  /// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than `30`.
  final Input<int>? tunnel2DpdTimeoutSeconds;

  /// Turn on or off tunnel endpoint lifecycle control feature for the second VPN tunnel. Valid values are `true | false`.
  final Input<bool>? tunnel2EnableTunnelLifecycleControl;

  /// The IKE versions that are permitted for the second VPN tunnel. Valid values are `ikev1 | ikev2`.
  final Input<List<String>>? tunnel2IkeVersions;

  /// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
  final Input<String>? tunnel2InsideCidr;

  /// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
  final Input<String>? tunnel2InsideIpv6Cidr;

  /// Options for logging VPN tunnel activity. See Log Options below for more details.
  final Input<VpnConnectionTunnel2LogOptions>? tunnel2LogOptions;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are ` 2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final Input<List<int>>? tunnel2Phase1DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final Input<List<String>>? tunnel2Phase1EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final Input<List<String>>? tunnel2Phase1IntegrityAlgorithms;

  /// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `28800`.
  final Input<int>? tunnel2Phase1LifetimeSeconds;

  /// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24`.
  final Input<List<int>>? tunnel2Phase2DhGroupNumbers;

  /// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16`.
  final Input<List<String>>? tunnel2Phase2EncryptionAlgorithms;

  /// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are `SHA1 | SHA2-256 | SHA2-384 | SHA2-512`.
  final Input<List<String>>? tunnel2Phase2IntegrityAlgorithms;

  /// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between `900` and `3600`.
  final Input<int>? tunnel2Phase2LifetimeSeconds;

  /// The preshared key of the second VPN tunnel. The preshared key must be between 8 and 64 characters in length and cannot start with zero(0). Allowed characters are alphanumeric characters, periods(.) and underscores(_).
  final Input<String>? tunnel2PresharedKey;

  /// The percentage of the rekey window for the second VPN tunnel (determined by `tunnel2_rekey_margin_time_seconds`) during which the rekey time is randomly selected. Valid value is between `0` and `100`.
  final Input<int>? tunnel2RekeyFuzzPercentage;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `tunnel2_rekey_fuzz_percentage`. Valid value is between `60` and half of `tunnel2_phase2_lifetime_seconds`.
  final Input<int>? tunnel2RekeyMarginTimeSeconds;

  /// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between `64` and `2048`.
  final Input<int>? tunnel2ReplayWindowSize;

  /// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are `add | start`.
  final Input<String>? tunnel2StartupAction;

  /// Desired bandwidth specification for the VPN tunnel. Valid values are `standard | large`. `standard` supports up to 1.25 Gbps per tunnel, while `large` supports up to 5 Gbps per tunnel. Not supported when `vpn_gateway_id` is specified, or `enable_acceleration` is `true`.
  final Input<String>? tunnelBandwidth;

  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are `ipv4 | ipv6`. `ipv6` Supports only EC2 Transit Gateway.
  final Input<String>? tunnelInsideIpVersion;

  /// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
  final Input<String> type;

  /// ID of the VPN concentrator to associate with the VPN connection.
  final Input<String>? vpnConcentratorId;

  /// The ID of the Virtual Private Gateway.
  final Input<String>? vpnGatewayId;

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
    final map = <String, dynamic>{};
    map['customerGatewayId'] = customerGatewayId;
    final enableAccelerationValue = enableAcceleration;
    if (enableAccelerationValue != null) {
      map['enableAcceleration'] = enableAccelerationValue;
    }
    final localIpv4NetworkCidrValue = localIpv4NetworkCidr;
    if (localIpv4NetworkCidrValue != null) {
      map['localIpv4NetworkCidr'] = localIpv4NetworkCidrValue;
    }
    final localIpv6NetworkCidrValue = localIpv6NetworkCidr;
    if (localIpv6NetworkCidrValue != null) {
      map['localIpv6NetworkCidr'] = localIpv6NetworkCidrValue;
    }
    final outsideIpAddressTypeValue = outsideIpAddressType;
    if (outsideIpAddressTypeValue != null) {
      map['outsideIpAddressType'] = outsideIpAddressTypeValue;
    }
    final presharedKeyStorageValue = presharedKeyStorage;
    if (presharedKeyStorageValue != null) {
      map['presharedKeyStorage'] = presharedKeyStorageValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remoteIpv4NetworkCidrValue = remoteIpv4NetworkCidr;
    if (remoteIpv4NetworkCidrValue != null) {
      map['remoteIpv4NetworkCidr'] = remoteIpv4NetworkCidrValue;
    }
    final remoteIpv6NetworkCidrValue = remoteIpv6NetworkCidr;
    if (remoteIpv6NetworkCidrValue != null) {
      map['remoteIpv6NetworkCidr'] = remoteIpv6NetworkCidrValue;
    }
    final staticRoutesOnlyValue = staticRoutesOnly;
    if (staticRoutesOnlyValue != null) {
      map['staticRoutesOnly'] = staticRoutesOnlyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final transportTransitGatewayAttachmentIdValue =
        transportTransitGatewayAttachmentId;
    if (transportTransitGatewayAttachmentIdValue != null) {
      map['transportTransitGatewayAttachmentId'] =
          transportTransitGatewayAttachmentIdValue;
    }
    final tunnel1DpdTimeoutActionValue = tunnel1DpdTimeoutAction;
    if (tunnel1DpdTimeoutActionValue != null) {
      map['tunnel1DpdTimeoutAction'] = tunnel1DpdTimeoutActionValue;
    }
    final tunnel1DpdTimeoutSecondsValue = tunnel1DpdTimeoutSeconds;
    if (tunnel1DpdTimeoutSecondsValue != null) {
      map['tunnel1DpdTimeoutSeconds'] = tunnel1DpdTimeoutSecondsValue;
    }
    final tunnel1EnableTunnelLifecycleControlValue =
        tunnel1EnableTunnelLifecycleControl;
    if (tunnel1EnableTunnelLifecycleControlValue != null) {
      map['tunnel1EnableTunnelLifecycleControl'] =
          tunnel1EnableTunnelLifecycleControlValue;
    }
    final tunnel1IkeVersionsValue = tunnel1IkeVersions;
    if (tunnel1IkeVersionsValue != null) {
      map['tunnel1IkeVersions'] = tunnel1IkeVersionsValue;
    }
    final tunnel1InsideCidrValue = tunnel1InsideCidr;
    if (tunnel1InsideCidrValue != null) {
      map['tunnel1InsideCidr'] = tunnel1InsideCidrValue;
    }
    final tunnel1InsideIpv6CidrValue = tunnel1InsideIpv6Cidr;
    if (tunnel1InsideIpv6CidrValue != null) {
      map['tunnel1InsideIpv6Cidr'] = tunnel1InsideIpv6CidrValue;
    }
    final tunnel1LogOptionsValue = tunnel1LogOptions;
    if (tunnel1LogOptionsValue != null) {
      map['tunnel1LogOptions'] = Input.mapOptionalInputValue<
              VpnConnectionTunnel1LogOptions, Map<String, dynamic>>(
          tunnel1LogOptionsValue, (value) => value.toMap());
    }
    final tunnel1Phase1DhGroupNumbersValue = tunnel1Phase1DhGroupNumbers;
    if (tunnel1Phase1DhGroupNumbersValue != null) {
      map['tunnel1Phase1DhGroupNumbers'] = tunnel1Phase1DhGroupNumbersValue;
    }
    final tunnel1Phase1EncryptionAlgorithmsValue =
        tunnel1Phase1EncryptionAlgorithms;
    if (tunnel1Phase1EncryptionAlgorithmsValue != null) {
      map['tunnel1Phase1EncryptionAlgorithms'] =
          tunnel1Phase1EncryptionAlgorithmsValue;
    }
    final tunnel1Phase1IntegrityAlgorithmsValue =
        tunnel1Phase1IntegrityAlgorithms;
    if (tunnel1Phase1IntegrityAlgorithmsValue != null) {
      map['tunnel1Phase1IntegrityAlgorithms'] =
          tunnel1Phase1IntegrityAlgorithmsValue;
    }
    final tunnel1Phase1LifetimeSecondsValue = tunnel1Phase1LifetimeSeconds;
    if (tunnel1Phase1LifetimeSecondsValue != null) {
      map['tunnel1Phase1LifetimeSeconds'] = tunnel1Phase1LifetimeSecondsValue;
    }
    final tunnel1Phase2DhGroupNumbersValue = tunnel1Phase2DhGroupNumbers;
    if (tunnel1Phase2DhGroupNumbersValue != null) {
      map['tunnel1Phase2DhGroupNumbers'] = tunnel1Phase2DhGroupNumbersValue;
    }
    final tunnel1Phase2EncryptionAlgorithmsValue =
        tunnel1Phase2EncryptionAlgorithms;
    if (tunnel1Phase2EncryptionAlgorithmsValue != null) {
      map['tunnel1Phase2EncryptionAlgorithms'] =
          tunnel1Phase2EncryptionAlgorithmsValue;
    }
    final tunnel1Phase2IntegrityAlgorithmsValue =
        tunnel1Phase2IntegrityAlgorithms;
    if (tunnel1Phase2IntegrityAlgorithmsValue != null) {
      map['tunnel1Phase2IntegrityAlgorithms'] =
          tunnel1Phase2IntegrityAlgorithmsValue;
    }
    final tunnel1Phase2LifetimeSecondsValue = tunnel1Phase2LifetimeSeconds;
    if (tunnel1Phase2LifetimeSecondsValue != null) {
      map['tunnel1Phase2LifetimeSeconds'] = tunnel1Phase2LifetimeSecondsValue;
    }
    final tunnel1PresharedKeyValue = tunnel1PresharedKey;
    if (tunnel1PresharedKeyValue != null) {
      map['tunnel1PresharedKey'] = tunnel1PresharedKeyValue;
    }
    final tunnel1RekeyFuzzPercentageValue = tunnel1RekeyFuzzPercentage;
    if (tunnel1RekeyFuzzPercentageValue != null) {
      map['tunnel1RekeyFuzzPercentage'] = tunnel1RekeyFuzzPercentageValue;
    }
    final tunnel1RekeyMarginTimeSecondsValue = tunnel1RekeyMarginTimeSeconds;
    if (tunnel1RekeyMarginTimeSecondsValue != null) {
      map['tunnel1RekeyMarginTimeSeconds'] = tunnel1RekeyMarginTimeSecondsValue;
    }
    final tunnel1ReplayWindowSizeValue = tunnel1ReplayWindowSize;
    if (tunnel1ReplayWindowSizeValue != null) {
      map['tunnel1ReplayWindowSize'] = tunnel1ReplayWindowSizeValue;
    }
    final tunnel1StartupActionValue = tunnel1StartupAction;
    if (tunnel1StartupActionValue != null) {
      map['tunnel1StartupAction'] = tunnel1StartupActionValue;
    }
    final tunnel2DpdTimeoutActionValue = tunnel2DpdTimeoutAction;
    if (tunnel2DpdTimeoutActionValue != null) {
      map['tunnel2DpdTimeoutAction'] = tunnel2DpdTimeoutActionValue;
    }
    final tunnel2DpdTimeoutSecondsValue = tunnel2DpdTimeoutSeconds;
    if (tunnel2DpdTimeoutSecondsValue != null) {
      map['tunnel2DpdTimeoutSeconds'] = tunnel2DpdTimeoutSecondsValue;
    }
    final tunnel2EnableTunnelLifecycleControlValue =
        tunnel2EnableTunnelLifecycleControl;
    if (tunnel2EnableTunnelLifecycleControlValue != null) {
      map['tunnel2EnableTunnelLifecycleControl'] =
          tunnel2EnableTunnelLifecycleControlValue;
    }
    final tunnel2IkeVersionsValue = tunnel2IkeVersions;
    if (tunnel2IkeVersionsValue != null) {
      map['tunnel2IkeVersions'] = tunnel2IkeVersionsValue;
    }
    final tunnel2InsideCidrValue = tunnel2InsideCidr;
    if (tunnel2InsideCidrValue != null) {
      map['tunnel2InsideCidr'] = tunnel2InsideCidrValue;
    }
    final tunnel2InsideIpv6CidrValue = tunnel2InsideIpv6Cidr;
    if (tunnel2InsideIpv6CidrValue != null) {
      map['tunnel2InsideIpv6Cidr'] = tunnel2InsideIpv6CidrValue;
    }
    final tunnel2LogOptionsValue = tunnel2LogOptions;
    if (tunnel2LogOptionsValue != null) {
      map['tunnel2LogOptions'] = Input.mapOptionalInputValue<
              VpnConnectionTunnel2LogOptions, Map<String, dynamic>>(
          tunnel2LogOptionsValue, (value) => value.toMap());
    }
    final tunnel2Phase1DhGroupNumbersValue = tunnel2Phase1DhGroupNumbers;
    if (tunnel2Phase1DhGroupNumbersValue != null) {
      map['tunnel2Phase1DhGroupNumbers'] = tunnel2Phase1DhGroupNumbersValue;
    }
    final tunnel2Phase1EncryptionAlgorithmsValue =
        tunnel2Phase1EncryptionAlgorithms;
    if (tunnel2Phase1EncryptionAlgorithmsValue != null) {
      map['tunnel2Phase1EncryptionAlgorithms'] =
          tunnel2Phase1EncryptionAlgorithmsValue;
    }
    final tunnel2Phase1IntegrityAlgorithmsValue =
        tunnel2Phase1IntegrityAlgorithms;
    if (tunnel2Phase1IntegrityAlgorithmsValue != null) {
      map['tunnel2Phase1IntegrityAlgorithms'] =
          tunnel2Phase1IntegrityAlgorithmsValue;
    }
    final tunnel2Phase1LifetimeSecondsValue = tunnel2Phase1LifetimeSeconds;
    if (tunnel2Phase1LifetimeSecondsValue != null) {
      map['tunnel2Phase1LifetimeSeconds'] = tunnel2Phase1LifetimeSecondsValue;
    }
    final tunnel2Phase2DhGroupNumbersValue = tunnel2Phase2DhGroupNumbers;
    if (tunnel2Phase2DhGroupNumbersValue != null) {
      map['tunnel2Phase2DhGroupNumbers'] = tunnel2Phase2DhGroupNumbersValue;
    }
    final tunnel2Phase2EncryptionAlgorithmsValue =
        tunnel2Phase2EncryptionAlgorithms;
    if (tunnel2Phase2EncryptionAlgorithmsValue != null) {
      map['tunnel2Phase2EncryptionAlgorithms'] =
          tunnel2Phase2EncryptionAlgorithmsValue;
    }
    final tunnel2Phase2IntegrityAlgorithmsValue =
        tunnel2Phase2IntegrityAlgorithms;
    if (tunnel2Phase2IntegrityAlgorithmsValue != null) {
      map['tunnel2Phase2IntegrityAlgorithms'] =
          tunnel2Phase2IntegrityAlgorithmsValue;
    }
    final tunnel2Phase2LifetimeSecondsValue = tunnel2Phase2LifetimeSeconds;
    if (tunnel2Phase2LifetimeSecondsValue != null) {
      map['tunnel2Phase2LifetimeSeconds'] = tunnel2Phase2LifetimeSecondsValue;
    }
    final tunnel2PresharedKeyValue = tunnel2PresharedKey;
    if (tunnel2PresharedKeyValue != null) {
      map['tunnel2PresharedKey'] = tunnel2PresharedKeyValue;
    }
    final tunnel2RekeyFuzzPercentageValue = tunnel2RekeyFuzzPercentage;
    if (tunnel2RekeyFuzzPercentageValue != null) {
      map['tunnel2RekeyFuzzPercentage'] = tunnel2RekeyFuzzPercentageValue;
    }
    final tunnel2RekeyMarginTimeSecondsValue = tunnel2RekeyMarginTimeSeconds;
    if (tunnel2RekeyMarginTimeSecondsValue != null) {
      map['tunnel2RekeyMarginTimeSeconds'] = tunnel2RekeyMarginTimeSecondsValue;
    }
    final tunnel2ReplayWindowSizeValue = tunnel2ReplayWindowSize;
    if (tunnel2ReplayWindowSizeValue != null) {
      map['tunnel2ReplayWindowSize'] = tunnel2ReplayWindowSizeValue;
    }
    final tunnel2StartupActionValue = tunnel2StartupAction;
    if (tunnel2StartupActionValue != null) {
      map['tunnel2StartupAction'] = tunnel2StartupActionValue;
    }
    final tunnelBandwidthValue = tunnelBandwidth;
    if (tunnelBandwidthValue != null) {
      map['tunnelBandwidth'] = tunnelBandwidthValue;
    }
    final tunnelInsideIpVersionValue = tunnelInsideIpVersion;
    if (tunnelInsideIpVersionValue != null) {
      map['tunnelInsideIpVersion'] = tunnelInsideIpVersionValue;
    }
    map['type'] = type;
    final vpnConcentratorIdValue = vpnConcentratorId;
    if (vpnConcentratorIdValue != null) {
      map['vpnConcentratorId'] = vpnConcentratorIdValue;
    }
    final vpnGatewayIdValue = vpnGatewayId;
    if (vpnGatewayIdValue != null) {
      map['vpnGatewayId'] = vpnGatewayIdValue;
    }
    return map;
  }

  factory VpnConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionArgs(
      customerGatewayId: Input.asInput<String>(map['customerGatewayId']),
      enableAcceleration:
          Input.asOptionalInput<bool>(map['enableAcceleration']),
      localIpv4NetworkCidr:
          Input.asOptionalInput<String>(map['localIpv4NetworkCidr']),
      localIpv6NetworkCidr:
          Input.asOptionalInput<String>(map['localIpv6NetworkCidr']),
      outsideIpAddressType:
          Input.asOptionalInput<String>(map['outsideIpAddressType']),
      presharedKeyStorage:
          Input.asOptionalInput<String>(map['presharedKeyStorage']),
      region: Input.asOptionalInput<String>(map['region']),
      remoteIpv4NetworkCidr:
          Input.asOptionalInput<String>(map['remoteIpv4NetworkCidr']),
      remoteIpv6NetworkCidr:
          Input.asOptionalInput<String>(map['remoteIpv6NetworkCidr']),
      staticRoutesOnly: Input.asOptionalInput<bool>(map['staticRoutesOnly']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      transportTransitGatewayAttachmentId: Input.asOptionalInput<String>(
          map['transportTransitGatewayAttachmentId']),
      tunnel1DpdTimeoutAction:
          Input.asOptionalInput<String>(map['tunnel1DpdTimeoutAction']),
      tunnel1DpdTimeoutSeconds:
          Input.asOptionalInput<int>(map['tunnel1DpdTimeoutSeconds']),
      tunnel1EnableTunnelLifecycleControl: Input.asOptionalInput<bool>(
          map['tunnel1EnableTunnelLifecycleControl']),
      tunnel1IkeVersions:
          Input.asOptionalInput<List<String>>(map['tunnel1IkeVersions']),
      tunnel1InsideCidr:
          Input.asOptionalInput<String>(map['tunnel1InsideCidr']),
      tunnel1InsideIpv6Cidr:
          Input.asOptionalInput<String>(map['tunnel1InsideIpv6Cidr']),
      tunnel1LogOptions: Input.asOptionalInput<VpnConnectionTunnel1LogOptions>(
          map['tunnel1LogOptions']),
      tunnel1Phase1DhGroupNumbers:
          Input.asOptionalInput<List<int>>(map['tunnel1Phase1DhGroupNumbers']),
      tunnel1Phase1EncryptionAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel1Phase1EncryptionAlgorithms']),
      tunnel1Phase1IntegrityAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel1Phase1IntegrityAlgorithms']),
      tunnel1Phase1LifetimeSeconds:
          Input.asOptionalInput<int>(map['tunnel1Phase1LifetimeSeconds']),
      tunnel1Phase2DhGroupNumbers:
          Input.asOptionalInput<List<int>>(map['tunnel1Phase2DhGroupNumbers']),
      tunnel1Phase2EncryptionAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel1Phase2EncryptionAlgorithms']),
      tunnel1Phase2IntegrityAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel1Phase2IntegrityAlgorithms']),
      tunnel1Phase2LifetimeSeconds:
          Input.asOptionalInput<int>(map['tunnel1Phase2LifetimeSeconds']),
      tunnel1PresharedKey:
          Input.asOptionalInput<String>(map['tunnel1PresharedKey']),
      tunnel1RekeyFuzzPercentage:
          Input.asOptionalInput<int>(map['tunnel1RekeyFuzzPercentage']),
      tunnel1RekeyMarginTimeSeconds:
          Input.asOptionalInput<int>(map['tunnel1RekeyMarginTimeSeconds']),
      tunnel1ReplayWindowSize:
          Input.asOptionalInput<int>(map['tunnel1ReplayWindowSize']),
      tunnel1StartupAction:
          Input.asOptionalInput<String>(map['tunnel1StartupAction']),
      tunnel2DpdTimeoutAction:
          Input.asOptionalInput<String>(map['tunnel2DpdTimeoutAction']),
      tunnel2DpdTimeoutSeconds:
          Input.asOptionalInput<int>(map['tunnel2DpdTimeoutSeconds']),
      tunnel2EnableTunnelLifecycleControl: Input.asOptionalInput<bool>(
          map['tunnel2EnableTunnelLifecycleControl']),
      tunnel2IkeVersions:
          Input.asOptionalInput<List<String>>(map['tunnel2IkeVersions']),
      tunnel2InsideCidr:
          Input.asOptionalInput<String>(map['tunnel2InsideCidr']),
      tunnel2InsideIpv6Cidr:
          Input.asOptionalInput<String>(map['tunnel2InsideIpv6Cidr']),
      tunnel2LogOptions: Input.asOptionalInput<VpnConnectionTunnel2LogOptions>(
          map['tunnel2LogOptions']),
      tunnel2Phase1DhGroupNumbers:
          Input.asOptionalInput<List<int>>(map['tunnel2Phase1DhGroupNumbers']),
      tunnel2Phase1EncryptionAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel2Phase1EncryptionAlgorithms']),
      tunnel2Phase1IntegrityAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel2Phase1IntegrityAlgorithms']),
      tunnel2Phase1LifetimeSeconds:
          Input.asOptionalInput<int>(map['tunnel2Phase1LifetimeSeconds']),
      tunnel2Phase2DhGroupNumbers:
          Input.asOptionalInput<List<int>>(map['tunnel2Phase2DhGroupNumbers']),
      tunnel2Phase2EncryptionAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel2Phase2EncryptionAlgorithms']),
      tunnel2Phase2IntegrityAlgorithms: Input.asOptionalInput<List<String>>(
          map['tunnel2Phase2IntegrityAlgorithms']),
      tunnel2Phase2LifetimeSeconds:
          Input.asOptionalInput<int>(map['tunnel2Phase2LifetimeSeconds']),
      tunnel2PresharedKey:
          Input.asOptionalInput<String>(map['tunnel2PresharedKey']),
      tunnel2RekeyFuzzPercentage:
          Input.asOptionalInput<int>(map['tunnel2RekeyFuzzPercentage']),
      tunnel2RekeyMarginTimeSeconds:
          Input.asOptionalInput<int>(map['tunnel2RekeyMarginTimeSeconds']),
      tunnel2ReplayWindowSize:
          Input.asOptionalInput<int>(map['tunnel2ReplayWindowSize']),
      tunnel2StartupAction:
          Input.asOptionalInput<String>(map['tunnel2StartupAction']),
      tunnelBandwidth: Input.asOptionalInput<String>(map['tunnelBandwidth']),
      tunnelInsideIpVersion:
          Input.asOptionalInput<String>(map['tunnelInsideIpVersion']),
      type: Input.asInput<String>(map['type']),
      vpnConcentratorId:
          Input.asOptionalInput<String>(map['vpnConcentratorId']),
      vpnGatewayId: Input.asOptionalInput<String>(map['vpnGatewayId']),
    );
  }
}
