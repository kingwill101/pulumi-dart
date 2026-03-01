import 'package:pulumi/pulumi.dart' as pulumi;
import 'segment_args.dart';

/// Provides a CloudWatch Evidently Segment resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
///     name: "example",
///     pattern: "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///     tags: {
///         Key1: "example Segment",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
///     name="example",
///     pattern="{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///     tags={
///         "Key1": "example Segment",
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
///     var example = new Aws.Evidently.Segment("example", new()
///     {
///         Name = "example",
///         Pattern = "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///         Tags =
///         {
///             { "Key1", "example Segment" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// 			Name:    pulumi.String("example"),
/// 			Pattern: pulumi.String("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}"),
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Segment"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
///         var example = new Segment("example", SegmentArgs.builder()
///             .name("example")
///             .pattern("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}")
///             .tags(Map.of("Key1", "example Segment"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Segment
///     properties:
///       name: example
///       pattern: '{"Price":[{"numeric":[">",10,"<=",20]}]}'
///       tags:
///         Key1: example Segment
/// ```
///
///
/// ### With JSON object in pattern
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
///     name: "example",
///     pattern: `  {
///     \\"Price\\": [
///       {
///         \\"numeric\\": [\\">\\",10,\\"<=\\",20]
///       }
///     ]
///   }
/// `,
///     tags: {
///         Key1: "example Segment",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
///     name="example",
///     pattern="""  {
///     \"Price\": [
///       {
///         \"numeric\": [\">\",10,\"<=\",20]
///       }
///     ]
///   }
/// """,
///     tags={
///         "Key1": "example Segment",
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
///     var example = new Aws.Evidently.Segment("example", new()
///     {
///         Name = "example",
///         Pattern = @"  {
///     \""Price\"": [
///       {
///         \""numeric\"": [\"">\"",10,\""<=\"",20]
///       }
///     ]
///   }
/// ",
///         Tags =
///         {
///             { "Key1", "example Segment" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// 			Name: pulumi.String("example"),
/// 			Pattern: pulumi.String(`  {
///     \"Price\": [
///       {
///         \"numeric\": [\">\",10,\"<=\",20]
///       }
///     ]
///   }
/// `),
/// 			Tags: pulumi.StringMap{
/// 				"Key1": pulumi.String("example Segment"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
///         var example = new Segment("example", SegmentArgs.builder()
///             .name("example")
///             .pattern("""
///   {
///     \"Price\": [
///       {
///         \"numeric\": [\">\",10,\"<=\",20]
///       }
///     ]
///   }
///             """)
///             .tags(Map.of("Key1", "example Segment"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Segment
///     properties:
///       name: example
///       pattern: |2
///           {
///             \"Price\": [
///               {
///                 \"numeric\": [\">\",10,\"<=\",20]
///               }
///             ]
///           }
///       tags:
///         Key1: example Segment
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.evidently.Segment("example", {
///     name: "example",
///     pattern: "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.evidently.Segment("example",
///     name="example",
///     pattern="{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///     description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Evidently.Segment("example", new()
///     {
///         Name = "example",
///         Pattern = "{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}",
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/evidently"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := evidently.NewSegment(ctx, "example", &evidently.SegmentArgs{
/// 			Name:        pulumi.String("example"),
/// 			Pattern:     pulumi.String("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}"),
/// 			Description: pulumi.String("example"),
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
/// import com.pulumi.aws.evidently.Segment;
/// import com.pulumi.aws.evidently.SegmentArgs;
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
///         var example = new Segment("example", SegmentArgs.builder()
///             .name("example")
///             .pattern("{\"Price\":[{\"numeric\":[\">\",10,\"<=\",20]}]}")
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:evidently:Segment
///     properties:
///       name: example
///       pattern: '{"Price":[{"numeric":[">",10,"<=",20]}]}'
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Segment using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/segment:Segment example arn:aws:evidently:us-west-2:123456789012:segment/example
/// ```
class Segment extends pulumi.CustomResource {
  /// The ARN of the segment.
  late final pulumi.Output<String> arn;
  /// The date and time that the segment is created.
  late final pulumi.Output<String> createdTime;
  /// Specifies the description of the segment.
  late final pulumi.Output<String?> description;
  /// The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
  late final pulumi.Output<int> experimentCount;
  /// The date and time that this segment was most recently updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
  late final pulumi.Output<int> launchCount;
  /// A name for the segment.
  late final pulumi.Output<String> name;
  /// The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  late final pulumi.Output<String> pattern;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Segment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Segment]. {@macro pulumi_evidently_segment_segment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Segment(
    String name, {
    SegmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:evidently/segment:Segment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String?>('description');
    this.experimentCount = registerOutput<int>('experimentCount');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.launchCount = registerOutput<int>('launchCount');
    this.name = registerOutput<String>('name');
    this.pattern = registerOutput<String>('pattern');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
