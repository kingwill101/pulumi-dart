// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HAVipAttachment resources.
class HAVipAttachmentState {
  /// Specifies whether to force delete the snapshot.
  final pulumi.Input<bool>? force;
  /// The ID of the HaVip instance.
  final pulumi.Input<String>? haVipId;
  /// . Field 'havip_id' has been deprecated from provider version 1.259.0. New field 'ha_vip_id' instead.
  final pulumi.Input<String>? havipId;
  /// The ID of the ECS instance bound to the HaVip instance.
  final pulumi.Input<String>? instanceId;
  /// The type of the instance to be associated with the HAVIP. Valid values: * `EcsInstance`: an ECS instance * `NetworkInterface`: an ENI. If you want to associate the HAVIP with an ENI, this parameter is required.
  final pulumi.Input<String>? instanceType;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [HAVipAttachmentState].
  /// [force] Specifies whether to force delete the snapshot.
  /// [haVipId] The ID of the HaVip instance.
  /// [havipId] . Field 'havip_id' has been deprecated from provider version 1.259.0. New field 'ha_vip_id' instead.
  /// [instanceId] The ID of the ECS instance bound to the HaVip instance.
  /// [instanceType] The type of the instance to be associated with the HAVIP. Valid values: * `EcsInstance`: an ECS instance * `NetworkInterface`: an ENI. If you want to associate the HAVIP with an ENI, this parameter is required.
  /// [status] The status of the resource
  HAVipAttachmentState({
    this.force,
    this.haVipId,
    this.havipId,
    this.instanceId,
    this.instanceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'haVipId': ?haVipId,
      'havipId': ?havipId,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'status': ?status,
    };
  }

  factory HAVipAttachmentState.fromMap(Map<String, dynamic> map) {
    return HAVipAttachmentState(
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      haVipId: map['haVipId'] == null ? null : (map['haVipId']! as String).input(),
      havipId: map['havipId'] == null ? null : (map['havipId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

