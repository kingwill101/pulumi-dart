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
    this.clientIpPool,
    this.dryRun,
    this.effectImmediately,
    this.ikeConfigs,
    this.ipsecConfigs,
    this.ipsecServerName,
    this.localSubnet,
    this.psk,
    this.pskEnabled,
    this.vpnGatewayId,
  });

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
      clientIpPool: (() { final guardedValue = map['clientIpPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      effectImmediately: (() { final guardedValue = map['effectImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ikeConfigs: (() { final guardedValue = map['ikeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecServerIkeConfig>(guardedValue, (value) => IpsecServerIkeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipsecConfigs: (() { final guardedValue = map['ipsecConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecServerIpsecConfig>(guardedValue, (value) => IpsecServerIpsecConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipsecServerName: (() { final guardedValue = map['ipsecServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSubnet: (() { final guardedValue = map['localSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psk: (() { final guardedValue = map['psk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pskEnabled: (() { final guardedValue = map['pskEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

