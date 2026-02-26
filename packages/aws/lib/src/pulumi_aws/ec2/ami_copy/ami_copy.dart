import 'package:pulumi/pulumi.dart';
import '../ami_copy_ebs_block_device/ami_copy_ebs_block_device.dart';
import '../ami_copy_ephemeral_block_device/ami_copy_ephemeral_block_device.dart';
import 'ami_copy_args.dart';

/// The "AMI copy" resource allows duplication of an Amazon Machine Image (AMI),
/// including cross-region copies.
///
/// If the source AMI has associated EBS snapshots, those will also be duplicated
/// along with the AMI.
///
/// This is useful for taking a single AMI provisioned in one region and making
/// it available in another for a multi-region deployment.
///
/// Copying an AMI can take several minutes. The creation of this resource will
/// block until the new AMI is available for use on new instances.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AmiCopy("example", {
/// name: "example",
/// sourceAmiId: "ami-xxxxxxxx",
/// sourceAmiRegion: "us-west-1",
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AmiCopy("example",
/// name="example",
/// source_ami_id="ami-xxxxxxxx",
/// source_ami_region="us-west-1",
/// tags={
/// "Name": "HelloWorld",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.AmiCopy("example", new()
/// {
/// Name = "example",
/// SourceAmiId = "ami-xxxxxxxx",
/// SourceAmiRegion = "us-west-1",
/// Tags =
/// {
/// { "Name", "HelloWorld" },
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
/// _, err := ec2.NewAmiCopy(ctx, "example", &ec2.AmiCopyArgs{
/// Name:            pulumi.String("example"),
/// SourceAmiId:     pulumi.String("ami-xxxxxxxx"),
/// SourceAmiRegion: pulumi.String("us-west-1"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
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
/// import com.pulumi.aws.ec2.AmiCopy;
/// import com.pulumi.aws.ec2.AmiCopyArgs;
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
/// var example = new AmiCopy("example", AmiCopyArgs.builder()
/// .name("example")
/// .sourceAmiId("ami-xxxxxxxx")
/// .sourceAmiRegion("us-west-1")
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AmiCopy
/// properties:
/// name: example
/// sourceAmiId: ami-xxxxxxxx
/// sourceAmiRegion: us-west-1
/// tags:
/// Name: HelloWorld
/// ```
/// <!--End PulumiCodeChooser -->
class AmiCopy extends CustomResource {
  /// Machine architecture for created instances. Defaults to <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span>.
  late final Output<String> architecture;

  /// ARN of the AMI.
  late final Output<String> arn;

  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  late final Output<String> bootMode;

  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String?> deprecationTime;

  /// Longer, human-readable description for the AMI.
  late final Output<String?> description;

  /// ARN of the Outpost to which to copy the AMI.
  /// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
  late final Output<String?> destinationOutpostArn;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  late final Output<List<AmiCopyEbsBlockDevice>> ebsBlockDevices;

  /// Whether enhanced networking with ENA is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> enaSupport;

  /// Whether the destination snapshots of the copied image should be encrypted. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> encrypted;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  late final Output<List<AmiCopyEphemeralBlockDevice>> ephemeralBlockDevices;
  late final Output<String> hypervisor;

  /// Path to an S3 object containing an image manifest, e.g., created
  /// by the `ec2-upload-bundle` command in the EC2 command line tools.
  late final Output<String> imageLocation;
  late final Output<String> imageOwnerAlias;
  late final Output<String> imageType;

  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  late final Output<String> imdsSupport;

  /// ID of the kernel image (AKI) that will be used as the paravirtual
  /// kernel in created instances.
  late final Output<String> kernelId;

  /// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
  late final Output<String> kmsKeyId;

  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  late final Output<String> lastLaunchedTime;
  late final Output<bool> manageEbsSnapshots;

  /// Region-unique name for the AMI.
  late final Output<String> name;
  late final Output<String> ownerId;
  late final Output<String> platform;
  late final Output<String> platformDetails;
  late final Output<bool> public;

  /// ID of an initrd image (ARI) that will be used when booting the
  /// created instances.
  late final Output<String> ramdiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  late final Output<String> rootDeviceName;
  late final Output<String> rootSnapshotId;

  /// Id of the AMI to copy. This id must be valid in the region
  /// given by <span pulumi-lang-nodejs="`sourceAmiRegion`" pulumi-lang-dotnet="`SourceAmiRegion`" pulumi-lang-go="`sourceAmiRegion`" pulumi-lang-python="`source_ami_region`" pulumi-lang-yaml="`sourceAmiRegion`" pulumi-lang-java="`sourceAmiRegion`">`source_ami_region`</span>.
  late final Output<String> sourceAmiId;

  /// Region from which the AMI will be copied. This may be the
  /// same as the AWS provider region in order to create a copy within the same region.
  late final Output<String> sourceAmiRegion;

  /// When set to "simple" (the default), enables enhanced networking
  /// for created instances. No other value is supported at this time.
  late final Output<String> sriovNetSupport;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  late final Output<String> tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store.
  late final Output<String> uefiData;
  late final Output<String> usageOperation;

  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  late final Output<String> virtualizationType;

  AmiCopy(
    String name, {
    AmiCopyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/amiCopy:AmiCopy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.architecture = registerOutput<String>('architecture');
    this.arn = registerOutput<String>('arn');
    this.bootMode = registerOutput<String>('bootMode');
    this.deprecationTime = registerOutput<String?>('deprecationTime');
    this.description = registerOutput<String?>('description');
    this.destinationOutpostArn =
        registerOutput<String?>('destinationOutpostArn');
    this.ebsBlockDevices =
        registerOutput<List<AmiCopyEbsBlockDevice>>('ebsBlockDevices');
    this.enaSupport = registerOutput<bool>('enaSupport');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.ephemeralBlockDevices =
        registerOutput<List<AmiCopyEphemeralBlockDevice>>(
            'ephemeralBlockDevices');
    this.hypervisor = registerOutput<String>('hypervisor');
    this.imageLocation = registerOutput<String>('imageLocation');
    this.imageOwnerAlias = registerOutput<String>('imageOwnerAlias');
    this.imageType = registerOutput<String>('imageType');
    this.imdsSupport = registerOutput<String>('imdsSupport');
    this.kernelId = registerOutput<String>('kernelId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.lastLaunchedTime = registerOutput<String>('lastLaunchedTime');
    this.manageEbsSnapshots = registerOutput<bool>('manageEbsSnapshots');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.platform = registerOutput<String>('platform');
    this.platformDetails = registerOutput<String>('platformDetails');
    this.public = registerOutput<bool>('public');
    this.ramdiskId = registerOutput<String>('ramdiskId');
    this.region = registerOutput<String>('region');
    this.rootDeviceName = registerOutput<String>('rootDeviceName');
    this.rootSnapshotId = registerOutput<String>('rootSnapshotId');
    this.sourceAmiId = registerOutput<String>('sourceAmiId');
    this.sourceAmiRegion = registerOutput<String>('sourceAmiRegion');
    this.sriovNetSupport = registerOutput<String>('sriovNetSupport');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tpmSupport = registerOutput<String>('tpmSupport');
    this.uefiData = registerOutput<String>('uefiData');
    this.usageOperation = registerOutput<String>('usageOperation');
    this.virtualizationType = registerOutput<String>('virtualizationType');
  }
}
