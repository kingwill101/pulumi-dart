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
  const GetVpcFirewallsArgs({
    this.ids,
    this.lang,
    this.memberUid,
    this.nameRegex,
    this.outputFile,
    this.regionNo,
    this.status,
    this.vpcFirewallId,
    this.vpcFirewallName,
    this.vpcId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberUid: (() { final guardedValue = map['memberUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFirewallId: (() { final guardedValue = map['vpcFirewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcFirewallName: (() { final guardedValue = map['vpcFirewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

