// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_h_avip_attachment_havip_attachment_args_doc}
/// The set of arguments for HAVipAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_h_avip_attachment_havip_attachment_args_doc}
class HAVipAttachmentArgs {
  /// Specifies whether to force delete the snapshot.
  final pulumi.Input<bool>? force;
  /// The ID of the HaVip instance.
  final pulumi.Input<String>? haVipId;
  /// . Field 'havip_id' has been deprecated from provider version 1.259.0. New field 'ha_vip_id' instead.
  final pulumi.Input<String>? havipId;
  /// The ID of the ECS instance bound to the HaVip instance.
  final pulumi.Input<String> instanceId;
  /// The type of the instance to be associated with the HAVIP. Valid values: * `EcsInstance`: an ECS instance * `NetworkInterface`: an ENI. If you want to associate the HAVIP with an ENI, this parameter is required.
  final pulumi.Input<String>? instanceType;

  /// Creates a new [HAVipAttachmentArgs].
  /// [force] Specifies whether to force delete the snapshot.
  /// [haVipId] The ID of the HaVip instance.
  /// [havipId] . Field 'havip_id' has been deprecated from provider version 1.259.0. New field 'ha_vip_id' instead.
  /// [instanceId] The ID of the ECS instance bound to the HaVip instance.
  /// [instanceType] The type of the instance to be associated with the HAVIP. Valid values: * `EcsInstance`: an ECS instance * `NetworkInterface`: an ENI. If you want to associate the HAVIP with an ENI, this parameter is required.
  HAVipAttachmentArgs({
    this.force,
    this.haVipId,
    this.havipId,
    required this.instanceId,
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'haVipId': ?haVipId,
      'havipId': ?havipId,
      'instanceId': instanceId,
      'instanceType': ?instanceType,
    };
  }

  factory HAVipAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HAVipAttachmentArgs(
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      haVipId: (() { final guardedValue = map['haVipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      havipId: (() { final guardedValue = map['havipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

