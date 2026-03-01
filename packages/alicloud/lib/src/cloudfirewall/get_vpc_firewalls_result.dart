// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall.dart';

/// Result data returned by getVpcFirewalls.
class GetVpcFirewallsResult {
  /// A list of Vpc Firewall Entries. Each element contains the following attributes:
  final List<GetVpcFirewallsFirewall> firewalls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Firewall IDs.
  final List<String> ids;
  final String? lang;
  /// The UID of the Alibaba Cloud member account.
  final String? memberUid;
  final String? nameRegex;
  /// A list of name of Vpc Firewalls.
  final List<String> names;
  final String? outputFile;
  /// The region ID of the peer VPC.
  final String? regionNo;
  /// The status of the resource
  final String? status;
  /// The ID of the VPC firewall instance.
  final String? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final String? vpcFirewallName;
  /// The ID of the peer VPC instance.
  final String? vpcId;

  /// Creates a new [GetVpcFirewallsResult].
  /// [firewalls] A list of Vpc Firewall Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Firewall IDs.
  /// [lang] Optional.
  /// [memberUid] The UID of the Alibaba Cloud member account.
  /// [nameRegex] Optional.
  /// [names] A list of name of Vpc Firewalls.
  /// [outputFile] Optional.
  /// [regionNo] The region ID of the peer VPC.
  /// [status] The status of the resource
  /// [vpcFirewallId] The ID of the VPC firewall instance.
  /// [vpcFirewallName] The name of the VPC firewall instance.
  /// [vpcId] The ID of the peer VPC instance.
  GetVpcFirewallsResult({
    required this.firewalls,
    required this.id,
    required this.ids,
    this.lang,
    this.memberUid,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.regionNo,
    this.status,
    this.vpcFirewallId,
    this.vpcFirewallName,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewalls': pulumi.Input.encodeList<GetVpcFirewallsFirewall, Map<String, dynamic>>(firewalls, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'regionNo': ?regionNo,
      'status': ?status,
      'vpcFirewallId': ?vpcFirewallId,
      'vpcFirewallName': ?vpcFirewallName,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcFirewallsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsResult(
      firewalls: pulumi.Input.decodeList<GetVpcFirewallsFirewall>(map['firewalls'], (value) => GetVpcFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      regionNo: map['regionNo'] == null ? null : map['regionNo'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcFirewallId: map['vpcFirewallId'] == null ? null : map['vpcFirewallId'] as String,
      vpcFirewallName: map['vpcFirewallName'] == null ? null : map['vpcFirewallName'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

