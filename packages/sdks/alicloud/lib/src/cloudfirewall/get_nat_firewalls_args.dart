// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_nat_firewalls_get_nat_firewalls_args_doc}
/// Arguments for getNatFirewalls.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_nat_firewalls_get_nat_firewalls_args_doc}
class GetNatFirewallsArgs {
  /// A list of Nat Firewall IDs.
  final pulumi.Input<List<String>>? ids;
  /// Lang
  final pulumi.Input<String>? lang;
  /// Member Account ID
  final pulumi.Input<int>? memberUid;
  /// NAT gateway ID
  final pulumi.Input<String>? natGatewayId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Page No
  final pulumi.Input<int>? pageNumber;
  /// Page Size
  final pulumi.Input<int>? pageSize;
  /// NAT firewall ID
  final pulumi.Input<String>? proxyId;
  /// NAT firewall name
  final pulumi.Input<String>? proxyName;
  /// Region
  final pulumi.Input<String>? regionNo;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The ID of the VPC instance.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNatFirewallsArgs].
  /// [ids] A list of Nat Firewall IDs.
  /// [lang] Lang
  /// [memberUid] Member Account ID
  /// [natGatewayId] NAT gateway ID
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Page No
  /// [pageSize] Page Size
  /// [proxyId] NAT firewall ID
  /// [proxyName] NAT firewall name
  /// [regionNo] Region
  /// [status] The status of the resource
  /// [vpcId] The ID of the VPC instance.
  const GetNatFirewallsArgs({
    this.ids,
    this.lang,
    this.memberUid,
    this.natGatewayId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.proxyId,
    this.proxyName,
    this.regionNo,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'natGatewayId': ?natGatewayId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'proxyId': ?proxyId,
      'proxyName': ?proxyName,
      'regionNo': ?regionNo,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetNatFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return GetNatFirewallsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyName: (() { final guardedValue = map['proxyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

