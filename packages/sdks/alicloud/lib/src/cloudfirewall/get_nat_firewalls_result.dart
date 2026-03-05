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
      firewalls: pulumi.Input.decodeList<GetNatFirewallsFirewall>(map['firewalls']!, (value) => GetNatFirewallsFirewall.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return guardedValue as int; })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      proxyId: (() { final guardedValue = map['proxyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyName: (() { final guardedValue = map['proxyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

