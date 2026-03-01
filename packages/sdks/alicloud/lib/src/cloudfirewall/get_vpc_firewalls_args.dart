// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_vpc_firewalls_get_vpc_firewalls_args_doc}
/// Arguments for getVpcFirewalls.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_vpc_firewalls_get_vpc_firewalls_args_doc}
class GetVpcFirewallsArgs {
  /// A list of Vpc Firewall IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language type of the requested and received messages. Value:-**zh** (default): Chinese.-**en**: English.
  final pulumi.Input<String>? lang;
  /// The UID of the Alibaba Cloud member account.
  final pulumi.Input<String>? memberUid;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The region ID of the peer VPC.
  final pulumi.Input<String>? regionNo;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The ID of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallName;
  /// The ID of the peer VPC instance.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetVpcFirewallsArgs].
  /// [ids] A list of Vpc Firewall IDs.
  /// [lang] The language type of the requested and received messages. Value:-**zh** (default): Chinese.-**en**: English.
  /// [memberUid] The UID of the Alibaba Cloud member account.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [regionNo] The region ID of the peer VPC.
  /// [status] The status of the resource
  /// [vpcFirewallId] The ID of the VPC firewall instance.
  /// [vpcFirewallName] The name of the VPC firewall instance.
  /// [vpcId] The ID of the peer VPC instance.
  GetVpcFirewallsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcFirewallId,
    pulumi.Output<String>? vpcFirewallName,
    pulumi.Output<String>? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId),
      vpcFirewallName = pulumi.Input.asOptionalInput<String>(vpcFirewallName),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'memberUid': ?memberUid,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'regionNo': ?regionNo,
      'status': ?status,
      'vpcFirewallId': ?vpcFirewallId,
      'vpcFirewallName': ?vpcFirewallName,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallName'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

