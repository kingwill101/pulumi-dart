// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_firewalls_firewall.dart';

/// Result data returned by getNatFirewalls.
class GetNatFirewallsResult {
  /// A list of Nat Firewall Entries. Each element contains the following attributes:
  final List<GetNatFirewallsFirewall> firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Nat Firewall IDs.
  final List<String> ids;
  final String? lang;
  /// Member Account ID
  final int? memberUid;
  /// NAT gateway ID
  final String? natGatewayId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// NAT firewall ID
  final String? proxyId;
  /// NAT firewall name
  final String? proxyName;
  final String? regionNo;
  final String? status;
  /// The ID of the VPC instance.
  final String? vpcId;

  /// Creates a new [GetNatFirewallsResult].
  /// [firewalls] A list of Nat Firewall Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Nat Firewall IDs.
  /// [lang] Optional.
  /// [memberUid] Member Account ID
  /// [natGatewayId] NAT gateway ID
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [proxyId] NAT firewall ID
  /// [proxyName] NAT firewall name
  /// [regionNo] Optional.
  /// [status] Optional.
  /// [vpcId] The ID of the VPC instance.
  GetNatFirewallsResult({
    required this.firewalls,
    required this.id,
    required this.ids,
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
      'firewalls': pulumi.Input.encodeList<GetNatFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
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

  factory GetNatFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetNatFirewallsResult(
      firewalls: pulumi.Input.decodeList<GetNatFirewallsFirewall>(map['firewalls'], (value) => GetNatFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang']! as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid']! as int,
      natGatewayId: map['natGatewayId'] == null ? null : map['natGatewayId']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      proxyId: map['proxyId'] == null ? null : map['proxyId']! as String,
      proxyName: map['proxyName'] == null ? null : map['proxyName']! as String,
      regionNo: map['regionNo'] == null ? null : map['regionNo']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

