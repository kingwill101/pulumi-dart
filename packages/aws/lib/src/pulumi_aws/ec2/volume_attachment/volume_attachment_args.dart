// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VolumeAttachment.
class VolumeAttachmentArgs {
  /// The device name to expose to the instance (for
  /// example, `/dev/sdh` or <span pulumi-lang-nodejs="`xvdh`" pulumi-lang-dotnet="`Xvdh`" pulumi-lang-go="`xvdh`" pulumi-lang-python="`xvdh`" pulumi-lang-yaml="`xvdh`" pulumi-lang-java="`xvdh`">`xvdh`</span>).  See [Device Naming on Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names) and [Device Naming on Windows Instances](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names) for more information.
  final Input<String> deviceName;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want to force the
  /// volume to detach. Useful if previous attempts failed, but use this option only
  /// as a last resort, as this can result in **data loss**. See
  /// [Detaching an Amazon EBS Volume from an Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) for more information.
  final Input<bool>? forceDetach;

  /// ID of the Instance to attach to
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set this to true if you do not wish
  /// to detach the volume from the instance to which it is attached at destroy
  /// time, and instead just remove the attachment from this provider state. This is
  /// useful when destroying an instance which has volumes created by some other
  /// means attached.
  final Input<bool>? skipDestroy;

  /// Set this to true to ensure that the target instance is stopped
  /// before trying to detach the volume. Stops the instance, if it is not already stopped.
  final Input<bool>? stopInstanceBeforeDetaching;

  /// ID of the Volume to be attached
  final Input<String> volumeId;

  VolumeAttachmentArgs({
    required this.deviceName,
    this.forceDetach,
    required this.instanceId,
    this.region,
    this.skipDestroy,
    this.stopInstanceBeforeDetaching,
    required this.volumeId,
  });

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
      deviceName: Input.asInput<String>(map['deviceName']),
      forceDetach: Input.asOptionalInput<bool>(map['forceDetach']),
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      stopInstanceBeforeDetaching:
          Input.asOptionalInput<bool>(map['stopInstanceBeforeDetaching']),
      volumeId: Input.asInput<String>(map['volumeId']),
    );
  }
}
