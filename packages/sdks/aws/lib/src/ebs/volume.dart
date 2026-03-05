import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_state.dart';

/// Manages a single EBS volume.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.Volume("example", {
///     availabilityZone: "us-west-2a",
///     size: 40,
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.Volume("example",
///     availability_zone="us-west-2a",
///     size=40,
///     tags={
///         "Name": "HelloWorld",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ebs.Volume("example", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Size = 40,
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Size:             pulumi.Int(40),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Volume("example", VolumeArgs.builder()
///             .availabilityZone("us-west-2a")
///             .size(40)
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:Volume
///     properties:
///       availabilityZone: us-west-2a
///       size: 40
///       tags:
///         Name: HelloWorld
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EBS Volumes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/volume:Volume id vol-049df61146c4d7901
/// ```
class Volume extends pulumi.CustomResource {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  late final pulumi.Output<String> arn;
  /// Availability zone where the EBS volume will exist.
  late final pulumi.Output<String> availabilityZone;
  /// Timestamp when volume creation was initiated.
  late final pulumi.Output<String> createTime;
  /// If true, the disk will be encrypted.
  late final pulumi.Output<bool> encrypted;
  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  late final pulumi.Output<bool?> finalSnapshot;
  /// Amount of IOPS to provision for the disk. Only valid for `type` of `io1`, `io2` or `gp3`.
  late final pulumi.Output<int> iops;
  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  late final pulumi.Output<String> kmsKeyId;
  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on `io1` and `io2` volumes.
  late final pulumi.Output<bool?> multiAttachEnabled;
  /// Amazon Resource Name (ARN) of the Outpost.
  late final pulumi.Output<String?> outpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Size of the drive in GiBs.
  late final pulumi.Output<int> size;
  /// A snapshot to base the EBS volume off of.
  late final pulumi.Output<String> snapshotId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Throughput that the volume supports, in MiB/s. Only valid for `type` of `gp3`.
  late final pulumi.Output<int> throughput;
  /// Type of EBS volume. Can be `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1` (Default: `gp2`).
  late final pulumi.Output<String> type;
  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if `snapshot_id` is specified.
  ///
  /// &gt; **NOTE:** At least one of `size` or `snapshot_id` is required.
  ///
  /// &gt; **NOTE:** When changing the `size`, `iops` or `type` of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  late final pulumi.Output<int?> volumeInitializationRate;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_ebs_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    createTime = registerOutput<String>('createTime');
    encrypted = registerOutput<bool>('encrypted');
    finalSnapshot = registerOutput<bool?>('finalSnapshot');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    multiAttachEnabled = registerOutput<bool?>('multiAttachEnabled');
    outpostArn = registerOutput<String?>('outpostArn');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String>('snapshotId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughput = registerOutput<int>('throughput');
    type = registerOutput<String>('type');
    volumeInitializationRate = registerOutput<int?>('volumeInitializationRate');
  }

  /// Gets an existing [Volume] resource's state with the given [name] and [id].
  static Volume get(
    String name,
    pulumi.Input<String> id, {
    VolumeState? state,
  }) {
    return Volume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Volume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    createTime = registerOutput<String>('createTime');
    encrypted = registerOutput<bool>('encrypted');
    finalSnapshot = registerOutput<bool?>('finalSnapshot');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    multiAttachEnabled = registerOutput<bool?>('multiAttachEnabled');
    outpostArn = registerOutput<String?>('outpostArn');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String>('snapshotId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughput = registerOutput<int>('throughput');
    type = registerOutput<String>('type');
    volumeInitializationRate = registerOutput<int?>('volumeInitializationRate');
  }
}
