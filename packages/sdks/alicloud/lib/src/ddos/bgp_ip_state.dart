// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpIp resources.
class BgpIpState {
  /// The ID of the Anti-DDoS Origin instance.
  final pulumi.Input<String>? instanceId;
  /// The IP address that you want to add.
  final pulumi.Input<String>? ip;
  /// The member to which the asset belongs.
  final pulumi.Input<String>? memberUid;
  /// Field `resource_group_id` has been deprecated from provider version 1.259.0.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the IP address.
  final pulumi.Input<String>? status;

  /// Creates a new [BgpIpState].
  /// [instanceId] The ID of the Anti-DDoS Origin instance.
  /// [ip] The IP address that you want to add.
  /// [memberUid] The member to which the asset belongs.
  /// [resourceGroupId] Field `resource_group_id` has been deprecated from provider version 1.259.0.
  /// [status] The status of the IP address.
  BgpIpState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? ip,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'ip': ?ip,
      'memberUid': ?memberUid,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory BgpIpState.fromMap(Map<String, dynamic> map) {
    return BgpIpState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

