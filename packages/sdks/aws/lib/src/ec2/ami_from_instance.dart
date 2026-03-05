import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_from_instance_args.dart';
import 'ami_from_instance_state.dart';

/// The "AMI from instance" resource allows the creation of an Amazon Machine
/// Image (AMI) modeled after an existing EBS-backed EC2 instance.
///
/// The created AMI will refer to implicitly-created snapshots of the instance's
/// EBS volumes and mimick its assigned block device configuration at the time
/// the resource is created.
///
/// This resource is best applied to an instance that is stopped when this instance
/// is created, so that the contents of the created image are predictable. When
/// applied to an instance that is running, *the instance will be stopped before taking
/// the snapshots and then started back up again*, resulting in a period of
/// downtime.
///
/// Note that the source instance is inspected only at the initial creation of this
/// resource. Ongoing updates to the referenced instance will not be propagated into
/// the generated AMI. Users may taint or otherwise recreate the resource in order
/// to produce a fresh snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AmiFromInstance("example", {
///     name: "example",
///     sourceInstanceId: "i-xxxxxxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AmiFromInstance("example",
///     name="example",
///     source_instance_id="i-xxxxxxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.AmiFromInstance("example", new()
///     {
///         Name = "example",
///         SourceInstanceId = "i-xxxxxxxx",
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
/// 		_, err := ec2.NewAmiFromInstance(ctx, "example", &ec2.AmiFromInstanceArgs{
/// 			Name:             pulumi.String("example"),
/// 			SourceInstanceId: pulumi.String("i-xxxxxxxx"),
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
/// import com.pulumi.aws.ec2.AmiFromInstance;
/// import com.pulumi.aws.ec2.AmiFromInstanceArgs;
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
///         var example = new AmiFromInstance("example", AmiFromInstanceArgs.builder()
///             .name("example")
///             .sourceInstanceId("i-xxxxxxxx")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:AmiFromInstance
///     properties:
///       name: example
///       sourceInstanceId: i-xxxxxxxx
/// ```
class AmiFromInstance extends pulumi.CustomResource {
  /// Machine architecture for created instances. Defaults to `x86_64`.
  late final pulumi.Output<String> architecture;
  /// ARN of the AMI.
  late final pulumi.Output<String> arn;
  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String> bootMode;
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> deprecationTime;
  /// Longer, human-readable description for the AMI.
  late final pulumi.Output<String?> description;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<Map<String, dynamic>>> ebsBlockDevices;
  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  late final pulumi.Output<bool> enaSupport;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  late final pulumi.Output<List<Map<String, dynamic>>> ephemeralBlockDevices;
  late final pulumi.Output<String> hypervisor;
  /// Path to an S3 object containing an image manifest, e.g., created
  /// by the `ec2-upload-bundle` command in the EC2 command line tools.
  late final pulumi.Output<String> imageLocation;
  late final pulumi.Output<String> imageOwnerAlias;
  late final pulumi.Output<String> imageType;
  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  late final pulumi.Output<String> imdsSupport;
  /// ID of the kernel image (AKI) that will be used as the paravirtual
  /// kernel in created instances.
  late final pulumi.Output<String> kernelId;
  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  late final pulumi.Output<String> lastLaunchedTime;
  late final pulumi.Output<bool> manageEbsSnapshots;
  /// Region-unique name for the AMI.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;
  late final pulumi.Output<String> platform;
  late final pulumi.Output<String> platformDetails;
  late final pulumi.Output<bool> public;
  /// ID of an initrd image (ARI) that will be used when booting the
  /// created instances.
  late final pulumi.Output<String> ramdiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  late final pulumi.Output<String> rootDeviceName;
  late final pulumi.Output<String> rootSnapshotId;
  /// Boolean that overrides the behavior of stopping
  /// the instance before snapshotting. This is risky since it may cause a snapshot of an
  /// inconsistent filesystem state, but can be used to avoid downtime if the user otherwise
  /// guarantees that no filesystem writes will be underway at the time of snapshot.
  late final pulumi.Output<bool?> snapshotWithoutReboot;
  /// ID of the instance to use as the basis of the AMI.
  late final pulumi.Output<String> sourceInstanceId;
  /// When set to "simple" (the default), enables enhanced networking
  /// for created instances. No other value is supported at this time.
  late final pulumi.Output<String> sriovNetSupport;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  late final pulumi.Output<String> tpmSupport;
  /// Base64 representation of the non-volatile UEFI variable store.
  late final pulumi.Output<String> uefiData;
  late final pulumi.Output<String> usageOperation;
  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  late final pulumi.Output<String> virtualizationType;

  /// Creates a new [AmiFromInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AmiFromInstance]. {@macro pulumi_ec2_ami_from_instance_ami_from_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AmiFromInstance(
    String name, {
    AmiFromInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/amiFromInstance:AmiFromInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String>('architecture');
    arn = registerOutput<String>('arn');
    bootMode = registerOutput<String>('bootMode');
    deprecationTime = registerOutput<String?>('deprecationTime');
    description = registerOutput<String?>('description');
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>('ebsBlockDevices');
    enaSupport = registerOutput<bool>('enaSupport');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>>('ephemeralBlockDevices');
    hypervisor = registerOutput<String>('hypervisor');
    imageLocation = registerOutput<String>('imageLocation');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    imageType = registerOutput<String>('imageType');
    imdsSupport = registerOutput<String>('imdsSupport');
    kernelId = registerOutput<String>('kernelId');
    lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    platform = registerOutput<String>('platform');
    platformDetails = registerOutput<String>('platformDetails');
    public = registerOutput<bool>('public');
    ramdiskId = registerOutput<String>('ramdiskId');
    region = registerOutput<String>('region');
    rootDeviceName = registerOutput<String>('rootDeviceName');
    rootSnapshotId = registerOutput<String>('rootSnapshotId');
    snapshotWithoutReboot = registerOutput<bool?>('snapshotWithoutReboot');
    sourceInstanceId = registerOutput<String>('sourceInstanceId');
    sriovNetSupport = registerOutput<String>('sriovNetSupport');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tpmSupport = registerOutput<String>('tpmSupport');
    uefiData = registerOutput<String>('uefiData');
    usageOperation = registerOutput<String>('usageOperation');
    virtualizationType = registerOutput<String>('virtualizationType');
  }

  /// Gets an existing [AmiFromInstance] resource's state with the given [name] and [id].
  static AmiFromInstance get(
    String name,
    pulumi.Input<String> id, {
    AmiFromInstanceState? state,
  }) {
    return AmiFromInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AmiFromInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/amiFromInstance:AmiFromInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String>('architecture');
    arn = registerOutput<String>('arn');
    bootMode = registerOutput<String>('bootMode');
    deprecationTime = registerOutput<String?>('deprecationTime');
    description = registerOutput<String?>('description');
    ebsBlockDevices = registerOutput<List<Map<String, dynamic>>>('ebsBlockDevices');
    enaSupport = registerOutput<bool>('enaSupport');
    ephemeralBlockDevices = registerOutput<List<Map<String, dynamic>>>('ephemeralBlockDevices');
    hypervisor = registerOutput<String>('hypervisor');
    imageLocation = registerOutput<String>('imageLocation');
    imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    imageType = registerOutput<String>('imageType');
    imdsSupport = registerOutput<String>('imdsSupport');
    kernelId = registerOutput<String>('kernelId');
    lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    platform = registerOutput<String>('platform');
    platformDetails = registerOutput<String>('platformDetails');
    public = registerOutput<bool>('public');
    ramdiskId = registerOutput<String>('ramdiskId');
    region = registerOutput<String>('region');
    rootDeviceName = registerOutput<String>('rootDeviceName');
    rootSnapshotId = registerOutput<String>('rootSnapshotId');
    snapshotWithoutReboot = registerOutput<bool?>('snapshotWithoutReboot');
    sourceInstanceId = registerOutput<String>('sourceInstanceId');
    sriovNetSupport = registerOutput<String>('sriovNetSupport');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tpmSupport = registerOutput<String>('tpmSupport');
    uefiData = registerOutput<String>('uefiData');
    usageOperation = registerOutput<String>('usageOperation');
    virtualizationType = registerOutput<String>('virtualizationType');
  }
}
