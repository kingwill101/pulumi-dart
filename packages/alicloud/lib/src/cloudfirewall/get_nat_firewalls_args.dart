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
    List<String>? ids,
    String? lang,
    int? memberUid,
    String? natGatewayId,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? proxyId,
    String? proxyName,
    String? regionNo,
    String? status,
    String? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<int>(memberUid),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      proxyId = pulumi.Input.asOptionalInput<String>(proxyId),
      proxyName = pulumi.Input.asOptionalInput<String>(proxyName),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      memberUid: map['memberUid'] == null ? null : map['memberUid'] as int,
      natGatewayId: map['natGatewayId'] == null ? null : map['natGatewayId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      proxyId: map['proxyId'] == null ? null : map['proxyId'] as String,
      proxyName: map['proxyName'] == null ? null : map['proxyName'] as String,
      regionNo: map['regionNo'] == null ? null : map['regionNo'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

