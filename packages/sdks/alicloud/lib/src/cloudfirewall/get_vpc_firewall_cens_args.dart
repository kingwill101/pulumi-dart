// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_vpc_firewall_cens_get_vpc_firewall_cens_args_doc}
/// Arguments for getVpcFirewallCens.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_vpc_firewall_cens_get_vpc_firewall_cens_args_doc}
class GetVpcFirewallCensArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// A list of Vpc Firewall Cen IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language type of the requested and received messages. Value:-**zh** (default): Chinese.-**en**: English.
  final pulumi.Input<String>? lang;
  /// The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// The ID of the VPC instance that created the VPC firewall.
  final pulumi.Input<String>? networkInstanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// Firewall switch status
  final pulumi.Input<String>? status;
  /// VPC firewall ID
  final pulumi.Input<String>? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallName;

  /// Creates a new [GetVpcFirewallCensArgs].
  /// [cenId] The ID of the CEN instance.
  /// [ids] A list of Vpc Firewall Cen IDs.
  /// [lang] The language type of the requested and received messages. Value:-**zh** (default): Chinese.-**en**: English.
  /// [memberUid] The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  /// [networkInstanceId] The ID of the VPC instance that created the VPC firewall.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Firewall switch status
  /// [vpcFirewallId] VPC firewall ID
  /// [vpcFirewallName] The name of the VPC firewall instance.
  GetVpcFirewallCensArgs({
    this.cenId,
    this.ids,
    this.lang,
    this.memberUid,
    this.networkInstanceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    this.vpcFirewallId,
    this.vpcFirewallName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'ids': ?ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'networkInstanceId': ?networkInstanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'vpcFirewallId': ?vpcFirewallId,
      'vpcFirewallName': ?vpcFirewallName,
    };
  }

  factory GetVpcFirewallCensArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensArgs(
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as String).input(),
      networkInstanceId: map['networkInstanceId'] == null ? null : (map['networkInstanceId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : (map['vpcFirewallId']! as String).input(),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : (map['vpcFirewallName']! as String).input(),
    );
  }
}

