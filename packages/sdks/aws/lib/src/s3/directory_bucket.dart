import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_bucket_args.dart';
import 'directory_bucket_location.dart';
import 'directory_bucket_state.dart';

/// Provides an Amazon S3 Express directory bucket resource.
///
/// ## Example Usage
///
/// ### Availability Zone
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.DirectoryBucket("example", {
///     location: {
///         name: "usw2-az1",
///     },
///     bucket: "example--usw2-az1--x-s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.DirectoryBucket("example",
///     location={
///         "name": "usw2-az1",
///     },
///     bucket="example--usw2-az1--x-s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.DirectoryBucket("example", new()
///     {
///         Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
///         {
///             Name = "usw2-az1",
///         },
///         Bucket = "example--usw2-az1--x-s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// 			Location: &s3.DirectoryBucketLocationArgs{
/// 				Name: pulumi.String("usw2-az1"),
/// 			},
/// 			Bucket: pulumi.String("example--usw2-az1--x-s3"),
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
/// resource "aws_s3_directorybucket" "example" {
///   location = {
///     name = "usw2-az1"
///   }
///   bucket = "example--usw2-az1--x-s3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
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
///         var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
///             .location(DirectoryBucketLocationArgs.builder()
///                 .name("usw2-az1")
///                 .build())
///             .bucket("example--usw2-az1--x-s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:DirectoryBucket
///     properties:
///       location:
///         name: usw2-az1
///       bucket: example--usw2-az1--x-s3
/// ```
///
///
/// ### Dedicated Local Zone
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLocalZone = new aws.s3.DirectoryBucket("example_local_zone", {
///     location: {
///         name: "usw2-xxx-lz1",
///         type: "LocalZone",
///     },
///     bucket: "example--usw2-xxx-lz1--x-s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_local_zone = aws.s3.DirectoryBucket("example_local_zone",
///     location={
///         "name": "usw2-xxx-lz1",
///         "type": "LocalZone",
///     },
///     bucket="example--usw2-xxx-lz1--x-s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLocalZone = new Aws.S3.DirectoryBucket("example_local_zone", new()
///     {
///         Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
///         {
///             Name = "usw2-xxx-lz1",
///             Type = "LocalZone",
///         },
///         Bucket = "example--usw2-xxx-lz1--x-s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewDirectoryBucket(ctx, "example_local_zone", &s3.DirectoryBucketArgs{
/// 			Location: &s3.DirectoryBucketLocationArgs{
/// 				Name: pulumi.String("usw2-xxx-lz1"),
/// 				Type: pulumi.String("LocalZone"),
/// 			},
/// 			Bucket: pulumi.String("example--usw2-xxx-lz1--x-s3"),
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
/// resource "aws_s3_directorybucket" "example_local_zone" {
///   location = {
///     name = "usw2-xxx-lz1"
///     type = "LocalZone"
///   }
///   # LocalZone ID
///   bucket = "example--usw2-xxx-lz1--x-s3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
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
///         var exampleLocalZone = new DirectoryBucket("exampleLocalZone", DirectoryBucketArgs.builder()
///             .location(DirectoryBucketLocationArgs.builder()
///                 .name("usw2-xxx-lz1")
///                 .type("LocalZone")
///                 .build())
///             .bucket("example--usw2-xxx-lz1--x-s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLocalZone:
///     type: aws:s3:DirectoryBucket
///     name: example_local_zone
///     properties:
///       location:
///         name: usw2-xxx-lz1
///         type: LocalZone
///       bucket: example--usw2-xxx-lz1--x-s3
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the S3 Directory Bucket.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket using `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/directoryBucket:DirectoryBucket example example--usw2-az1--x-s3
/// ```
class DirectoryBucket extends pulumi.CustomResource {
  /// ARN of the bucket.
  late final pulumi.Output<String> arn;
  /// Name of the bucket. The name must be in the format `[bucketName]--[azid]--x-s3`. Use the `aws.s3.Bucket` resource to manage general purpose buckets.
  late final pulumi.Output<String> bucket;
  /// Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  late final pulumi.Output<String> dataRedundancy;
  /// Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool> forceDestroy;
  /// Bucket location. See Location below for more details.
  late final pulumi.Output<DirectoryBucketLocation> location;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the bucket. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Bucket type. Valid values: `Directory`.
  late final pulumi.Output<String> type;

  /// Creates a new [DirectoryBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryBucket]. {@macro pulumi_s3_directory_bucket_directory_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryBucket(
    String name, {
    DirectoryBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/directoryBucket:DirectoryBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    dataRedundancy = registerOutput<String>('dataRedundancy');
    forceDestroy = registerOutput<bool>('forceDestroy');
    location = registerOutput<DirectoryBucketLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DirectoryBucket] resource's state with the given [name] and [id].
  static DirectoryBucket get(
    String name,
    pulumi.Input<String> id, {
    DirectoryBucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DirectoryBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DirectoryBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/directoryBucket:DirectoryBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    dataRedundancy = registerOutput<String>('dataRedundancy');
    forceDestroy = registerOutput<bool>('forceDestroy');
    location = registerOutput<DirectoryBucketLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DirectoryBucket] resource.
  DirectoryBucket.reference(String urn)
    : super(
        'aws:s3/directoryBucket:DirectoryBucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    dataRedundancy = registerOutput<String>('dataRedundancy');
    forceDestroy = registerOutput<bool>('forceDestroy');
    location = registerOutput<DirectoryBucketLocation>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryBucketLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
