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
    this.instanceId,
    this.ip,
    this.memberUid,
    this.resourceGroupId,
    this.status,
  });

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
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

