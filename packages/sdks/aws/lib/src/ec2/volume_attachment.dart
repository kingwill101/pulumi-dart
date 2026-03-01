import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attachment_args.dart';
import 'volume_attachment_state.dart';

/// Provides an AWS EBS Volume Attachment as a top level resource, to attach and
/// detach volumes from AWS Instances.
///
/// > **NOTE on EBS block devices:** If you use `ebs_block_device` on an `aws.ec2.Instance`, this provider will assume management over the full set of non-root EBS block devices for the instance, and treats additional block devices as drift. For this reason, `ebs_block_device` cannot be mixed with external `aws.ebs.Volume` + `aws.ec2.VolumeAttachment` resources for a given instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const web = new aws.ec2.Instance("web", {
///     ami: "ami-21f78e11",
///     availabilityZone: "us-west-2a",
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// const example = new aws.ebs.Volume("example", {
///     availabilityZone: "us-west-2a",
///     size: 1,
/// });
/// const ebsAtt = new aws.ec2.VolumeAttachment("ebs_att", {
///     deviceName: "/dev/sdh",
///     volumeId: example.id,
///     instanceId: web.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// web = aws.ec2.Instance("web",
///     ami="ami-21f78e11",
///     availability_zone="us-west-2a",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     tags={
///         "Name": "HelloWorld",
///     })
/// example = aws.ebs.Volume("example",
///     availability_zone="us-west-2a",
///     size=1)
/// ebs_att = aws.ec2.VolumeAttachment("ebs_att",
///     device_name="/dev/sdh",
///     volume_id=example.id,
///     instance_id=web.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Aws.Ec2.Instance("web", new()
///     {
///         Ami = "ami-21f78e11",
///         AvailabilityZone = "us-west-2a",
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
///     var example = new Aws.Ebs.Volume("example", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Size = 1,
///     });
///
///     var ebsAtt = new Aws.Ec2.VolumeAttachment("ebs_att", new()
///     {
///         DeviceName = "/dev/sdh",
///         VolumeId = example.Id,
///         InstanceId = web.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		web, err := ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// 			Ami:              pulumi.String("ami-21f78e11"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			InstanceType:     pulumi.String(ec2.InstanceType_T2_Micro),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Size:             pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVolumeAttachment(ctx, "ebs_att", &ec2.VolumeAttachmentArgs{
/// 			DeviceName: pulumi.String("/dev/sdh"),
/// 			VolumeId:   example.ID(),
/// 			InstanceId: web.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
/// import com.pulumi.aws.ec2.VolumeAttachment;
/// import com.pulumi.aws.ec2.VolumeAttachmentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var web = new Instance("web", InstanceArgs.builder()
///             .ami("ami-21f78e11")
///             .availabilityZone("us-west-2a")
///             .instanceType("t2.micro")
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///         var example = new Volume("example", VolumeArgs.builder()
///             .availabilityZone("us-west-2a")
///             .size(1)
///             .build());
///
///         var ebsAtt = new VolumeAttachment("ebsAtt", VolumeAttachmentArgs.builder()
///             .deviceName("/dev/sdh")
///             .volumeId(example.id())
///             .instanceId(web.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ebsAtt:
///     type: aws:ec2:VolumeAttachment
///     name: ebs_att
///     properties:
///       deviceName: /dev/sdh
///       volumeId: ${example.id}
///       instanceId: ${web.id}
///   web:
///     type: aws:ec2:Instance
///     properties:
///       ami: ami-21f78e11
///       availabilityZone: us-west-2a
///       instanceType: t2.micro
///       tags:
///         Name: HelloWorld
///   example:
///     type: aws:ebs:Volume
///     properties:
///       availabilityZone: us-west-2a
///       size: 1
/// ```
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
class VolumeAttachment extends pulumi.CustomResource {
  /// The device name to expose to the instance (for
  /// example, `/dev/sdh` or `xvdh`).  See [Device Naming on Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names) and [Device Naming on Windows Instances](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names) for more information.
  late final pulumi.Output<String> deviceName;
  /// Set to `true` if you want to force the
  /// volume to detach. Useful if previous attempts failed, but use this option only
  /// as a last resort, as this can result in **data loss**. See
  /// [Detaching an Amazon EBS Volume from an Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) for more information.
  late final pulumi.Output<bool?> forceDetach;
  /// ID of the Instance to attach to
  late final pulumi.Output<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set this to true if you do not wish
  /// to detach the volume from the instance to which it is attached at destroy
  /// time, and instead just remove the attachment from this provider state. This is
  /// useful when destroying an instance which has volumes created by some other
  /// means attached.
  late final pulumi.Output<bool?> skipDestroy;
  /// Set this to true to ensure that the target instance is stopped
  /// before trying to detach the volume. Stops the instance, if it is not already stopped.
  late final pulumi.Output<bool?> stopInstanceBeforeDetaching;
  /// ID of the Volume to be attached
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttachment]. {@macro pulumi_ec2_volume_attachment_volume_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttachment(
    String name, {
    VolumeAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deviceName = registerOutput<String>('deviceName');
    this.forceDetach = registerOutput<bool?>('forceDetach');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.stopInstanceBeforeDetaching = registerOutput<bool?>('stopInstanceBeforeDetaching');
    this.volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeAttachment] resource's state with the given [name] and [id].
  static VolumeAttachment get(
    String name,
    pulumi.Input<String> id, {
    VolumeAttachmentState? state,
  }) {
    return VolumeAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/volumeAttachment:VolumeAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deviceName = registerOutput<String>('deviceName');
    this.forceDetach = registerOutput<bool?>('forceDetach');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.stopInstanceBeforeDetaching = registerOutput<bool?>('stopInstanceBeforeDetaching');
    this.volumeId = registerOutput<String>('volumeId');
  }
}
