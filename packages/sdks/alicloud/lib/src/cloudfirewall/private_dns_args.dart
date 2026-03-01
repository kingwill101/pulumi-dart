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
    required pulumi.Output<String> accessInstanceName,
    pulumi.Output<List<String>>? domainNameLists,
    required pulumi.Output<List<String>> firewallTypes,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<int>? memberUid,
    pulumi.Output<int>? port,
    pulumi.Output<String>? primaryDns,
    pulumi.Output<String>? primaryVswitchId,
    pulumi.Output<String>? primaryVswitchIp,
    required pulumi.Output<String> privateDnsType,
    required pulumi.Output<String> regionNo,
    pulumi.Output<String>? standbyDns,
    pulumi.Output<String>? standbyVswitchId,
    pulumi.Output<String>? standbyVswitchIp,
    required pulumi.Output<String> vpcId,
  }) :
      accessInstanceName = pulumi.Input.asInput<String>(accessInstanceName),
      domainNameLists = pulumi.Input.asOptionalInput<List<String>>(domainNameLists),
      firewallTypes = pulumi.Input.asInput<List<String>>(firewallTypes),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      memberUid = pulumi.Input.asOptionalInput<int>(memberUid),
      port = pulumi.Input.asOptionalInput<int>(port),
      primaryDns = pulumi.Input.asOptionalInput<String>(primaryDns),
      primaryVswitchId = pulumi.Input.asOptionalInput<String>(primaryVswitchId),
      primaryVswitchIp = pulumi.Input.asOptionalInput<String>(primaryVswitchIp),
      privateDnsType = pulumi.Input.asInput<String>(privateDnsType),
      regionNo = pulumi.Input.asInput<String>(regionNo),
      standbyDns = pulumi.Input.asOptionalInput<String>(standbyDns),
      standbyVswitchId = pulumi.Input.asOptionalInput<String>(standbyVswitchId),
      standbyVswitchIp = pulumi.Input.asOptionalInput<String>(standbyVswitchIp),
      vpcId = pulumi.Input.asInput<String>(vpcId);

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
      accessInstanceName: pulumi.Output.create<String>(map['accessInstanceName'] as String),
      domainNameLists: map['domainNameLists'] == null ? null : pulumi.Output.create<List<String>>((map['domainNameLists'] as List).cast<String>()),
      firewallTypes: pulumi.Output.create<List<String>>((map['firewallTypes'] as List).cast<String>()),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<int>(map['memberUid'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      primaryDns: map['primaryDns'] == null ? null : pulumi.Output.create<String>(map['primaryDns'] as String),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchId'] as String),
      primaryVswitchIp: map['primaryVswitchIp'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchIp'] as String),
      privateDnsType: pulumi.Output.create<String>(map['privateDnsType'] as String),
      regionNo: pulumi.Output.create<String>(map['regionNo'] as String),
      standbyDns: map['standbyDns'] == null ? null : pulumi.Output.create<String>(map['standbyDns'] as String),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchId'] as String),
      standbyVswitchIp: map['standbyVswitchIp'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchIp'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

