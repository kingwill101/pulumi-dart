import 'package:pulumi/pulumi.dart';
import '../ami_ebs_block_device/ami_ebs_block_device.dart';
import '../ami_ephemeral_block_device/ami_ephemeral_block_device.dart';
import 'ami_args.dart';

/// The AMI resource allows the creation and management of a completely-custom
/// *Amazon Machine Image* (AMI).
///
/// If you just want to duplicate an existing AMI, possibly copying it to another
/// region, it's better to use <span pulumi-lang-nodejs="`aws.ec2.AmiCopy`" pulumi-lang-dotnet="`aws.ec2.AmiCopy`" pulumi-lang-go="`ec2.AmiCopy`" pulumi-lang-python="`ec2.AmiCopy`" pulumi-lang-yaml="`aws.ec2.AmiCopy`" pulumi-lang-java="`aws.ec2.AmiCopy`">`aws.ec2.AmiCopy`</span> instead.
///
/// If you just want to share an existing AMI with another AWS account,
/// it's better to use <span pulumi-lang-nodejs="`aws.ec2.AmiLaunchPermission`" pulumi-lang-dotnet="`aws.ec2.AmiLaunchPermission`" pulumi-lang-go="`ec2.AmiLaunchPermission`" pulumi-lang-python="`ec2.AmiLaunchPermission`" pulumi-lang-yaml="`aws.ec2.AmiLaunchPermission`" pulumi-lang-java="`aws.ec2.AmiLaunchPermission`">`aws.ec2.AmiLaunchPermission`</span> instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create an AMI that will start a machine whose root device is backed by
/// // an EBS volume populated from a snapshot. We assume that such a snapshot
/// // already exists with the id "snap-xxxxxxxx".
/// const example = new aws.ec2.Ami("example", {
/// name: "example",
/// virtualizationType: "hvm",
/// rootDeviceName: "/dev/xvda",
/// imdsSupport: "v2.0",
/// ebsBlockDevices: [{
/// deviceName: "/dev/xvda",
/// snapshotId: "snap-xxxxxxxx",
/// volumeSize: 8,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create an AMI that will start a machine whose root device is backed by
/// # an EBS volume populated from a snapshot. We assume that such a snapshot
/// # already exists with the id "snap-xxxxxxxx".
/// example = aws.ec2.Ami("example",
/// name="example",
/// virtualization_type="hvm",
/// root_device_name="/dev/xvda",
/// imds_support="v2.0",
/// ebs_block_devices=[{
/// "device_name": "/dev/xvda",
/// "snapshot_id": "snap-xxxxxxxx",
/// "volume_size": 8,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create an AMI that will start a machine whose root device is backed by
/// // an EBS volume populated from a snapshot. We assume that such a snapshot
/// // already exists with the id "snap-xxxxxxxx".
/// var example = new Aws.Ec2.Ami("example", new()
/// {
/// Name = "example",
/// VirtualizationType = "hvm",
/// RootDeviceName = "/dev/xvda",
/// ImdsSupport = "v2.0",
/// EbsBlockDevices = new[]
/// {
/// new Aws.Ec2.Inputs.AmiEbsBlockDeviceArgs
/// {
/// DeviceName = "/dev/xvda",
/// SnapshotId = "snap-xxxxxxxx",
/// VolumeSize = 8,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create an AMI that will start a machine whose root device is backed by
/// // an EBS volume populated from a snapshot. We assume that such a snapshot
/// // already exists with the id "snap-xxxxxxxx".
/// _, err := ec2.NewAmi(ctx, "example", &ec2.AmiArgs{
/// Name:               pulumi.String("example"),
/// VirtualizationType: pulumi.String("hvm"),
/// RootDeviceName:     pulumi.String("/dev/xvda"),
/// ImdsSupport:        pulumi.String("v2.0"),
/// EbsBlockDevices: ec2.AmiEbsBlockDeviceArray{
/// &ec2.AmiEbsBlockDeviceArgs{
/// DeviceName: pulumi.String("/dev/xvda"),
/// SnapshotId: pulumi.String("snap-xxxxxxxx"),
/// VolumeSize: pulumi.Int(8),
/// },
/// },
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
/// import com.pulumi.aws.ec2.Ami;
/// import com.pulumi.aws.ec2.AmiArgs;
/// import com.pulumi.aws.ec2.inputs.AmiEbsBlockDeviceArgs;
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
/// // Create an AMI that will start a machine whose root device is backed by
/// // an EBS volume populated from a snapshot. We assume that such a snapshot
/// // already exists with the id "snap-xxxxxxxx".
/// var example = new Ami("example", AmiArgs.builder()
/// .name("example")
/// .virtualizationType("hvm")
/// .rootDeviceName("/dev/xvda")
/// .imdsSupport("v2.0")
/// .ebsBlockDevices(AmiEbsBlockDeviceArgs.builder()
/// .deviceName("/dev/xvda")
/// .snapshotId("snap-xxxxxxxx")
/// .volumeSize(8)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create an AMI that will start a machine whose root device is backed by
/// # an EBS volume populated from a snapshot. We assume that such a snapshot
/// # already exists with the id "snap-xxxxxxxx".
/// example:
/// type: aws:ec2:Ami
/// properties:
/// name: example
/// virtualizationType: hvm
/// rootDeviceName: /dev/xvda
/// imdsSupport: v2.0
/// ebsBlockDevices:
/// - deviceName: /dev/xvda
/// snapshotId: snap-xxxxxxxx
/// volumeSize: 8
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2.Ami`" pulumi-lang-dotnet="`aws.ec2.Ami`" pulumi-lang-go="`ec2.Ami`" pulumi-lang-python="`ec2.Ami`" pulumi-lang-yaml="`aws.ec2.Ami`" pulumi-lang-java="`aws.ec2.Ami`">`aws.ec2.Ami`</span> using the ID of the AMI. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/ami:Ami example ami-12345678
/// ```
class Ami extends CustomResource {
  /// Machine architecture for created instances. Defaults to <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span>.
  late final Output<String?> architecture;

  /// ARN of the AMI.
  late final Output<String> arn;

  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  late final Output<String?> bootMode;

  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String?> deprecationTime;

  /// Longer, human-readable description for the AMI.
  late final Output<String?> description;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  late final Output<List<AmiEbsBlockDevice>> ebsBlockDevices;

  /// Whether enhanced networking with ENA is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enaSupport;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  late final Output<List<AmiEphemeralBlockDevice>> ephemeralBlockDevices;

  /// Hypervisor type of the image.
  late final Output<String> hypervisor;
  late final Output<String> imageLocation;

  /// AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner.
  late final Output<String> imageOwnerAlias;

  /// Type of image.
  late final Output<String> imageType;

  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  late final Output<String?> imdsSupport;
  late final Output<String?> kernelId;

  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  late final Output<String> lastLaunchedTime;
  late final Output<bool> manageEbsSnapshots;

  /// Region-unique name for the AMI.
  late final Output<String> name;

  /// AWS account ID of the image owner.
  late final Output<String> ownerId;

  /// This value is set to windows for Windows AMIs; otherwise, it is blank.
  late final Output<String> platform;

  /// Platform details associated with the billing code of the AMI.
  late final Output<String> platformDetails;

  /// Whether the image has public launch permissions.
  late final Output<bool> public;
  late final Output<String?> ramdiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  late final Output<String?> rootDeviceName;

  /// Snapshot ID for the root volume (for EBS-backed AMIs)
  late final Output<String> rootSnapshotId;
  late final Output<String?> sriovNetSupport;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  late final Output<String?> tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store.
  late final Output<String?> uefiData;

  /// Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  late final Output<String> usageOperation;

  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  late final Output<String?> virtualizationType;

  Ami(
    String name, {
    AmiArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/ami:Ami',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.architecture = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.bootMode = Output.createUnknown<String?>();
    this.deprecationTime = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String?>();
    this.ebsBlockDevices = Output.createUnknown<List<AmiEbsBlockDevice>>();
    this.enaSupport = Output.createUnknown<bool?>();
    this.ephemeralBlockDevices =
        Output.createUnknown<List<AmiEphemeralBlockDevice>>();
    this.hypervisor = Output.createUnknown<String>();
    this.imageLocation = Output.createUnknown<String>();
    this.imageOwnerAlias = Output.createUnknown<String>();
    this.imageType = Output.createUnknown<String>();
    this.imdsSupport = Output.createUnknown<String?>();
    this.kernelId = Output.createUnknown<String?>();
    this.lastLaunchedTime = Output.createUnknown<String>();
    this.manageEbsSnapshots = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.platform = Output.createUnknown<String>();
    this.platformDetails = Output.createUnknown<String>();
    this.public = Output.createUnknown<bool>();
    this.ramdiskId = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.rootDeviceName = Output.createUnknown<String?>();
    this.rootSnapshotId = Output.createUnknown<String>();
    this.sriovNetSupport = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tpmSupport = Output.createUnknown<String?>();
    this.uefiData = Output.createUnknown<String?>();
    this.usageOperation = Output.createUnknown<String>();
    this.virtualizationType = Output.createUnknown<String?>();
  }
}
