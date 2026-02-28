// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_volume_attachment_volume_attachment_args_doc}
/// The set of arguments for VolumeAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_volume_attachment_volume_attachment_args_doc}
class VolumeAttachmentArgs {
  /// The device name to expose to the instance (for
  /// example, `/dev/sdh` or `xvdh`).  See [Device Naming on Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names) and [Device Naming on Windows Instances](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names) for more information.
  final pulumi.Input<String> deviceName;

  /// Set to `true` if you want to force the
  /// volume to detach. Useful if previous attempts failed, but use this option only
  /// as a last resort, as this can result in **data loss**. See
  /// [Detaching an Amazon EBS Volume from an Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) for more information.
  final pulumi.Input<bool>? forceDetach;

  /// ID of the Instance to attach to
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Set this to true if you do not wish
  /// to detach the volume from the instance to which it is attached at destroy
  /// time, and instead just remove the attachment from this provider state. This is
  /// useful when destroying an instance which has volumes created by some other
  /// means attached.
  final pulumi.Input<bool>? skipDestroy;

  /// Set this to true to ensure that the target instance is stopped
  /// before trying to detach the volume. Stops the instance, if it is not already stopped.
  final pulumi.Input<bool>? stopInstanceBeforeDetaching;

  /// ID of the Volume to be attached
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeAttachmentArgs].
  /// [deviceName] The device name to expose to the instance (for
  /// [forceDetach] Set to `true` if you want to force the
  /// [instanceId] ID of the Instance to attach to
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Set this to true if you do not wish
  /// [stopInstanceBeforeDetaching] Set this to true to ensure that the target instance is stopped
  /// [volumeId] ID of the Volume to be attached
  VolumeAttachmentArgs({
    required String deviceName,
    bool? forceDetach,
    required String instanceId,
    String? region,
    bool? skipDestroy,
    bool? stopInstanceBeforeDetaching,
    required String volumeId,
  })  : deviceName = pulumi.Input.asInput<String>(deviceName),
        forceDetach = pulumi.Input.asOptionalInput<bool>(forceDetach),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        region = pulumi.Input.asOptionalInput<String>(region),
        skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
        stopInstanceBeforeDetaching =
            pulumi.Input.asOptionalInput<bool>(stopInstanceBeforeDetaching),
        volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    final forceDetachValue = forceDetach;
    if (forceDetachValue != null) {
      map['forceDetach'] = forceDetachValue;
    }
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final stopInstanceBeforeDetachingValue = stopInstanceBeforeDetaching;
    if (stopInstanceBeforeDetachingValue != null) {
      map['stopInstanceBeforeDetaching'] = stopInstanceBeforeDetachingValue;
    }
    map['volumeId'] = volumeId;
    return map;
  }

  factory VolumeAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VolumeAttachmentArgs(
      deviceName: map['deviceName'] as String,
      forceDetach:
          map['forceDetach'] == null ? null : map['forceDetach'] as bool,
      instanceId: map['instanceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      skipDestroy:
          map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      stopInstanceBeforeDetaching: map['stopInstanceBeforeDetaching'] == null
          ? null
          : map['stopInstanceBeforeDetaching'] as bool,
      volumeId: map['volumeId'] as String,
    );
  }
}
