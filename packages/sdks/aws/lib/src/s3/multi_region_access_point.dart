import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_args.dart';
import 'multi_region_access_point_details.dart';
import 'multi_region_access_point_state.dart';

/// Provides a resource to manage an S3 Multi-Region Access Point associated with specified buckets.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// For more information, see the documentation on [Multi-Region Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPoints.html).
///
/// ## Example Usage
///
/// ### Multiple AWS Buckets in Different Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooBucket = new aws.s3.Bucket("foo_bucket", {bucket: "example-bucket-foo"});
/// const barBucket = new aws.s3.Bucket("bar_bucket", {bucket: "example-bucket-bar"});
/// const example = new aws.s3control.MultiRegionAccessPoint("example", {details: {
///     regions: [
///         {
///             bucket: fooBucket.id,
///         },
///         {
///             bucket: barBucket.id,
///         },
///     ],
///     name: "example",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_bucket = aws.s3.Bucket("foo_bucket", bucket="example-bucket-foo")
/// bar_bucket = aws.s3.Bucket("bar_bucket", bucket="example-bucket-bar")
/// example = aws.s3control.MultiRegionAccessPoint("example", details={
///     "regions": [
///         {
///             "bucket": foo_bucket.id,
///         },
///         {
///             "bucket": bar_bucket.id,
///         },
///     ],
///     "name": "example",
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
///     var fooBucket = new Aws.S3.Bucket("foo_bucket", new()
///     {
///         BucketName = "example-bucket-foo",
///     });
///
///     var barBucket = new Aws.S3.Bucket("bar_bucket", new()
///     {
///         BucketName = "example-bucket-bar",
///     });
///
///     var example = new Aws.S3Control.MultiRegionAccessPoint("example", new()
///     {
///         Details = new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsArgs
///         {
///             Regions = new[]
///             {
///                 new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsRegionArgs
///                 {
///                     Bucket = fooBucket.Id,
///                 },
///                 new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsRegionArgs
///                 {
///                     Bucket = barBucket.Id,
///                 },
///             },
///             Name = "example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fooBucket, err := s3.NewBucket(ctx, "foo_bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket-foo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		barBucket, err := s3.NewBucket(ctx, "bar_bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket-bar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewMultiRegionAccessPoint(ctx, "example", &s3control.MultiRegionAccessPointArgs{
/// 			Details: &s3control.MultiRegionAccessPointDetailsArgs{
/// 				Regions: s3control.MultiRegionAccessPointDetailsRegionArray{
/// 					&s3control.MultiRegionAccessPointDetailsRegionArgs{
/// 						Bucket: fooBucket.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					&s3control.MultiRegionAccessPointDetailsRegionArgs{
/// 						Bucket: barBucket.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 				Name: pulumi.String("example"),
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
/// resource "aws_s3_bucket" "foo_bucket" {
///   bucket = "example-bucket-foo"
/// }
/// resource "aws_s3_bucket" "bar_bucket" {
///   bucket = "example-bucket-bar"
/// }
/// resource "aws_s3control_multiregionaccesspoint" "example" {
///   details = {
///     regions = [{
///       "bucket" = aws_s3_bucket.foo_bucket.id
///       }, {
///       "bucket" = aws_s3_bucket.bar_bucket.id
///     }]
///     name = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3control.MultiRegionAccessPoint;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointDetailsArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointDetailsRegionArgs;
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
///         var fooBucket = new Bucket("fooBucket", BucketArgs.builder()
///             .bucket("example-bucket-foo")
///             .build());
///
///         var barBucket = new Bucket("barBucket", BucketArgs.builder()
///             .bucket("example-bucket-bar")
///             .build());
///
///         var example = new MultiRegionAccessPoint("example", MultiRegionAccessPointArgs.builder()
///             .details(MultiRegionAccessPointDetailsArgs.builder()
///                 .regions(
///                     MultiRegionAccessPointDetailsRegionArgs.builder()
///                         .bucket(fooBucket.id())
///                         .build(),
///                     MultiRegionAccessPointDetailsRegionArgs.builder()
///                         .bucket(barBucket.id())
///                         .build())
///                 .name("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooBucket:
///     type: aws:s3:Bucket
///     name: foo_bucket
///     properties:
///       bucket: example-bucket-foo
///   barBucket:
///     type: aws:s3:Bucket
///     name: bar_bucket
///     properties:
///       bucket: example-bucket-bar
///   example:
///     type: aws:s3control:MultiRegionAccessPoint
///     properties:
///       details:
///         regions:
///           - bucket: ${fooBucket.id}
///           - bucket: ${barBucket.id}
///         name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the Multi-Region Access Point.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Multi-Region Access Points using the `accountId` and `name` of the Multi-Region Access Point separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint example 123456789012:example
/// ```
class MultiRegionAccessPoint extends pulumi.CustomResource {
  /// AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;
  /// Alias for the Multi-Region Access Point.
  late final pulumi.Output<String> alias;
  /// ARN of the Multi-Region Access Point.
  late final pulumi.Output<String> arn;
  /// Configuration block containing details about the Multi-Region Access Point. See `details` Block below.
  late final pulumi.Output<MultiRegionAccessPointDetails> details;
  /// DNS domain name of the S3 Multi-Region Access Point in the format _`alias`_.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on [Multi-Region Access Point Requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRequests.html).
  late final pulumi.Output<String> domainName;
  /// Name of the Multi-Region Access Point.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the Multi-Region Access Point. One of: `READY`, `INCONSISTENT_ACROSS_REGIONS`, `CREATING`, `PARTIALLY_CREATED`, `PARTIALLY_DELETED`, `DELETING`.
  late final pulumi.Output<String> status;

  /// Creates a new [MultiRegionAccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiRegionAccessPoint]. {@macro pulumi_s3_control_multi_region_access_point_multi_region_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiRegionAccessPoint(
    String name, {
    MultiRegionAccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionAccessPointDetails>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionAccessPointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [MultiRegionAccessPoint] resource's state with the given [name] and [id].
  static MultiRegionAccessPoint get(
    String name,
    pulumi.Input<String> id, {
    MultiRegionAccessPointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MultiRegionAccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MultiRegionAccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionAccessPointDetails>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionAccessPointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [MultiRegionAccessPoint] resource.
  MultiRegionAccessPoint.reference(String urn)
    : super(
        'aws:s3control/multiRegionAccessPoint:MultiRegionAccessPoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionAccessPointDetails>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionAccessPointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
