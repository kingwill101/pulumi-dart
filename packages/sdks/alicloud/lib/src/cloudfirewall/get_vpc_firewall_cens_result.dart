// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_cens_cen.dart';

/// Result data returned by getVpcFirewallCens.
class GetVpcFirewallCensResult {
  /// The ID of the CEN instance.
  final String? cenId;
  /// A list of Vpc Firewall Cen Entries. Each element contains the following attributes:
  final List<GetVpcFirewallCensCen> cens;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Firewall Cen IDs.
  final List<String> ids;
  final String? lang;
  /// The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  final String? memberUid;
  /// The ID of the VPC instance that created the VPC firewall.
  final String? networkInstanceId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Firewall switch status
  final String? status;
  /// VPC firewall ID
  final String? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final String? vpcFirewallName;

  /// Creates a new [GetVpcFirewallCensResult].
  /// [cenId] The ID of the CEN instance.
  /// [cens] A list of Vpc Firewall Cen Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Firewall Cen IDs.
  /// [lang] Optional.
  /// [memberUid] The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  /// [networkInstanceId] The ID of the VPC instance that created the VPC firewall.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Firewall switch status
  /// [vpcFirewallId] VPC firewall ID
  /// [vpcFirewallName] The name of the VPC firewall instance.
  GetVpcFirewallCensResult({
    this.cenId,
    required this.cens,
    required this.id,
    required this.ids,
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
      'cens': pulumi.Input.encodeList<GetVpcFirewallCensCen, Map<String, dynamic>>(cens, (value) => value.toMap()),
      'id': id,
      'ids': ids,
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

  factory GetVpcFirewallCensResult.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensResult(
      cenId: map['cenId'] == null ? null : map['cenId']! as String,
      cens: pulumi.Input.decodeList<GetVpcFirewallCensCen>(map['cens'], (value) => GetVpcFirewallCensCen.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang']! as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid']! as String,
      networkInstanceId: map['networkInstanceId'] == null ? null : map['networkInstanceId']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      status: map['status'] == null ? null : map['status']! as String,
      vpcFirewallId: map['vpcFirewallId'] == null ? null : map['vpcFirewallId']! as String,
      vpcFirewallName: map['vpcFirewallName'] == null ? null : map['vpcFirewallName']! as String,
    );
  }
}

