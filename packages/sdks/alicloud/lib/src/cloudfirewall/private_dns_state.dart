// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateDns resources.
class PrivateDnsState {
  /// The id of Private DNS instance
  final pulumi.Input<String>? accessInstanceId;
  /// The name of Private DNS instance
  final pulumi.Input<String>? accessInstanceName;
  /// Private DNS domain name list
  final pulumi.Input<List<String>>? domainNameLists;
  /// The type of firewall
  final pulumi.Input<List<String>>? firewallTypes;
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
  final pulumi.Input<String>? privateDnsType;
  /// The region ID of Private DNS instance
  final pulumi.Input<String>? regionNo;
  /// Standby DNS IP
  final pulumi.Input<String>? standbyDns;
  /// Standby zone switch ID
  final pulumi.Input<String>? standbyVswitchId;
  /// Standby zone switch IP address
  final pulumi.Input<String>? standbyVswitchIp;
  /// status
  final pulumi.Input<String>? status;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [PrivateDnsState].
  /// [accessInstanceId] The id of Private DNS instance
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
  /// [status] status
  /// [vpcId] The ID of the VPC.
  PrivateDnsState({
    pulumi.Output<String>? accessInstanceId,
    pulumi.Output<String>? accessInstanceName,
    pulumi.Output<List<String>>? domainNameLists,
    pulumi.Output<List<String>>? firewallTypes,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<int>? memberUid,
    pulumi.Output<int>? port,
    pulumi.Output<String>? primaryDns,
    pulumi.Output<String>? primaryVswitchId,
    pulumi.Output<String>? primaryVswitchIp,
    pulumi.Output<String>? privateDnsType,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? standbyDns,
    pulumi.Output<String>? standbyVswitchId,
    pulumi.Output<String>? standbyVswitchIp,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
  }) :
      accessInstanceId = pulumi.Input.asOptionalInput<String>(accessInstanceId),
      accessInstanceName = pulumi.Input.asOptionalInput<String>(accessInstanceName),
      domainNameLists = pulumi.Input.asOptionalInput<List<String>>(domainNameLists),
      firewallTypes = pulumi.Input.asOptionalInput<List<String>>(firewallTypes),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      memberUid = pulumi.Input.asOptionalInput<int>(memberUid),
      port = pulumi.Input.asOptionalInput<int>(port),
      primaryDns = pulumi.Input.asOptionalInput<String>(primaryDns),
      primaryVswitchId = pulumi.Input.asOptionalInput<String>(primaryVswitchId),
      primaryVswitchIp = pulumi.Input.asOptionalInput<String>(primaryVswitchIp),
      privateDnsType = pulumi.Input.asOptionalInput<String>(privateDnsType),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      standbyDns = pulumi.Input.asOptionalInput<String>(standbyDns),
      standbyVswitchId = pulumi.Input.asOptionalInput<String>(standbyVswitchId),
      standbyVswitchIp = pulumi.Input.asOptionalInput<String>(standbyVswitchIp),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessInstanceId': ?accessInstanceId,
      'accessInstanceName': ?accessInstanceName,
      'domainNameLists': ?domainNameLists,
      'firewallTypes': ?firewallTypes,
      'ipProtocol': ?ipProtocol,
      'memberUid': ?memberUid,
      'port': ?port,
      'primaryDns': ?primaryDns,
      'primaryVswitchId': ?primaryVswitchId,
      'primaryVswitchIp': ?primaryVswitchIp,
      'privateDnsType': ?privateDnsType,
      'regionNo': ?regionNo,
      'standbyDns': ?standbyDns,
      'standbyVswitchId': ?standbyVswitchId,
      'standbyVswitchIp': ?standbyVswitchIp,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory PrivateDnsState.fromMap(Map<String, dynamic> map) {
    return PrivateDnsState(
      accessInstanceId: map['accessInstanceId'] == null ? null : pulumi.Output.create<String>(map['accessInstanceId'] as String),
      accessInstanceName: map['accessInstanceName'] == null ? null : pulumi.Output.create<String>(map['accessInstanceName'] as String),
      domainNameLists: map['domainNameLists'] == null ? null : pulumi.Output.create<List<String>>((map['domainNameLists'] as List).cast<String>()),
      firewallTypes: map['firewallTypes'] == null ? null : pulumi.Output.create<List<String>>((map['firewallTypes'] as List).cast<String>()),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<int>(map['memberUid'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      primaryDns: map['primaryDns'] == null ? null : pulumi.Output.create<String>(map['primaryDns'] as String),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchId'] as String),
      primaryVswitchIp: map['primaryVswitchIp'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchIp'] as String),
      privateDnsType: map['privateDnsType'] == null ? null : pulumi.Output.create<String>(map['privateDnsType'] as String),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      standbyDns: map['standbyDns'] == null ? null : pulumi.Output.create<String>(map['standbyDns'] as String),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchId'] as String),
      standbyVswitchIp: map['standbyVswitchIp'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchIp'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

