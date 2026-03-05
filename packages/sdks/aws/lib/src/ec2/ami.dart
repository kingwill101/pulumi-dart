import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_args.dart';
import 'ami_state.dart';

/// The AMI resource allows the creation and management of a completely-custom
/// *Amazon Machine Image* (AMI).
///
/// If you just want to duplicate an existing AMI, possibly copying it to another
/// region, it's better to use `aws.ec2.AmiCopy` instead.
///
/// If you just want to share an existing AMI with another AWS account,
/// it's better to use `aws.ec2.AmiLaunchPermission` instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create an AMI that will start a machine whose root device is backed by
/// // an EBS volume populated from a snapshot. We assume that such a snapshot
/// // already exists with the id "snap-xxxxxxxx".
/// const example = new aws.ec2.Ami("example", {
///     name: "example",
///     virtualizationType: "hvm",
///     rootDeviceName: "/dev/xvda",
///     imdsSupport: "v2.0",
///     ebsBlockDevices: [{
///         deviceName: "/dev/xvda",
///         snapshotId: "snap-xxxxxxxx",
///         volumeSize: 8,
///     }],
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
///     name="example",
///     virtualization_type="hvm",
///     root_device_name="/dev/xvda",
///     imds_support="v2.0",
///     ebs_block_devices=[{
///         "device_name": "/dev/xvda",
///         "snapshot_id": "snap-xxxxxxxx",
///         "volume_size": 8,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create an AMI that will start a machine whose root device is backed by
///     // an EBS volume populated from a snapshot. We assume that such a snapshot
///     // already exists with the id "snap-xxxxxxxx".
///     var example = new Aws.Ec2.Ami("example", new()
///     {
///         Name = "example",
///         VirtualizationType = "hvm",
///         RootDeviceName = "/dev/xvda",
///         ImdsSupport = "v2.0",
///         EbsBlockDevices = new[]
///         {
///             new Aws.Ec2.Inputs.AmiEbsBlockDeviceArgs
///             {
///                 DeviceName = "/dev/xvda",
///                 SnapshotId = "snap-xxxxxxxx",
///                 VolumeSize = 8,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create an AMI that will start a machine whose root device is backed by
/// 		// an EBS volume populated from a snapshot. We assume that such a snapshot
/// 		// already exists with the id "snap-xxxxxxxx".
/// 		_, err := ec2.NewAmi(ctx, "example", &ec2.AmiArgs{
/// 			Name:               pulumi.String("example"),
/// 			VirtualizationType: pulumi.String("hvm"),
/// 			RootDeviceName:     pulumi.String("/dev/xvda"),
/// 			ImdsSupport:        pulumi.String("v2.0"),
/// 			EbsBlockDevices: ec2.AmiEbsBlockDeviceArray{
/// 				&ec2.AmiEbsBlockDeviceArgs{
/// 					DeviceName: pulumi.String("/dev/xvda"),
/// 					SnapshotId: pulumi.String("snap-xxxxxxxx"),
/// 					VolumeSize: pulumi.Int(8),
/// 				},
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Create an AMI that will start a machine whose root device is backed by
///         // an EBS volume populated from a snapshot. We assume that such a snapshot
///         // already exists with the id "snap-xxxxxxxx".
///         var example = new Ami("example", AmiArgs.builder()
///             .name("example")
///             .virtualizationType("hvm")
///             .rootDeviceName("/dev/xvda")
///             .imdsSupport("v2.0")
///             .ebsBlockDevices(AmiEbsBlockDeviceArgs.builder()
///                 .deviceName("/dev/xvda")
///                 .snapshotId("snap-xxxxxxxx")
///                 .volumeSize(8)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create an AMI that will start a machine whose root device is backed by
///   # an EBS volume populated from a snapshot. We assume that such a snapshot
///   # already exists with the id "snap-xxxxxxxx".
///   example:
///     type: aws:ec2:Ami
///     properties:
///       name: example
///       virtualizationType: hvm
///       rootDeviceName: /dev/xvda
///       imdsSupport: v2.0
///       ebsBlockDevices:
///         - deviceName: /dev/xvda
///           snapshotId: snap-xxxxxxxx
///           volumeSize: 8
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Ami` using the ID of the AMI. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/ami:Ami example ami-12345678
/// ```
class Ami extends pulumi.CustomResource {
  /// Machine architecture for created instances. Defaults to `x86_64`.
  late final pulumi.Output<String?> architecture;
  /// ARN of the AMI.
  late final pulumi.Output<String> arn;
  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String?> bootMode;
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> deprecationTime;
  /// Longer, human-readable description for the AMI.
  late final pulumi.Output<String?> description;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<Map<String, dynamic>>> ebsBlockDevices;
  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> enaSupport;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<Map<String, dynamic>>> ephemeralBlockDevices;
  /// Hypervisor type of the image.
  late final pulumi.Output<String> hypervisor;
  late final pulumi.Output<String> imageLocation;
  /// AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner.
  late final pulumi.Output<String> imageOwnerAlias;
  /// Type of image.
  late final pulumi.Output<String> imageType;
  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  late final pulumi.Output<String?> imdsSupport;
  late final pulumi.Output<String?> kernelId;
  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  late final pulumi.Output<String> lastLaunchedTime;
  late final pulumi.Output<bool> manageEbsSnapshots;
  /// Region-unique name for the AMI.
  late final pulumi.Output<String> name;
  /// AWS account ID of the image owner.
  late final pulumi.Output<String> ownerId;
  /// This value is set to windows for Windows AMIs; otherwise, it is blank.
  late final pulumi.Output<String> platform;
  /// Platform details associated with the billing code of the AMI.
  late final pulumi.Output<String> platformDetails;
  /// Whether the image has public launch permissions.
  late final pulumi.Output<bool> public;
  late final pulumi.Output<String?> ramdiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  late final pulumi.Output<String?> rootDeviceName;
  /// Snapshot ID for the root volume (for EBS-backed AMIs)
  late final pulumi.Output<String> rootSnapshotId;
  late final pulumi.Output<String?> sriovNetSupport;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String?> tpmSupport;
  /// Base64 representation of the non-volatile UEFI variable store.
  late final pulumi.Output<String?> uefiData;
  /// Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  late final pulumi.Output<String> usageOperation;
  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  late final pulumi.Output<String?> virtualizationType;

  /// Creates a new [Ami].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ami]. {@macro pulumi_ec2_ami_ami_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ami(
    String name, {
    AmiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/ami:Ami',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String?>('architecture');
    arn = registerOutput<String>('arn');
    bootMode = registerOutput<String?>('bootMode');
    deprecationTime = registerOutput<String?>('deprecationTime');
    description = registerOutput<String?>('description');
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>('ebsBlockDevices');
    enaSupport = registerOutput<bool?>('enaSupport');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>>('ephemeralBlockDevices');
    hypervisor = registerOutput<String>('hypervisor');
    imageLocation = registerOutput<String>('imageLocation');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    imageType = registerOutput<String>('imageType');
    imdsSupport = registerOutput<String?>('imdsSupport');
    kernelId = registerOutput<String?>('kernelId');
    lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    platform = registerOutput<String>('platform');
    platformDetails = registerOutput<String>('platformDetails');
    public = registerOutput<bool>('public');
    ramdiskId = registerOutput<String?>('ramdiskId');
    region = registerOutput<String>('region');
    rootDeviceName = registerOutput<String?>('rootDeviceName');
    rootSnapshotId = registerOutput<String>('rootSnapshotId');
    sriovNetSupport = registerOutput<String?>('sriovNetSupport');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tpmSupport = registerOutput<String?>('tpmSupport');
    uefiData = registerOutput<String?>('uefiData');
    usageOperation = registerOutput<String>('usageOperation');
    virtualizationType = registerOutput<String?>('virtualizationType');
  }

  /// Gets an existing [Ami] resource's state with the given [name] and [id].
  static Ami get(
    String name,
    pulumi.Input<String> id, {
    AmiState? state,
  }) {
    return Ami._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ami._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/ami:Ami',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String?>('architecture');
    arn = registerOutput<String>('arn');
    bootMode = registerOutput<String?>('bootMode');
    deprecationTime = registerOutput<String?>('deprecationTime');
    description = registerOutput<String?>('description');
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>('ebsBlockDevices');
    enaSupport = registerOutput<bool?>('enaSupport');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>>('ephemeralBlockDevices');
    hypervisor = registerOutput<String>('hypervisor');
    imageLocation = registerOutput<String>('imageLocation');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    imageType = registerOutput<String>('imageType');
    imdsSupport = registerOutput<String?>('imdsSupport');
    kernelId = registerOutput<String?>('kernelId');
    lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    platform = registerOutput<String>('platform');
    platformDetails = registerOutput<String>('platformDetails');
    public = registerOutput<bool>('public');
    ramdiskId = registerOutput<String?>('ramdiskId');
    region = registerOutput<String>('region');
    rootDeviceName = registerOutput<String?>('rootDeviceName');
    rootSnapshotId = registerOutput<String>('rootSnapshotId');
    sriovNetSupport = registerOutput<String?>('sriovNetSupport');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tpmSupport = registerOutput<String?>('tpmSupport');
    uefiData = registerOutput<String?>('uefiData');
    usageOperation = registerOutput<String>('usageOperation');
    virtualizationType = registerOutput<String?>('virtualizationType');
  }
}
