import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_monitor_args.dart';
import 'anomaly_monitor_state.dart';

/// Provides a CE Anomaly Monitor.
///
/// ## Example Usage
///
/// There are two main types of a Cost Anomaly Monitor: `DIMENSIONAL` and `CUSTOM`.
///
/// ### Dimensional Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceMonitor = new aws.costexplorer.AnomalyMonitor("service_monitor", {
///     name: "AWSServiceMonitor",
///     monitorType: "DIMENSIONAL",
///     monitorDimension: "SERVICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// service_monitor = aws.costexplorer.AnomalyMonitor("service_monitor",
///     name="AWSServiceMonitor",
///     monitor_type="DIMENSIONAL",
///     monitor_dimension="SERVICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceMonitor = new Aws.CostExplorer.AnomalyMonitor("service_monitor", new()
///     {
///         Name = "AWSServiceMonitor",
///         MonitorType = "DIMENSIONAL",
///         MonitorDimension = "SERVICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costexplorer.NewAnomalyMonitor(ctx, "service_monitor", &costexplorer.AnomalyMonitorArgs{
/// 			Name:             pulumi.String("AWSServiceMonitor"),
/// 			MonitorType:      pulumi.String("DIMENSIONAL"),
/// 			MonitorDimension: pulumi.String("SERVICE"),
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
/// resource "aws_costexplorer_anomalymonitor" "service_monitor" {
///   name              = "AWSServiceMonitor"
///   monitor_type      = "DIMENSIONAL"
///   monitor_dimension = "SERVICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
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
///         var serviceMonitor = new AnomalyMonitor("serviceMonitor", AnomalyMonitorArgs.builder()
///             .name("AWSServiceMonitor")
///             .monitorType("DIMENSIONAL")
///             .monitorDimension("SERVICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceMonitor:
///     type: aws:costexplorer:AnomalyMonitor
///     name: service_monitor
///     properties:
///       name: AWSServiceMonitor
///       monitorType: DIMENSIONAL
///       monitorDimension: SERVICE
/// ```
///
///
/// ### Custom Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.costexplorer.AnomalyMonitor("test", {
///     name: "AWSCustomAnomalyMonitor",
///     monitorType: "CUSTOM",
///     monitorSpecification: JSON.stringify({
///         And: null,
///         CostCategories: null,
///         Dimensions: null,
///         Not: null,
///         Or: null,
///         Tags: {
///             Key: "CostCenter",
///             MatchOptions: null,
///             Values: ["10000"],
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalyMonitor("test",
///     name="AWSCustomAnomalyMonitor",
///     monitor_type="CUSTOM",
///     monitor_specification=json.dumps({
///         "And": None,
///         "CostCategories": None,
///         "Dimensions": None,
///         "Not": None,
///         "Or": None,
///         "Tags": {
///             "Key": "CostCenter",
///             "MatchOptions": None,
///             "Values": ["10000"],
///         },
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
///     var test = new Aws.CostExplorer.AnomalyMonitor("test", new()
///     {
///         Name = "AWSCustomAnomalyMonitor",
///         MonitorType = "CUSTOM",
///         MonitorSpecification = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["And"] = null,
///             ["CostCategories"] = null,
///             ["Dimensions"] = null,
///             ["Not"] = null,
///             ["Or"] = null,
///             ["Tags"] = new Dictionary<string, object?>
///             {
///                 ["Key"] = "CostCenter",
///                 ["MatchOptions"] = null,
///                 ["Values"] = new[]
///                 {
///                     "10000",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"And":            nil,
/// 			"CostCategories": nil,
/// 			"Dimensions":     nil,
/// 			"Not":            nil,
/// 			"Or":             nil,
/// 			"Tags": map[string]interface{}{
/// 				"Key":          "CostCenter",
/// 				"MatchOptions": nil,
/// 				"Values": []string{
/// 					"10000",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = costexplorer.NewAnomalyMonitor(ctx, "test", &costexplorer.AnomalyMonitorArgs{
/// 			Name:                 pulumi.String("AWSCustomAnomalyMonitor"),
/// 			MonitorType:          pulumi.String("CUSTOM"),
/// 			MonitorSpecification: pulumi.String(json0),
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
/// resource "aws_costexplorer_anomalymonitor" "test" {
///   name         = "AWSCustomAnomalyMonitor"
///   monitor_type = "CUSTOM"
///   monitor_specification = jsonencode({
///     "And"            = null
///     "CostCategories" = null
///     "Dimensions"     = null
///     "Not"            = null
///     "Or"             = null
///     "Tags" = {
///       "Key"          = "CostCenter"
///       "MatchOptions" = null
///       "Values"       = ["10000"]
///     }
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
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
///         var test = new AnomalyMonitor("test", AnomalyMonitorArgs.builder()
///             .name("AWSCustomAnomalyMonitor")
///             .monitorType("CUSTOM")
///             .monitorSpecification(serializeJson(
///                 jsonObject(
///                     jsonProperty("And", null),
///                     jsonProperty("CostCategories", null),
///                     jsonProperty("Dimensions", null),
///                     jsonProperty("Not", null),
///                     jsonProperty("Or", null),
///                     jsonProperty("Tags", jsonObject(
///                         jsonProperty("Key", "CostCenter"),
///                         jsonProperty("MatchOptions", null),
///                         jsonProperty("Values", jsonArray("10000"))
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:costexplorer:AnomalyMonitor
///     properties:
///       name: AWSCustomAnomalyMonitor
///       monitorType: CUSTOM
///       monitorSpecification:
///         fn::toJSON:
///           And: null
///           CostCategories: null
///           Dimensions: null
///           Not: null
///           Or: null
///           Tags:
///             Key: CostCenter
///             MatchOptions: null
///             Values:
///               - '10000'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Cost Explorer anomaly monitor.
///
///
/// Using `pulumi import`, import `aws.costexplorer.AnomalyMonitor` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/anomalyMonitor:AnomalyMonitor example costAnomalyMonitorARN
/// ```
class AnomalyMonitor extends pulumi.CustomResource {
  /// ARN of the anomaly monitor.
  late final pulumi.Output<String> arn;
  /// The dimensions to evaluate. Valid values: `COST_CATEGORY`, `LINKED_ACCOUNT`, `SERVICE`, `TAG`.
  late final pulumi.Output<String?> monitorDimension;
  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  late final pulumi.Output<String?> monitorSpecification;
  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  late final pulumi.Output<String> monitorType;
  /// The name of the monitor.
  late final pulumi.Output<String> name;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AnomalyMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnomalyMonitor]. {@macro pulumi_costexplorer_anomaly_monitor_anomaly_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnomalyMonitor(
    String name, {
    AnomalyMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalyMonitor:AnomalyMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    monitorDimension = registerOutput<String?>('monitorDimension');
    monitorSpecification = registerOutput<String?>('monitorSpecification');
    monitorType = registerOutput<String>('monitorType');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AnomalyMonitor] resource's state with the given [name] and [id].
  static AnomalyMonitor get(
    String name,
    pulumi.Input<String> id, {
    AnomalyMonitorState? state,
  }) {
    return AnomalyMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnomalyMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalyMonitor:AnomalyMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    monitorDimension = registerOutput<String?>('monitorDimension');
    monitorSpecification = registerOutput<String?>('monitorSpecification');
    monitorType = registerOutput<String>('monitorType');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
