// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_bgp_ip_bgp_ip_args_doc}
/// The set of arguments for BgpIp.
/// {@endtemplate}
/// {@macro pulumi_ddos_bgp_ip_bgp_ip_args_doc}
class BgpIpArgs {
  /// The ID of the Anti-DDoS Origin instance.
  final pulumi.Input<String> instanceId;
  /// The IP address that you want to add.
  final pulumi.Input<String> ip;
  /// The member to which the asset belongs.
  final pulumi.Input<String>? memberUid;
  /// Field `resource_group_id` has been deprecated from provider version 1.259.0.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [BgpIpArgs].
  /// [instanceId] The ID of the Anti-DDoS Origin instance.
  /// [ip] The IP address that you want to add.
  /// [memberUid] The member to which the asset belongs.
  /// [resourceGroupId] Field `resource_group_id` has been deprecated from provider version 1.259.0.
  BgpIpArgs({
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> ip,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? resourceGroupId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      ip = pulumi.Input.asInput<String>(ip),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'ip': ip,
      'memberUid': ?memberUid,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory BgpIpArgs.fromMap(Map<String, dynamic> map) {
    return BgpIpArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      ip: pulumi.Output.create<String>(map['ip'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

