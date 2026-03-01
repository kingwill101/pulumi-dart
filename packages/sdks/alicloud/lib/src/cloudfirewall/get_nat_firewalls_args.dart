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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<int>? memberUid,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? proxyId,
    pulumi.Output<String>? proxyName,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<int>(map['memberUid'] as int),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<String>(map['proxyId'] as String),
      proxyName: map['proxyName'] == null ? null : pulumi.Output.create<String>(map['proxyName'] as String),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

