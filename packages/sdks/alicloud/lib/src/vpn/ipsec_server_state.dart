// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_server_ike_config.dart';
import 'ipsec_server_ipsec_config.dart';

/// Input properties used for looking up and filtering IpsecServer resources.
class IpsecServerState {
  /// The client CIDR block. It refers to the CIDR block that is allocated to the virtual interface of the client.
  final pulumi.Input<String>? clientIpPool;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether you want the configuration to immediately take effect.
  final pulumi.Input<bool>? effectImmediately;
  /// The configuration of Phase 1 negotiations. See `ike_config` below.
  final pulumi.Input<List<IpsecServerIkeConfig>>? ikeConfigs;
  /// The configuration of Phase 2 negotiations. See `ipsec_config` below.
  final pulumi.Input<List<IpsecServerIpsecConfig>>? ipsecConfigs;
  /// The name of the IPsec server. The name must be `2` to `128` characters in length, and can contain digits, hyphens (-), and underscores (_). It must start with a letter.
  final pulumi.Input<String>? ipsecServerName;
  /// The local CIDR block. It refers to the CIDR block of the virtual private cloud (VPC) that is used to connect with the client. Separate multiple CIDR blocks with commas (,). Example: `192.168.1.0/24,192.168.2.0/24`.
  final pulumi.Input<String>? localSubnet;
  /// The pre-shared key. The pre-shared key is used to authenticate the VPN gateway and the client. By default, the system generates a random string that is 16 bits in length. You can also specify the pre-shared key. It can contain at most 100 characters.
  final pulumi.Input<String>? psk;
  /// Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  final pulumi.Input<bool>? pskEnabled;
  /// The ID of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [IpsecServerState].
  /// [clientIpPool] The client CIDR block. It refers to the CIDR block that is allocated to the virtual interface of the client.
  /// [dryRun] The dry run.
  /// [effectImmediately] Specifies whether you want the configuration to immediately take effect.
  /// [ikeConfigs] The configuration of Phase 1 negotiations. See `ike_config` below.
  /// [ipsecConfigs] The configuration of Phase 2 negotiations. See `ipsec_config` below.
  /// [ipsecServerName] The name of the IPsec server. The name must be `2` to `128` characters in length, and can contain digits, hyphens (-), and underscores (_). It must start with a letter.
  /// [localSubnet] The local CIDR block. It refers to the CIDR block of the virtual private cloud (VPC) that is used to connect with the client. Separate multiple CIDR blocks with commas (,). Example: `192.168.1.0/24,192.168.2.0/24`.
  /// [psk] The pre-shared key. The pre-shared key is used to authenticate the VPN gateway and the client. By default, the system generates a random string that is 16 bits in length. You can also specify the pre-shared key. It can contain at most 100 characters.
  /// [pskEnabled] Whether to enable the pre-shared key authentication method. The value is only `true`, which indicates that the pre-shared key authentication method is enabled.
  /// [vpnGatewayId] The ID of the VPN gateway.
  IpsecServerState({
    pulumi.Output<String>? clientIpPool,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? effectImmediately,
    pulumi.Output<List<IpsecServerIkeConfig>>? ikeConfigs,
    pulumi.Output<List<IpsecServerIpsecConfig>>? ipsecConfigs,
    pulumi.Output<String>? ipsecServerName,
    pulumi.Output<String>? localSubnet,
    pulumi.Output<String>? psk,
    pulumi.Output<bool>? pskEnabled,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      clientIpPool = pulumi.Input.asOptionalInput<String>(clientIpPool),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      effectImmediately = pulumi.Input.asOptionalInput<bool>(effectImmediately),
      ikeConfigs = pulumi.Input.asOptionalInput<List<IpsecServerIkeConfig>>(ikeConfigs),
      ipsecConfigs = pulumi.Input.asOptionalInput<List<IpsecServerIpsecConfig>>(ipsecConfigs),
      ipsecServerName = pulumi.Input.asOptionalInput<String>(ipsecServerName),
      localSubnet = pulumi.Input.asOptionalInput<String>(localSubnet),
      psk = pulumi.Input.asOptionalInput<String>(psk),
      pskEnabled = pulumi.Input.asOptionalInput<bool>(pskEnabled),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpPool': ?clientIpPool,
      'dryRun': ?dryRun,
      'effectImmediately': ?effectImmediately,
      'ikeConfigs': ?pulumi.Input.mapOptionalInputValue<List<IpsecServerIkeConfig>, List<Map<String, dynamic>>>(ikeConfigs, (value) => pulumi.Input.encodeList<IpsecServerIkeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecConfigs': ?pulumi.Input.mapOptionalInputValue<List<IpsecServerIpsecConfig>, List<Map<String, dynamic>>>(ipsecConfigs, (value) => pulumi.Input.encodeList<IpsecServerIpsecConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecServerName': ?ipsecServerName,
      'localSubnet': ?localSubnet,
      'psk': ?psk,
      'pskEnabled': ?pskEnabled,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory IpsecServerState.fromMap(Map<String, dynamic> map) {
    return IpsecServerState(
      clientIpPool: map['clientIpPool'] == null ? null : pulumi.Output.create<String>(map['clientIpPool'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      effectImmediately: map['effectImmediately'] == null ? null : pulumi.Output.create<bool>(map['effectImmediately'] as bool),
      ikeConfigs: map['ikeConfigs'] == null ? null : pulumi.Output.create<List<IpsecServerIkeConfig>>(pulumi.Input.decodeList<IpsecServerIkeConfig>(map['ikeConfigs'], (value) => IpsecServerIkeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipsecConfigs: map['ipsecConfigs'] == null ? null : pulumi.Output.create<List<IpsecServerIpsecConfig>>(pulumi.Input.decodeList<IpsecServerIpsecConfig>(map['ipsecConfigs'], (value) => IpsecServerIpsecConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipsecServerName: map['ipsecServerName'] == null ? null : pulumi.Output.create<String>(map['ipsecServerName'] as String),
      localSubnet: map['localSubnet'] == null ? null : pulumi.Output.create<String>(map['localSubnet'] as String),
      psk: map['psk'] == null ? null : pulumi.Output.create<String>(map['psk'] as String),
      pskEnabled: map['pskEnabled'] == null ? null : pulumi.Output.create<bool>(map['pskEnabled'] as bool),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}

