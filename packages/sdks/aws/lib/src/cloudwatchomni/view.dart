import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';
import 'view_state.dart';

/// Manages an Amazon CloudWatch Omni view.
///
/// A view is a named, reusable SQL query over CloudWatch telemetry. It stores the query, not the data: each time the view is queried, its definition runs against the underlying data. See the [CloudWatch SQL query reference](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/omni-sql-query-reference.html) for the query syntax.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.View("example", {
///     name: "view.app_errors",
///     definition: "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.View("example",
///     name="view.app_errors",
///     definition="SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.View("example", new()
///     {
///         Name = "view.app_errors",
///         Definition = "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewView(ctx, "example", &cloudwatchomni.ViewArgs{
/// 			Name:       pulumi.String("view.app_errors"),
/// 			Definition: pulumi.String("SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_view" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name       = "view.app_errors"
///   definition = "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.View;
/// import com.pulumi.aws.cloudwatchomni.ViewArgs;
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
///         var example = new View("example", ViewArgs.builder()
///             .name("view.app_errors")
///             .definition("SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:View
///     properties:
///       name: view.app_errors
///       definition: SELECT `@timestamp`, `@message` FROM "logs.default" WHERE `@logGroupName` = '/my/app'
/// ```
///
///
/// ### With Description and Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.View("example", {
///     name: "view.app_errors",
///     definition: "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'",
///     description: "Error lines from /my/app",
///     tags: {
///         team: "payments",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.View("example",
///     name="view.app_errors",
///     definition="SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'",
///     description="Error lines from /my/app",
///     tags={
///         "team": "payments",
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
///     var example = new Aws.CloudWatchOmni.View("example", new()
///     {
///         Name = "view.app_errors",
///         Definition = "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'",
///         Description = "Error lines from /my/app",
///         Tags =
///         {
///             { "team", "payments" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewView(ctx, "example", &cloudwatchomni.ViewArgs{
/// 			Name:        pulumi.String("view.app_errors"),
/// 			Definition:  pulumi.String("SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'"),
/// 			Description: pulumi.String("Error lines from /my/app"),
/// 			Tags: pulumi.StringMap{
/// 				"team": pulumi.String("payments"),
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
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_view" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "view.app_errors"
///   definition  = "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'"
///   description = "Error lines from /my/app"
///   tags = {
///     "team" = "payments"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.View;
/// import com.pulumi.aws.cloudwatchomni.ViewArgs;
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
///         var example = new View("example", ViewArgs.builder()
///             .name("view.app_errors")
///             .definition("SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@logGroupName` = '/my/app'")
///             .description("Error lines from /my/app")
///             .tags(Map.of("team", "payments"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:View
///     properties:
///       name: view.app_errors
///       definition: SELECT `@timestamp`, `@message` FROM "logs.default" WHERE `@logGroupName` = '/my/app'
///       description: Error lines from /my/app
///       tags:
///         team: payments
/// ```
///
///
/// ### Querying a View
///
/// Reference a view by name in the `FROM` clause of a telemetry query, quoting the name because it contains a dot (for example, `FROM "view.app_errors"`). Bound `@timestamp` on both sides in the `WHERE` clause; the service rejects queries with an open-ended time range.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the view.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Omni views using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/view:View example view.app_errors
/// ```
class View extends pulumi.CustomResource {
  /// ARN of the view. Contains an identifier generated by CloudWatch, in the form `arn:aws:cloudwatch:&lt;region&gt;:&lt;account&gt;:view/&lt;name&gt;/&lt;id&gt;`.
  late final pulumi.Output<String> arn;
  /// SQL query that defines the view. Must be 1 to 10000 characters. The service validates the query when the view is created or updated.
  late final pulumi.Output<String> definition;
  /// Description of the view. Must be 1 to 1024 characters.
  late final pulumi.Output<String?> description;
  /// Name of the view. Must start with `view.` followed by a lowercase letter or digit, contain only lowercase letters, digits, underscores and hyphens, and be 6 to 256 characters long. Unique within the account and Region. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of the view. Views created with Terraform are `USER` views.
  late final pulumi.Output<String> type;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_cloudwatchomni_view_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(
    String name, {
    ViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/view:View',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    definition = registerOutput<String>('definition');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [View] resource's state with the given [name] and [id].
  static View get(
    String name,
    pulumi.Input<String> id, {
    ViewState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return View._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  View._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/view:View',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    definition = registerOutput<String>('definition');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [View] resource.
  View.reference(String urn)
    : super(
        'aws:cloudwatchomni/view:View',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    definition = registerOutput<String>('definition');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
