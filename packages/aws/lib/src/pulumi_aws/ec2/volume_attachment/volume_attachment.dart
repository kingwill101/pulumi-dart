import 'package:pulumi/pulumi.dart';
import 'volume_attachment_args.dart';

/// Provides an AWS EBS Volume Attachment as a top level resource, to attach and
/// detach volumes from AWS Instances.
///
/// > **NOTE on EBS block devices:** If you use <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> on an <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span>, this provider will assume management over the full set of non-root EBS block devices for the instance, and treats additional block devices as drift. For this reason, <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> cannot be mixed with external <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> + <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span> resources for a given instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const web = new aws.ec2.Instance("web", {
/// ami: "ami-21f78e11",
/// availabilityZone: "us-west-2a",
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// const example = new aws.ebs.Volume("example", {
/// availabilityZone: "us-west-2a",
/// size: 1,
/// });
/// const ebsAtt = new aws.ec2.VolumeAttachment("ebs_att", {
/// deviceName: "/dev/sdh",
/// volumeId: example.id,
/// instanceId: web.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// web = aws.ec2.Instance("web",
/// ami="ami-21f78e11",
/// availability_zone="us-west-2a",
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// tags={
/// "Name": "HelloWorld",
/// })
/// example = aws.ebs.Volume("example",
/// availability_zone="us-west-2a",
/// size=1)
/// ebs_att = aws.ec2.VolumeAttachment("ebs_att",
/// device_name="/dev/sdh",
/// volume_id=example.id,
/// instance_id=web.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var web = new Aws.Ec2.Instance("web", new()
/// {
/// Ami = "ami-21f78e11",
/// AvailabilityZone = "us-west-2a",
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// Tags =
/// {
/// { "Name", "HelloWorld" },
/// },
/// });
///
/// var example = new Aws.Ebs.Volume("example", new()
/// {
/// AvailabilityZone = "us-west-2a",
/// Size = 1,
/// });
///
/// var ebsAtt = new Aws.Ec2.VolumeAttachment("ebs_att", new()
/// {
/// DeviceName = "/dev/sdh",
/// VolumeId = example.Id,
/// InstanceId = web.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// web, err := ec2.NewInstance(ctx, "web", &ec2.InstanceArgs{
/// Ami:              pulumi.String("ami-21f78e11"),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// InstanceType:     pulumi.String(ec2.InstanceType_T2_Micro),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Size:             pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVolumeAttachment(ctx, "ebs_att", &ec2.VolumeAttachmentArgs{
/// DeviceName: pulumi.String("/dev/sdh"),
/// VolumeId:   example.ID(),
/// InstanceId: web.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var web = new Instance("web", InstanceArgs.builder()
/// .ami("ami-21f78e11")
/// .availabilityZone("us-west-2a")
/// .instanceType("t2.micro")
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// var example = new Volume("example", VolumeArgs.builder()
/// .availabilityZone("us-west-2a")
/// .size(1)
/// .build());
///
/// var ebsAtt = new VolumeAttachment("ebsAtt", VolumeAttachmentArgs.builder()
/// .deviceName("/dev/sdh")
/// .volumeId(example.id())
/// .instanceId(web.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ebsAtt:
/// type: aws:ec2:VolumeAttachment
/// name: ebs_att
/// properties:
/// deviceName: /dev/sdh
/// volumeId: ${example.id}
/// instanceId: ${web.id}
/// web:
/// type: aws:ec2:Instance
/// properties:
/// ami: ami-21f78e11
/// availabilityZone: us-west-2a
/// instanceType: t2.micro
/// tags:
/// Name: HelloWorld
/// example:
/// type: aws:ebs:Volume
/// properties:
/// availabilityZone: us-west-2a
/// size: 1
/// ```
/// <!--End PulumiCodeChooser -->
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
  /// example, `/dev/sdh` or <span pulumi-lang-nodejs="`xvdh`" pulumi-lang-dotnet="`Xvdh`" pulumi-lang-go="`xvdh`" pulumi-lang-python="`xvdh`" pulumi-lang-yaml="`xvdh`" pulumi-lang-java="`xvdh`">`xvdh`</span>).  See [Device Naming on Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html#available-ec2-device-names) and [Device Naming on Windows Instances](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/device_naming.html#available-ec2-device-names) for more information.
  late final Output<String> deviceName;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want to force the
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
    this.deviceName = Output.createUnknown<String>();
    this.forceDetach = Output.createUnknown<bool?>();
    this.instanceId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.stopInstanceBeforeDetaching = Output.createUnknown<bool?>();
    this.volumeId = Output.createUnknown<String>();
  }
}
