import 'package:pulumi/pulumi.dart';
import 'volume_attachment_args.dart';

/// Provides an AWS EBS Volume Attachment as a top level resource, to attach and
/// detach volumes from AWS Instances.
///
/// > **NOTE on EBS block devices:** If you use `ebs_block_device` on an `aws.ec2.Instance`, this provider will assume management over the full set of non-root EBS block devices for the instance, and treats additional block devices as drift. For this reason, `ebs_block_device` cannot be mixed with external `aws.ebs.Volume` + `aws.ec2.VolumeAttachment` resources for a given instance.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EBS Volume Attachments using `DEVICE_NAME:VOLUME_ID:INSTANCE_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/volumeAttachment:VolumeAttachment example /dev/sdh:vol-049df61146c4d7901:i-12345678
/// ```
///
/// [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names
/// [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names
/// [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html
class VolumeAttachment extends CustomResource {
  /// The device name to expose to the instance (for
  /// example, `/dev/sdh` or `xvdh`).  See [Device Naming on Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names) and [Device Naming on Windows Instances](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names) for more information.
  late final Output<String> deviceName;

  /// Set to `true` if you want to force the
  /// volume to detach. Useful if previous attempts failed, but use this option only
  /// as a last resort, as this can result in **data loss**. See
  /// [Detaching an Amazon EBS Volume from an Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) for more information.
  late final Output<bool?> forceDetach;

  /// ID of the Instance to attach to
  late final Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set this to true if you do not wish
  /// to detach the volume from the instance to which it is attached at destroy
  /// time, and instead just remove the attachment from this provider state. This is
  /// useful when destroying an instance which has volumes created by some other
  /// means attached.
  late final Output<bool?> skipDestroy;

  /// Set this to true to ensure that the target instance is stopped
  /// before trying to detach the volume. Stops the instance, if it is not already stopped.
  late final Output<bool?> stopInstanceBeforeDetaching;

  /// ID of the Volume to be attached
  late final Output<String> volumeId;

  VolumeAttachment(
    String name, {
    VolumeAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/volumeAttachment:VolumeAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deviceName = registerOutput<String>('deviceName');
    this.forceDetach = registerOutput<bool?>('forceDetach');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.stopInstanceBeforeDetaching =
        registerOutput<bool?>('stopInstanceBeforeDetaching');
    this.volumeId = registerOutput<String>('volumeId');
  }
}
