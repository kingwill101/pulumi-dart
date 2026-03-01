import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';

/// Provides a CloudWatch Dashboard resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.cloudwatch.Dashboard("main", {
///     dashboardName: "my-dashboard",
///     dashboardBody: JSON.stringify({
///         widgets: [
///             {
///                 type: "metric",
///                 x: 0,
///                 y: 0,
///                 width: 12,
///                 height: 6,
///                 properties: {
///                     metrics: [[
///                         "AWS/EC2",
///                         "CPUUtilization",
///                         "InstanceId",
///                         "i-012345",
///                     ]],
///                     period: 300,
///                     stat: "Average",
///                     region: "us-east-1",
///                     title: "EC2 Instance CPU",
///                 },
///             },
///             {
///                 type: "text",
///                 x: 0,
///                 y: 7,
///                 width: 3,
///                 height: 3,
///                 properties: {
///                     markdown: "Hello world",
///                 },
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// main = aws.cloudwatch.Dashboard("main",
///     dashboard_name="my-dashboard",
///     dashboard_body=json.dumps({
///         "widgets": [
///             {
///                 "type": "metric",
///                 "x": 0,
///                 "y": 0,
///                 "width": 12,
///                 "height": 6,
///                 "properties": {
///                     "metrics": [[
///                         "AWS/EC2",
///                         "CPUUtilization",
///                         "InstanceId",
///                         "i-012345",
///                     ]],
///                     "period": 300,
///                     "stat": "Average",
///                     "region": "us-east-1",
///                     "title": "EC2 Instance CPU",
///                 },
///             },
///             {
///                 "type": "text",
///                 "x": 0,
///                 "y": 7,
///                 "width": 3,
///                 "height": 3,
///                 "properties": {
///                     "markdown": "Hello world",
///                 },
///             },
///         ],
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
///     var main = new Aws.CloudWatch.Dashboard("main", new()
///     {
///         DashboardName = "my-dashboard",
///         DashboardBody = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["widgets"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = "metric",
///                     ["x"] = 0,
///                     ["y"] = 0,
///                     ["width"] = 12,
///                     ["height"] = 6,
///                     ["properties"] = new Dictionary<string, object?>
///                     {
///                         ["metrics"] = new[]
///                         {
///                             new[]
///                             {
///                                 "AWS/EC2",
///                                 "CPUUtilization",
///                                 "InstanceId",
///                                 "i-012345",
///                             },
///                         },
///                         ["period"] = 300,
///                         ["stat"] = "Average",
///                         ["region"] = "us-east-1",
///                         ["title"] = "EC2 Instance CPU",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = "text",
///                     ["x"] = 0,
///                     ["y"] = 7,
///                     ["width"] = 3,
///                     ["height"] = 3,
///                     ["properties"] = new Dictionary<string, object?>
///                     {
///                         ["markdown"] = "Hello world",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"widgets": []interface{}{
/// 				map[string]interface{}{
/// 					"type":   "metric",
/// 					"x":      0,
/// 					"y":      0,
/// 					"width":  12,
/// 					"height": 6,
/// 					"properties": map[string]interface{}{
/// 						"metrics": [][]string{
/// 							[]string{
/// 								"AWS/EC2",
/// 								"CPUUtilization",
/// 								"InstanceId",
/// 								"i-012345",
/// 							},
/// 						},
/// 						"period": 300,
/// 						"stat":   "Average",
/// 						"region": "us-east-1",
/// 						"title":  "EC2 Instance CPU",
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"type":   "text",
/// 					"x":      0,
/// 					"y":      7,
/// 					"width":  3,
/// 					"height": 3,
/// 					"properties": map[string]interface{}{
/// 						"markdown": "Hello world",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewDashboard(ctx, "main", &cloudwatch.DashboardArgs{
/// 			DashboardName: pulumi.String("my-dashboard"),
/// 			DashboardBody: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudwatch.Dashboard;
/// import com.pulumi.aws.cloudwatch.DashboardArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var main = new Dashboard("main", DashboardArgs.builder()
///             .dashboardName("my-dashboard")
///             .dashboardBody(serializeJson(
///                 jsonObject(
///                     jsonProperty("widgets", jsonArray(
///                         jsonObject(
///                             jsonProperty("type", "metric"),
///                             jsonProperty("x", 0),
///                             jsonProperty("y", 0),
///                             jsonProperty("width", 12),
///                             jsonProperty("height", 6),
///                             jsonProperty("properties", jsonObject(
///                                 jsonProperty("metrics", jsonArray(jsonArray(
///                                     "AWS/EC2",
///                                     "CPUUtilization",
///                                     "InstanceId",
///                                     "i-012345"
///                                 ))),
///                                 jsonProperty("period", 300),
///                                 jsonProperty("stat", "Average"),
///                                 jsonProperty("region", "us-east-1"),
///                                 jsonProperty("title", "EC2 Instance CPU")
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("type", "text"),
///                             jsonProperty("x", 0),
///                             jsonProperty("y", 7),
///                             jsonProperty("width", 3),
///                             jsonProperty("height", 3),
///                             jsonProperty("properties", jsonObject(
///                                 jsonProperty("markdown", "Hello world")
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:cloudwatch:Dashboard
///     properties:
///       dashboardName: my-dashboard
///       dashboardBody:
///         fn::toJSON:
///           widgets:
///             - type: metric
///               x: 0
///               y: 0
///               width: 12
///               height: 6
///               properties:
///                 metrics:
///                   - - AWS/EC2
///                     - CPUUtilization
///                     - InstanceId
///                     - i-012345
///                 period: 300
///                 stat: Average
///                 region: us-east-1
///                 title: EC2 Instance CPU
///             - type: text
///               x: 0
///               y: 7
///               width: 3
///               height: 3
///               properties:
///                 markdown: Hello world
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch dashboards using the `dashboard_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/dashboard:Dashboard sample dashboard_name
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the dashboard.
  late final pulumi.Output<String> dashboardArn;
  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  late final pulumi.Output<String> dashboardBody;
  /// The name of the dashboard.
  late final pulumi.Output<String> dashboardName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_cloudwatch_dashboard_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dashboardArn = registerOutput<String>('dashboardArn');
    this.dashboardBody = registerOutput<String>('dashboardBody');
    this.dashboardName = registerOutput<String>('dashboardName');
    this.region = registerOutput<String>('region');
  }
}
