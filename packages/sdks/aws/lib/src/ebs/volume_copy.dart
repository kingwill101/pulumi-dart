import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_copy_args.dart';
import 'volume_copy_state.dart';
import 'volume_copy_timeouts.dart';

/// Creates a copy of an existing Amazon EBS volume.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const source = new aws.ebs.Volume("source", {
///     availabilityZone: "us-west-2a",
///     size: 8,
/// });
/// const example = new aws.ebs.VolumeCopy("example", {
///     sourceVolumeId: source.id,
///     volumeType: "gp3",
///     size: 20,
///     iops: 3000,
///     throughput: 125,
///     tags: {
///         Name: "example-copy",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// source = aws.ebs.Volume("source",
///     availability_zone="us-west-2a",
///     size=8)
/// example = aws.ebs.VolumeCopy("example",
///     source_volume_id=source.id,
///     volume_type="gp3",
///     size=20,
///     iops=3000,
///     throughput=125,
///     tags={
///         "Name": "example-copy",
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
///     var source = new Aws.Ebs.Volume("source", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Size = 8,
///     });
///
///     var example = new Aws.Ebs.VolumeCopy("example", new()
///     {
///         SourceVolumeId = source.Id,
///         VolumeType = "gp3",
///         Size = 20,
///         Iops = 3000,
///         Throughput = 125,
///         Tags =
///         {
///             { "Name", "example-copy" },
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
/// 		source, err := ebs.NewVolume(ctx, "source", &ebs.VolumeArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Size:             pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewVolumeCopy(ctx, "example", &ebs.VolumeCopyArgs{
/// 			SourceVolumeId: source.ID().ToIDOutput().ToStringOutput(),
/// 			VolumeType:     pulumi.String("gp3"),
/// 			Size:           pulumi.Int(20),
/// 			Iops:           pulumi.Int(3000),
/// 			Throughput:     pulumi.Int(125),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-copy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ebs_volume" "source" {
///   availability_zone = "us-west-2a"
///   size              = 8
/// }
/// resource "aws_ebs_volumecopy" "example" {
///   source_volume_id = aws_ebs_volume.source.id
///   volume_type      = "gp3"
///   size             = 20
///   iops             = 3000
///   throughput       = 125
///   tags = {
///     "Name" = "example-copy"
///   }
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
/// import com.pulumi.aws.ebs.VolumeCopy;
/// import com.pulumi.aws.ebs.VolumeCopyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var source = new Volume("source", VolumeArgs.builder()
///             .availabilityZone("us-west-2a")
///             .size(8)
///             .build());
///
///         var example = new VolumeCopy("example", VolumeCopyArgs.builder()
///             .sourceVolumeId(source.id())
///             .volumeType("gp3")
///             .size(20)
///             .iops(3000)
///             .throughput(125)
///             .tags(Map.of("Name", "example-copy"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source:
///     type: aws:ebs:Volume
///     properties:
///       availabilityZone: us-west-2a
///       size: 8
///   example:
///     type: aws:ebs:VolumeCopy
///     properties:
///       sourceVolumeId: ${source.id}
///       volumeType: gp3
///       size: 20
///       iops: 3000
///       throughput: 125
///       tags:
///         Name: example-copy
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Volume ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an EBS Volume Copy using the volume ID. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/volumeCopy:VolumeCopy example vol-049df61146c4d7901
/// ```
class VolumeCopy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the copied EBS volume.
  late final pulumi.Output<String> arn;
  /// Availability Zone for the copied volume.
  late final pulumi.Output<String> availabilityZone;
  /// Provisioned IOPS for the copied volume. Use only with volume types that support provisioned IOPS, such as `gp3`.
  late final pulumi.Output<int> iops;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration. This must match the Region of the source EBS volume referenced by `sourceVolumeId`.
  late final pulumi.Output<String> region;
  /// Size of the copied volume, in GiB.
  late final pulumi.Output<int> size;
  /// ID of the source EBS volume to copy. Changing this value forces replacement of the resource.
  late final pulumi.Output<String> sourceVolumeId;
  /// A map of tags to assign to the copied volume. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Throughput for the copied volume, in MiB/s. Valid only when `volumeType` is `gp3`.
  late final pulumi.Output<int> throughput;
  late final pulumi.Output<VolumeCopyTimeouts?> timeouts;
  /// Type of the copied EBS volume. Valid values include `gp2`, `gp3`, `io1`, `io2`, `sc1`, `st1`, and `standard`.
  ///
  /// &gt; **NOTE:** When changing the `size`, `iops` or `type` of a volume, there are [considerations](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html) to be aware of.
  late final pulumi.Output<String> volumeType;

  /// Creates a new [VolumeCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeCopy]. {@macro pulumi_ebs_volume_copy_volume_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeCopy(
    String name, {
    VolumeCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volumeCopy:VolumeCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    iops = registerOutput<int>('iops');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    sourceVolumeId = registerOutput<String>('sourceVolumeId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughput = registerOutput<int>('throughput');
    timeouts = registerOutput<VolumeCopyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    volumeType = registerOutput<String>('volumeType');
  }

  /// Gets an existing [VolumeCopy] resource's state with the given [name] and [id].
  static VolumeCopy get(
    String name,
    pulumi.Input<String> id, {
    VolumeCopyState? state,
  }) {
    return VolumeCopy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeCopy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/volumeCopy:VolumeCopy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    iops = registerOutput<int>('iops');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    sourceVolumeId = registerOutput<String>('sourceVolumeId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughput = registerOutput<int>('throughput');
    timeouts = registerOutput<VolumeCopyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCopyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    volumeType = registerOutput<String>('volumeType');
  }
}
