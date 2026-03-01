import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_datafeed_subscription_args.dart';

/// > **Note:** There is only a single subscription allowed per account.
///
/// To help you understand the charges for your Spot instances, Amazon EC2 provides a data feed that describes your Spot instance usage and pricing.
/// This data feed is sent to an Amazon S3 bucket that you specify when you subscribe to the data feed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.s3.Bucket("default", {bucket: "tf-spot-datafeed"});
/// const defaultSpotDatafeedSubscription = new aws.ec2.SpotDatafeedSubscription("default", {
///     bucket: _default.id,
///     prefix: "my_subdirectory",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.s3.Bucket("default", bucket="tf-spot-datafeed")
/// default_spot_datafeed_subscription = aws.ec2.SpotDatafeedSubscription("default",
///     bucket=default.id,
///     prefix="my_subdirectory")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.S3.Bucket("default", new()
///     {
///         BucketName = "tf-spot-datafeed",
///     });
///
///     var defaultSpotDatafeedSubscription = new Aws.Ec2.SpotDatafeedSubscription("default", new()
///     {
///         Bucket = @default.Id,
///         Prefix = "my_subdirectory",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := s3.NewBucket(ctx, "default", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-spot-datafeed"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSpotDatafeedSubscription(ctx, "default", &ec2.SpotDatafeedSubscriptionArgs{
/// 			Bucket: _default.ID(),
/// 			Prefix: pulumi.String("my_subdirectory"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.ec2.SpotDatafeedSubscription;
/// import com.pulumi.aws.ec2.SpotDatafeedSubscriptionArgs;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .bucket("tf-spot-datafeed")
///             .build());
///
///         var defaultSpotDatafeedSubscription = new SpotDatafeedSubscription("defaultSpotDatafeedSubscription", SpotDatafeedSubscriptionArgs.builder()
///             .bucket(default_.id())
///             .prefix("my_subdirectory")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-spot-datafeed
///   defaultSpotDatafeedSubscription:
///     type: aws:ec2:SpotDatafeedSubscription
///     name: default
///     properties:
///       bucket: ${default.id}
///       prefix: my_subdirectory
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a Spot Datafeed Subscription using the word `spot-datafeed-subscription`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/spotDatafeedSubscription:SpotDatafeedSubscription mysubscription spot-datafeed-subscription
/// ```
class SpotDatafeedSubscription extends pulumi.CustomResource {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  late final pulumi.Output<String> bucket;

  /// Path of folder inside bucket to place spot pricing data.
  late final pulumi.Output<String?> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [SpotDatafeedSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpotDatafeedSubscription]. {@macro pulumi_ec2_spot_datafeed_subscription_spot_datafeed_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpotDatafeedSubscription(
    String name, {
    SpotDatafeedSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/spotDatafeedSubscription:SpotDatafeedSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bucket = registerOutput<String>('bucket');
    this.prefix = registerOutput<String?>('prefix');
    this.region = registerOutput<String>('region');
  }
}
