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
    pulumi.Output<String>? cenId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? networkInstanceId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcFirewallId,
    pulumi.Output<String>? vpcFirewallName,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      networkInstanceId = pulumi.Input.asOptionalInput<String>(networkInstanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId),
      vpcFirewallName = pulumi.Input.asOptionalInput<String>(vpcFirewallName);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      networkInstanceId: map['networkInstanceId'] == null ? null : pulumi.Output.create<String>(map['networkInstanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallName'] as String),
    );
  }
}

