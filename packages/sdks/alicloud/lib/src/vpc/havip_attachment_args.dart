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
    pulumi.Output<bool>? force,
    pulumi.Output<String>? haVipId,
    pulumi.Output<String>? havipId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? instanceType,
  }) :
      force = pulumi.Input.asOptionalInput<bool>(force),
      haVipId = pulumi.Input.asOptionalInput<String>(haVipId),
      havipId = pulumi.Input.asOptionalInput<String>(havipId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType);

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
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      haVipId: map['haVipId'] == null ? null : pulumi.Output.create<String>(map['haVipId'] as String),
      havipId: map['havipId'] == null ? null : pulumi.Output.create<String>(map['havipId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
    );
  }
}

