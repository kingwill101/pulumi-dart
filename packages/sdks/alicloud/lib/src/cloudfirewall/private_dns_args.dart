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
      accessInstanceName: (map['accessInstanceName'] as String).input(),
      domainNameLists: map['domainNameLists'] == null ? null : ((map['domainNameLists'] as List).cast<String>()).input(),
      firewallTypes: ((map['firewallTypes'] as List).cast<String>()).input(),
      ipProtocol: map['ipProtocol'] == null ? null : (map['ipProtocol'] as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      primaryDns: map['primaryDns'] == null ? null : (map['primaryDns'] as String).input(),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : (map['primaryVswitchId'] as String).input(),
      primaryVswitchIp: map['primaryVswitchIp'] == null ? null : (map['primaryVswitchIp'] as String).input(),
      privateDnsType: (map['privateDnsType'] as String).input(),
      regionNo: (map['regionNo'] as String).input(),
      standbyDns: map['standbyDns'] == null ? null : (map['standbyDns'] as String).input(),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : (map['standbyVswitchId'] as String).input(),
      standbyVswitchIp: map['standbyVswitchIp'] == null ? null : (map['standbyVswitchIp'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

