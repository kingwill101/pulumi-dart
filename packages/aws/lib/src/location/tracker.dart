import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracker_args.dart';

/// Provides a Location Service Tracker.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.Tracker("example", {trackerName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.Tracker("example", tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.Tracker("example", new()
///     {
///         TrackerName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := location.NewTracker(ctx, "example", &location.TrackerArgs{
/// 			TrackerName: pulumi.String("example"),
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
/// import com.pulumi.aws.location.Tracker;
/// import com.pulumi.aws.location.TrackerArgs;
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
///         var example = new Tracker("example", TrackerArgs.builder()
///             .trackerName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:Tracker
///     properties:
///       trackerName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.Tracker` resources using the tracker name. For example:
///
/// ```sh
/// $ pulumi import aws:location/tracker:Tracker example example
/// ```
class Tracker extends pulumi.CustomResource {
  /// The timestamp for when the tracker resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;

  /// The optional description for the tracker resource.
  late final pulumi.Output<String?> description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final pulumi.Output<String?> kmsKeyId;

  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  late final pulumi.Output<String?> positionFiltering;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify a resource across all AWS.
  late final pulumi.Output<String> trackerArn;

  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> trackerName;

  /// The timestamp for when the tracker resource was last updated in ISO 8601 format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Tracker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tracker]. {@macro pulumi_location_tracker_tracker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tracker(
    String name, {
    TrackerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:location/tracker:Tracker',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.positionFiltering = registerOutput<String?>('positionFiltering');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackerArn = registerOutput<String>('trackerArn');
    this.trackerName = registerOutput<String>('trackerName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
