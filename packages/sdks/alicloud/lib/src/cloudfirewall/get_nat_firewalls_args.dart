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
  GetNatFirewallsArgs({
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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as int).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      proxyId: map['proxyId'] == null ? null : (map['proxyId']! as String).input(),
      proxyName: map['proxyName'] == null ? null : (map['proxyName']! as String).input(),
      regionNo: map['regionNo'] == null ? null : (map['regionNo']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

