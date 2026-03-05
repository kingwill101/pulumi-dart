// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_private_dns_private_dns_args_doc}
/// The set of arguments for PrivateDns.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_private_dns_private_dns_args_doc}
class PrivateDnsArgs {
  /// The name of Private DNS instance
  final pulumi.Input<String> accessInstanceName;
  /// Private DNS domain name list
  final pulumi.Input<List<String>>? domainNameLists;
  /// The type of firewall
  final pulumi.Input<List<String>> firewallTypes;
  /// IP protocol
  final pulumi.Input<String>? ipProtocol;
  /// The member Uid
  final pulumi.Input<int>? memberUid;
  /// The Port of Private DNS instance
  final pulumi.Input<int>? port;
  /// Primary DNS IP
  final pulumi.Input<String>? primaryDns;
  /// Primary zone Switch ID
  final pulumi.Input<String>? primaryVswitchId;
  /// Primary zone switch IP
  final pulumi.Input<String>? primaryVswitchIp;
  /// The type of Private DNS instance
  final pulumi.Input<String> privateDnsType;
  /// The region ID of Private DNS instance
  final pulumi.Input<String> regionNo;
  /// Standby DNS IP
  final pulumi.Input<String>? standbyDns;
  /// Standby zone switch ID
  final pulumi.Input<String>? standbyVswitchId;
  /// Standby zone switch IP address
  final pulumi.Input<String>? standbyVswitchIp;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [PrivateDnsArgs].
  /// [accessInstanceName] The name of Private DNS instance
  /// [domainNameLists] Private DNS domain name list
  /// [firewallTypes] The type of firewall
  /// [ipProtocol] IP protocol
  /// [memberUid] The member Uid
  /// [port] The Port of Private DNS instance
  /// [primaryDns] Primary DNS IP
  /// [primaryVswitchId] Primary zone Switch ID
  /// [primaryVswitchIp] Primary zone switch IP
  /// [privateDnsType] The type of Private DNS instance
  /// [regionNo] The region ID of Private DNS instance
  /// [standbyDns] Standby DNS IP
  /// [standbyVswitchId] Standby zone switch ID
  /// [standbyVswitchIp] Standby zone switch IP address
  /// [vpcId] The ID of the VPC.
  PrivateDnsArgs({
    required this.accessInstanceName,
    this.domainNameLists,
    required this.firewallTypes,
    this.ipProtocol,
    this.memberUid,
    this.port,
    this.primaryDns,
    this.primaryVswitchId,
    this.primaryVswitchIp,
    required this.privateDnsType,
    required this.regionNo,
    this.standbyDns,
    this.standbyVswitchId,
    this.standbyVswitchIp,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessInstanceName': accessInstanceName,
      'domainNameLists': ?domainNameLists,
      'firewallTypes': firewallTypes,
      'ipProtocol': ?ipProtocol,
      'memberUid': ?memberUid,
      'port': ?port,
      'primaryDns': ?primaryDns,
      'primaryVswitchId': ?primaryVswitchId,
      'primaryVswitchIp': ?primaryVswitchIp,
      'privateDnsType': privateDnsType,
      'regionNo': regionNo,
      'standbyDns': ?standbyDns,
      'standbyVswitchId': ?standbyVswitchId,
      'standbyVswitchIp': ?standbyVswitchIp,
      'vpcId': vpcId,
    };
  }

  factory PrivateDnsArgs.fromMap(Map<String, dynamic> map) {
    return PrivateDnsArgs(
      accessInstanceName: pulumi.Input.fromValue(map['accessInstanceName'] as String),
      domainNameLists: (() { final guardedValue = map['domainNameLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      firewallTypes: pulumi.Input.fromValue((map['firewallTypes'] as List).cast<String>()),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryDns: (() { final guardedValue = map['primaryDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryVswitchId: (() { final guardedValue = map['primaryVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryVswitchIp: (() { final guardedValue = map['primaryVswitchIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsType: pulumi.Input.fromValue(map['privateDnsType'] as String),
      regionNo: pulumi.Input.fromValue(map['regionNo'] as String),
      standbyDns: (() { final guardedValue = map['standbyDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyVswitchId: (() { final guardedValue = map['standbyVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyVswitchIp: (() { final guardedValue = map['standbyVswitchIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

