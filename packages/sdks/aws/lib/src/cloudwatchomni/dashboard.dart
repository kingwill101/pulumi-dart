import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';
import 'dashboard_state.dart';

/// Manages an Amazon CloudWatch Omni dashboard.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.Dashboard("example", {
///     spaceId: exampleAwsCloudwatchomniSpace.spaceId,
///     name: "example",
///     description: "Example dashboard",
///     tags: {
///         Environment: "production",
///     },
///     body: JSON.stringify({
///         panels: [{
///             type: "markdown",
///             layout: {
///                 x: 0,
///                 y: 0,
///                 w: 60,
///                 h: "auto",
///             },
///             config: {
///                 content: `## On call
///
/// Check the error rate first.`,
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.Dashboard("example",
///     space_id=example_aws_cloudwatchomni_space["spaceId"],
///     name="example",
///     description="Example dashboard",
///     tags={
///         "Environment": "production",
///     },
///     body=json.dumps({
///         "panels": [{
///             "type": "markdown",
///             "layout": {
///                 "x": 0,
///                 "y": 0,
///                 "w": 60,
///                 "h": "auto",
///             },
///             "config": {
///                 "content": """## On call
///
/// Check the error rate first.""",
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.Dashboard("example", new()
///     {
///         SpaceId = exampleAwsCloudwatchomniSpace.SpaceId,
///         Name = "example",
///         Description = "Example dashboard",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///         Body = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["panels"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = "markdown",
///                     ["layout"] = new Dictionary<string, object?>
///                     {
///                         ["x"] = 0,
///                         ["y"] = 0,
///                         ["w"] = 60,
///                         ["h"] = "auto",
///                     },
///                     ["config"] = new Dictionary<string, object?>
///                     {
///                         ["content"] = @"## On call
///
/// Check the error rate first.",
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"panels": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type": "markdown",
/// 					"layout": map[string]interface{}{
/// 						"x": 0,
/// 						"y": 0,
/// 						"w": 60,
/// 						"h": "auto",
/// 					},
/// 					"config": map[string]string{
/// 						"content": "## On call\n\nCheck the error rate first.",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatchomni.NewDashboard(ctx, "example", &cloudwatchomni.DashboardArgs{
/// 			SpaceId:     pulumi.Any(exampleAwsCloudwatchomniSpace.SpaceId),
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example dashboard"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 			Body: pulumi.String(json0),
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
/// resource "aws_cloudwatchomni_dashboard" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   space_id    = exampleAwsCloudwatchomniSpace.spaceId
///   name        = "example"
///   description = "Example dashboard"
///   tags = {
///     "Environment" = "production"
///   }
///   body = jsonencode({
///     "panels" = [{
///       "type" = "markdown"
///       "layout" = {
///         "x" = 0
///         "y" = 0
///         "w" = 60
///         "h" = "auto"
///       }
///       "config" = {
///         "content" = "## On call\n\nCheck the error rate first."
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.Dashboard;
/// import com.pulumi.aws.cloudwatchomni.DashboardArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Dashboard("example", DashboardArgs.builder()
///             .spaceId(exampleAwsCloudwatchomniSpace.get("spaceId"))
///             .name("example")
///             .description("Example dashboard")
///             .tags(Map.of("Environment", "production"))
///             .body(serializeJson(
///                 jsonObject(
///                     jsonProperty("panels", jsonArray(jsonObject(
///                         jsonProperty("type", "markdown"),
///                         jsonProperty("layout", jsonObject(
///                             jsonProperty("x", 0),
///                             jsonProperty("y", 0),
///                             jsonProperty("w", 60),
///                             jsonProperty("h", "auto")
///                         )),
///                         jsonProperty("config", jsonObject(
///                             jsonProperty("content", """
/// ## On call
///
/// Check the error rate first.                            """)
///                         ))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:Dashboard
///     properties:
///       spaceId: ${exampleAwsCloudwatchomniSpace.spaceId}
///       name: example
///       description: Example dashboard
///       tags:
///         Environment: production
///       body:
///         fn::toJSON:
///           panels:
///             - type: markdown
///               layout:
///                 x: 0
///                 y: 0
///                 w: 60
///                 h: auto
///               config:
///                 content: |-
///                   ## On call
///
///                   Check the error rate first.
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `dashboardId` (String) Dashboard ID.
/// * `spaceId` (String) Space ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a CloudWatch Omni Dashboard using the `spaceId` and `dashboardId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/dashboard:Dashboard example 12345678-1234-1234-1234-123456789012,87654321-4321-4321-4321-210987654321
/// ```
class Dashboard extends pulumi.CustomResource {
  /// ARN of the dashboard.
  late final pulumi.Output<String> arn;
  /// Dashboard definition, as a JSON document with a `panels` array. Maximum size of 1 MiB.
  late final pulumi.Output<String> body;
  /// Unique identifier of the dashboard.
  late final pulumi.Output<String> dashboardId;
  /// Description of the dashboard. Must be 1-1024 characters. Removing the description replaces the dashboard, because the service does not support clearing it.
  late final pulumi.Output<String?> description;
  /// Name of the dashboard. Must be 1-256 characters and can contain letters, numbers, and the characters `_`, `.`, `@`, `~`, `(`, `)`, and `-`.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the space that contains the dashboard.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_cloudwatchomni_dashboard_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    body = registerOutput<String>('body');
    dashboardId = registerOutput<String>('dashboardId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Dashboard] resource's state with the given [name] and [id].
  static Dashboard get(
    String name,
    pulumi.Input<String> id, {
    DashboardState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Dashboard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Dashboard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    body = registerOutput<String>('body');
    dashboardId = registerOutput<String>('dashboardId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Dashboard] resource.
  Dashboard.reference(String urn)
    : super(
        'aws:cloudwatchomni/dashboard:Dashboard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    body = registerOutput<String>('body');
    dashboardId = registerOutput<String>('dashboardId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
