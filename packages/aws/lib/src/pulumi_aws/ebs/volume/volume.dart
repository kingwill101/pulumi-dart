import 'package:pulumi/pulumi.dart';
import 'volume_args.dart';

/// Manages a single EBS volume.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.Volume("example", {
/// availabilityZone: "us-west-2a",
/// size: 40,
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.Volume("example",
/// availability_zone="us-west-2a",
/// size=40,
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
/// var example = new Aws.Ebs.Volume("example", new()
/// {
/// AvailabilityZone = "us-west-2a",
/// Size = 40,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Size:             pulumi.Int(40),
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
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
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
/// var example = new Volume("example", VolumeArgs.builder()
/// .availabilityZone("us-west-2a")
/// .size(40)
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:Volume
/// properties:
/// availabilityZone: us-west-2a
/// size: 40
/// tags:
/// Name: HelloWorld
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EBS Volumes using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/volume:Volume id vol-049df61146c4d7901
/// ```
class Volume extends CustomResource {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  late final Output<String> arn;

  /// Availability zone where the EBS volume will exist.
  late final Output<String> availabilityZone;

  /// Timestamp when volume creation was initiated.
  late final Output<String> createTime;

  /// If true, the disk will be encrypted.
  late final Output<bool> encrypted;

  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  late final Output<bool?> finalSnapshot;

  /// Amount of IOPS to provision for the disk. Only valid for <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> or <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  late final Output<int> iops;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  late final Output<String> kmsKeyId;

  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span> and <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> volumes.
  late final Output<bool?> multiAttachEnabled;

  /// Amazon Resource Name (ARN) of the Outpost.
  late final Output<String?> outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Size of the drive in GiBs.
  late final Output<int> size;

  /// A snapshot to base the EBS volume off of.
  late final Output<String> snapshotId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Throughput that the volume supports, in MiB/s. Only valid for <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  late final Output<int> throughput;

  /// Type of EBS volume. Can be <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>, <span pulumi-lang-nodejs="`sc1`" pulumi-lang-dotnet="`Sc1`" pulumi-lang-go="`sc1`" pulumi-lang-python="`sc1`" pulumi-lang-yaml="`sc1`" pulumi-lang-java="`sc1`">`sc1`</span> or <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span> (Default: <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>).
  late final Output<String> type;

  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> is specified.
  ///
  /// > **NOTE:** At least one of <span pulumi-lang-nodejs="`size`" pulumi-lang-dotnet="`Size`" pulumi-lang-go="`size`" pulumi-lang-python="`size`" pulumi-lang-yaml="`size`" pulumi-lang-java="`size`">`size`</span> or <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> is required.
  ///
  /// > **NOTE:** When changing the <span pulumi-lang-nodejs="`size`" pulumi-lang-dotnet="`Size`" pulumi-lang-go="`size`" pulumi-lang-python="`size`" pulumi-lang-yaml="`size`" pulumi-lang-java="`size`">`size`</span>, <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> or <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  late final Output<int?> volumeInitializationRate;

  Volume(
    String name, {
    VolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volume:Volume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.encrypted = Output.createUnknown<bool>();
    this.finalSnapshot = Output.createUnknown<bool?>();
    this.iops = Output.createUnknown<int>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.multiAttachEnabled = Output.createUnknown<bool?>();
    this.outpostArn = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.size = Output.createUnknown<int>();
    this.snapshotId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.throughput = Output.createUnknown<int>();
    this.type = Output.createUnknown<String>();
    this.volumeInitializationRate = Output.createUnknown<int?>();
  }
}
