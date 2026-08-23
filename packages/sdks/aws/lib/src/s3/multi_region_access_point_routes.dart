import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_routes_args.dart';
import 'multi_region_access_point_routes_state.dart';

/// Provides a resource to manage the routing configuration for an S3 Multi-Region Access Point.
///
/// &gt; Note: Destruction of this resource only removes it from state. It __does not__ alter the configured traffic routing percentages.
///
/// ## Example Usage
///
/// ### Active-Active Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.s3.Bucket("primary", {bucket: "example-bucket-primary"});
/// const secondary = new aws.s3.Bucket("secondary", {bucket: "example-bucket-secondary"});
/// const example = new aws.s3control.MultiRegionAccessPoint("example", {details: {
///     name: "example",
///     regions: [
///         {
///             bucket: primary.bucket,
///         },
///         {
///             bucket: secondary.bucket,
///         },
///     ],
/// }});
/// const exampleMultiRegionAccessPointRoutes = new aws.s3control.MultiRegionAccessPointRoutes("example", {
///     mrap: example.arn,
///     routes: [
///         {
///             bucket: primary.bucket,
///             region: primary.bucketRegion,
///             trafficDialPercentage: 100,
///         },
///         {
///             bucket: secondary.bucket,
///             region: secondary.bucketRegion,
///             trafficDialPercentage: 100,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.s3.Bucket("primary", bucket="example-bucket-primary")
/// secondary = aws.s3.Bucket("secondary", bucket="example-bucket-secondary")
/// example = aws.s3control.MultiRegionAccessPoint("example", details={
///     "name": "example",
///     "regions": [
///         {
///             "bucket": primary.bucket,
///         },
///         {
///             "bucket": secondary.bucket,
///         },
///     ],
/// })
/// example_multi_region_access_point_routes = aws.s3control.MultiRegionAccessPointRoutes("example",
///     mrap=example.arn,
///     routes=[
///         {
///             "bucket": primary.bucket,
///             "region": primary.bucket_region,
///             "traffic_dial_percentage": 100,
///         },
///         {
///             "bucket": secondary.bucket,
///             "region": secondary.bucket_region,
///             "traffic_dial_percentage": 100,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.S3.Bucket("primary", new()
///     {
///         BucketName = "example-bucket-primary",
///     });
///
///     var secondary = new Aws.S3.Bucket("secondary", new()
///     {
///         BucketName = "example-bucket-secondary",
///     });
///
///     var example = new Aws.S3Control.MultiRegionAccessPoint("example", new()
///     {
///         Details = new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsArgs
///         {
///             Name = "example",
///             Regions = new[]
///             {
///                 new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsRegionArgs
///                 {
///                     Bucket = primary.BucketName,
///                 },
///                 new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsRegionArgs
///                 {
///                     Bucket = secondary.BucketName,
///                 },
///             },
///         },
///     });
///
///     var exampleMultiRegionAccessPointRoutes = new Aws.S3Control.MultiRegionAccessPointRoutes("example", new()
///     {
///         Mrap = example.Arn,
///         Routes = new[]
///         {
///             new Aws.S3Control.Inputs.MultiRegionAccessPointRoutesRouteArgs
///             {
///                 Bucket = primary.BucketName,
///                 Region = primary.BucketRegion,
///                 TrafficDialPercentage = 100,
///             },
///             new Aws.S3Control.Inputs.MultiRegionAccessPointRoutesRouteArgs
///             {
///                 Bucket = secondary.BucketName,
///                 Region = secondary.BucketRegion,
///                 TrafficDialPercentage = 100,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := s3.NewBucket(ctx, "primary", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket-primary"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := s3.NewBucket(ctx, "secondary", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket-secondary"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := s3control.NewMultiRegionAccessPoint(ctx, "example", &s3control.MultiRegionAccessPointArgs{
/// 			Details: &s3control.MultiRegionAccessPointDetailsArgs{
/// 				Name: pulumi.String("example"),
/// 				Regions: s3control.MultiRegionAccessPointDetailsRegionArray{
/// 					&s3control.MultiRegionAccessPointDetailsRegionArgs{
/// 						Bucket: primary.Bucket,
/// 					},
/// 					&s3control.MultiRegionAccessPointDetailsRegionArgs{
/// 						Bucket: secondary.Bucket,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewMultiRegionAccessPointRoutes(ctx, "example", &s3control.MultiRegionAccessPointRoutesArgs{
/// 			Mrap: example.Arn,
/// 			Routes: s3control.MultiRegionAccessPointRoutesRouteArray{
/// 				&s3control.MultiRegionAccessPointRoutesRouteArgs{
/// 					Bucket:                primary.Bucket,
/// 					Region:                primary.BucketRegion,
/// 					TrafficDialPercentage: pulumi.Int(100),
/// 				},
/// 				&s3control.MultiRegionAccessPointRoutesRouteArgs{
/// 					Bucket:                secondary.Bucket,
/// 					Region:                secondary.BucketRegion,
/// 					TrafficDialPercentage: pulumi.Int(100),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "primary" {
///   bucket = "example-bucket-primary"
/// }
/// resource "aws_s3_bucket" "secondary" {
///   bucket = "example-bucket-secondary"
/// }
/// resource "aws_s3control_multiregionaccesspoint" "example" {
///   details = {
///     name = "example"
///     regions = [{
///       "bucket" = aws_s3_bucket.primary.bucket
///       }, {
///       "bucket" = aws_s3_bucket.secondary.bucket
///     }]
///   }
/// }
/// resource "aws_s3control_multiregionaccesspointroutes" "example" {
///   mrap = aws_s3control_multiregionaccesspoint.example.arn
///   routes {
///     bucket                  = aws_s3_bucket.primary.bucket
///     region                  = aws_s3_bucket.primary.bucket_region
///     traffic_dial_percentage = 100
///   }
///   routes {
///     bucket                  = aws_s3_bucket.secondary.bucket
///     region                  = aws_s3_bucket.secondary.bucket_region
///     traffic_dial_percentage = 100
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
/// import com.pulumi.aws.s3control.MultiRegionAccessPointRoutes;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointRoutesArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointRoutesRouteArgs;
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
///         var primary = new Bucket("primary", BucketArgs.builder()
///             .bucket("example-bucket-primary")
///             .build());
///
///         var secondary = new Bucket("secondary", BucketArgs.builder()
///             .bucket("example-bucket-secondary")
///             .build());
///
///         var example = new MultiRegionAccessPoint("example", MultiRegionAccessPointArgs.builder()
///             .details(MultiRegionAccessPointDetailsArgs.builder()
///                 .name("example")
///                 .regions(
///                     MultiRegionAccessPointDetailsRegionArgs.builder()
///                         .bucket(primary.bucket())
///                         .build(),
///                     MultiRegionAccessPointDetailsRegionArgs.builder()
///                         .bucket(secondary.bucket())
///                         .build())
///                 .build())
///             .build());
///
///         var exampleMultiRegionAccessPointRoutes = new MultiRegionAccessPointRoutes("exampleMultiRegionAccessPointRoutes", MultiRegionAccessPointRoutesArgs.builder()
///             .mrap(example.arn())
///             .routes(
///                 MultiRegionAccessPointRoutesRouteArgs.builder()
///                     .bucket(primary.bucket())
///                     .region(primary.bucketRegion())
///                     .trafficDialPercentage(100)
///                     .build(),
///                 MultiRegionAccessPointRoutesRouteArgs.builder()
///                     .bucket(secondary.bucket())
///                     .region(secondary.bucketRegion())
///                     .trafficDialPercentage(100)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-bucket-primary
///   secondary:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-bucket-secondary
///   example:
///     type: aws:s3control:MultiRegionAccessPoint
///     properties:
///       details:
///         name: example
///         regions:
///           - bucket: ${primary.bucket}
///           - bucket: ${secondary.bucket}
///   exampleMultiRegionAccessPointRoutes:
///     type: aws:s3control:MultiRegionAccessPointRoutes
///     name: example
///     properties:
///       mrap: ${example.arn}
///       routes:
///         - bucket: ${primary.bucket}
///           region: ${primary.bucketRegion}
///           trafficDialPercentage: 100
///         - bucket: ${secondary.bucket}
///           region: ${secondary.bucketRegion}
///           trafficDialPercentage: 100
/// ```
///
///
/// ### Failover Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.MultiRegionAccessPointRoutes("example", {
///     mrap: exampleAwsS3controlMultiRegionAccessPoint.arn,
///     routes: [
///         {
///             bucket: primary.bucket,
///             region: primary.bucketRegion,
///             trafficDialPercentage: 0,
///         },
///         {
///             bucket: secondary.bucket,
///             region: secondary.bucketRegion,
///             trafficDialPercentage: 100,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.MultiRegionAccessPointRoutes("example",
///     mrap=example_aws_s3control_multi_region_access_point["arn"],
///     routes=[
///         {
///             "bucket": primary["bucket"],
///             "region": primary["bucketRegion"],
///             "traffic_dial_percentage": 0,
///         },
///         {
///             "bucket": secondary["bucket"],
///             "region": secondary["bucketRegion"],
///             "traffic_dial_percentage": 100,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.MultiRegionAccessPointRoutes("example", new()
///     {
///         Mrap = exampleAwsS3controlMultiRegionAccessPoint.Arn,
///         Routes = new[]
///         {
///             new Aws.S3Control.Inputs.MultiRegionAccessPointRoutesRouteArgs
///             {
///                 Bucket = primary.Bucket,
///                 Region = primary.BucketRegion,
///                 TrafficDialPercentage = 0,
///             },
///             new Aws.S3Control.Inputs.MultiRegionAccessPointRoutesRouteArgs
///             {
///                 Bucket = secondary.Bucket,
///                 Region = secondary.BucketRegion,
///                 TrafficDialPercentage = 100,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.NewMultiRegionAccessPointRoutes(ctx, "example", &s3control.MultiRegionAccessPointRoutesArgs{
/// 			Mrap: pulumi.Any(exampleAwsS3controlMultiRegionAccessPoint.Arn),
/// 			Routes: s3control.MultiRegionAccessPointRoutesRouteArray{
/// 				&s3control.MultiRegionAccessPointRoutesRouteArgs{
/// 					Bucket:                pulumi.Any(primary.Bucket),
/// 					Region:                pulumi.Any(primary.BucketRegion),
/// 					TrafficDialPercentage: pulumi.Int(0),
/// 				},
/// 				&s3control.MultiRegionAccessPointRoutesRouteArgs{
/// 					Bucket:                pulumi.Any(secondary.Bucket),
/// 					Region:                pulumi.Any(secondary.BucketRegion),
/// 					TrafficDialPercentage: pulumi.Int(100),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3control_multiregionaccesspointroutes" "example" {
///   mrap = exampleAwsS3controlMultiRegionAccessPoint.arn
///   routes {
///     bucket                  = primary.bucket
///     region                  = primary.bucketRegion
///     traffic_dial_percentage = 0
///   }
///   routes {
///     bucket                  = secondary.bucket
///     region                  = secondary.bucketRegion
///     traffic_dial_percentage = 100
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointRoutes;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointRoutesArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointRoutesRouteArgs;
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
///         var example = new MultiRegionAccessPointRoutes("example", MultiRegionAccessPointRoutesArgs.builder()
///             .mrap(exampleAwsS3controlMultiRegionAccessPoint.arn())
///             .routes(
///                 MultiRegionAccessPointRoutesRouteArgs.builder()
///                     .bucket(primary.bucket())
///                     .region(primary.bucketRegion())
///                     .trafficDialPercentage(0)
///                     .build(),
///                 MultiRegionAccessPointRoutesRouteArgs.builder()
///                     .bucket(secondary.bucket())
///                     .region(secondary.bucketRegion())
///                     .trafficDialPercentage(100)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:MultiRegionAccessPointRoutes
///     properties:
///       mrap: ${exampleAwsS3controlMultiRegionAccessPoint.arn}
///       routes:
///         - bucket: ${primary.bucket}
///           region: ${primary.bucketRegion}
///           trafficDialPercentage: 0
///         - bucket: ${secondary.bucket}
///           region: ${secondary.bucketRegion}
///           trafficDialPercentage: 100
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `mrap` (String) ARN of the Multi-Region Access Point.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Multi-Region Access Point Routes using the `mrap` argument. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/multiRegionAccessPointRoutes:MultiRegionAccessPointRoutes example arn:aws:s3::0123456789012:accesspoint/example
/// ```
class MultiRegionAccessPointRoutes extends pulumi.CustomResource {
  /// AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;
  /// ARN of the Multi-Region Access Point.
  late final pulumi.Output<String> mrap;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Route configurations. At least one route must have a `trafficDialPercentage` of `100`. See `route` below.
  late final pulumi.Output<List<Map<String, dynamic>>> routes;

  /// Creates a new [MultiRegionAccessPointRoutes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiRegionAccessPointRoutes]. {@macro pulumi_s3_control_multi_region_access_point_routes_multi_region_access_point_routes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiRegionAccessPointRoutes(
    String name, {
    MultiRegionAccessPointRoutesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPointRoutes:MultiRegionAccessPointRoutes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    mrap = registerOutput<String>('mrap');
    region = registerOutput<String>('region');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
  }

  /// Gets an existing [MultiRegionAccessPointRoutes] resource's state with the given [name] and [id].
  static MultiRegionAccessPointRoutes get(
    String name,
    pulumi.Input<String> id, {
    MultiRegionAccessPointRoutesState? state,
  }) {
    return MultiRegionAccessPointRoutes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MultiRegionAccessPointRoutes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPointRoutes:MultiRegionAccessPointRoutes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    mrap = registerOutput<String>('mrap');
    region = registerOutput<String>('region');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
  }
}
