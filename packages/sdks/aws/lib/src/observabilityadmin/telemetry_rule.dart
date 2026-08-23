import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_args.dart';
import 'telemetry_rule_rule.dart';
import 'telemetry_rule_state.dart';
import 'telemetry_rule_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Rule.
///
/// A telemetry rule defines how telemetry data (logs, metrics, or traces) should be collected for AWS resources within an AWS account. The rule can target one or more Regions and optionally configure a destination (such as CloudWatch Logs or S3) along with source-specific parameters for VPC flow logs, WAF logs, CloudTrail events, ELB access logs, and more.
///
/// &gt; **NOTE:** Before using this resource, telemetry evaluation must be enabled for your AWS account. Use the `aws.observabilityadmin.TelemetryEvaluation` resource to enable it.
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
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// const exampleTelemetryRule = new aws.observabilityadmin.TelemetryRule("example", {
///     ruleName: "example-telemetry-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// example_telemetry_rule = aws.observabilityadmin.TelemetryRule("example",
///     rule_name="example-telemetry-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
///     var exampleTelemetryRule = new Aws.Observabilityadmin.TelemetryRule("example", new()
///     {
///         RuleName = "example-telemetry-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRule(ctx, "example", &observabilityadmin.TelemetryRuleArgs{
/// 			RuleName: pulumi.String("example-telemetry-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrule" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluation.example]
///   rule_name  = "example-telemetry-rule"
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EC2::VPC"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
/// import com.pulumi.aws.observabilityadmin.TelemetryRule;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEvaluation("example");
///
///         var exampleTelemetryRule = new TelemetryRule("exampleTelemetryRule", TelemetryRuleArgs.builder()
///             .ruleName("example-telemetry-rule")
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
///   exampleTelemetryRule:
///     type: aws:observabilityadmin:TelemetryRule
///     name: example
///     properties:
///       ruleName: example-telemetry-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### VPC Flow Logs to CloudWatch Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// const exampleTelemetryRule = new aws.observabilityadmin.TelemetryRule("example", {
///     ruleName: "vpc-flow-logs-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///         telemetrySourceTypes: ["VPC_FLOW_LOGS"],
///         allRegions: true,
///         allowFieldUpdates: true,
///         destinationConfiguration: {
///             destinationType: "cloud-watch-logs",
///             destinationPattern: "/aws/vpcflowlogs/<resourceId>",
///             retentionInDays: 30,
///             vpcFlowLogParameters: {
///                 trafficType: "ALL",
///                 maxAggregationInterval: 60,
///             },
///         },
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// example_telemetry_rule = aws.observabilityadmin.TelemetryRule("example",
///     rule_name="vpc-flow-logs-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///         "telemetry_source_types": ["VPC_FLOW_LOGS"],
///         "all_regions": True,
///         "allow_field_updates": True,
///         "destination_configuration": {
///             "destination_type": "cloud-watch-logs",
///             "destination_pattern": "/aws/vpcflowlogs/<resourceId>",
///             "retention_in_days": 30,
///             "vpc_flow_log_parameters": {
///                 "traffic_type": "ALL",
///                 "max_aggregation_interval": 60,
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
///     var exampleTelemetryRule = new Aws.Observabilityadmin.TelemetryRule("example", new()
///     {
///         RuleName = "vpc-flow-logs-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///             TelemetrySourceTypes = new[]
///             {
///                 "VPC_FLOW_LOGS",
///             },
///             AllRegions = true,
///             AllowFieldUpdates = true,
///             DestinationConfiguration = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationArgs
///             {
///                 DestinationType = "cloud-watch-logs",
///                 DestinationPattern = "/aws/vpcflowlogs/<resourceId>",
///                 RetentionInDays = 30,
///                 VpcFlowLogParameters = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs
///                 {
///                     TrafficType = "ALL",
///                     MaxAggregationInterval = 60,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRule(ctx, "example", &observabilityadmin.TelemetryRuleArgs{
/// 			RuleName: pulumi.String("vpc-flow-logs-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 				TelemetrySourceTypes: pulumi.StringArray{
/// 					pulumi.String("VPC_FLOW_LOGS"),
/// 				},
/// 				AllRegions:        pulumi.Bool(true),
/// 				AllowFieldUpdates: pulumi.Bool(true),
/// 				DestinationConfiguration: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationArgs{
/// 					DestinationType:    pulumi.String("cloud-watch-logs"),
/// 					DestinationPattern: pulumi.String("/aws/vpcflowlogs/<resourceId>"),
/// 					RetentionInDays:    pulumi.Int(30),
/// 					VpcFlowLogParameters: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs{
/// 						TrafficType:            pulumi.String("ALL"),
/// 						MaxAggregationInterval: pulumi.Int(60),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrule" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluation.example]
///   rule_name  = "vpc-flow-logs-rule"
///   rule = {
///     telemetry_type         = "Logs"
///     resource_type          = "AWS::EC2::VPC"
///     telemetry_source_types = ["VPC_FLOW_LOGS"]
///     all_regions            = true
///     allow_field_updates    = true
///     destination_configuration = {
///       destination_type    = "cloud-watch-logs"
///       destination_pattern = "/aws/vpcflowlogs/<resourceId>"
///       retention_in_days   = 30
///       vpc_flow_log_parameters = {
///         traffic_type             = "ALL"
///         max_aggregation_interval = 60
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
/// import com.pulumi.aws.observabilityadmin.TelemetryRule;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEvaluation("example");
///
///         var exampleTelemetryRule = new TelemetryRule("exampleTelemetryRule", TelemetryRuleArgs.builder()
///             .ruleName("vpc-flow-logs-rule")
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .telemetrySourceTypes("VPC_FLOW_LOGS")
///                 .allRegions(true)
///                 .allowFieldUpdates(true)
///                 .destinationConfiguration(TelemetryRuleRuleDestinationConfigurationArgs.builder()
///                     .destinationType("cloud-watch-logs")
///                     .destinationPattern("/aws/vpcflowlogs/<resourceId>")
///                     .retentionInDays(30)
///                     .vpcFlowLogParameters(TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs.builder()
///                         .trafficType("ALL")
///                         .maxAggregationInterval(60)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
///   exampleTelemetryRule:
///     type: aws:observabilityadmin:TelemetryRule
///     name: example
///     properties:
///       ruleName: vpc-flow-logs-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///         telemetrySourceTypes:
///           - VPC_FLOW_LOGS
///         allRegions: true
///         allowFieldUpdates: true
///         destinationConfiguration:
///           destinationType: cloud-watch-logs
///           destinationPattern: /aws/vpcflowlogs/<resourceId>
///           retentionInDays: 30
///           vpcFlowLogParameters:
///             trafficType: ALL
///             maxAggregationInterval: 60
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Replicated Across Specific Regions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// const exampleTelemetryRule = new aws.observabilityadmin.TelemetryRule("example", {
///     ruleName: "multi-region-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EKS::Cluster",
///         regions: [
///             "us-east-1",
///             "us-west-2",
///             "eu-west-1",
///         ],
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// example_telemetry_rule = aws.observabilityadmin.TelemetryRule("example",
///     rule_name="multi-region-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EKS::Cluster",
///         "regions": [
///             "us-east-1",
///             "us-west-2",
///             "eu-west-1",
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
///     var exampleTelemetryRule = new Aws.Observabilityadmin.TelemetryRule("example", new()
///     {
///         RuleName = "multi-region-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EKS::Cluster",
///             Regions = new[]
///             {
///                 "us-east-1",
///                 "us-west-2",
///                 "eu-west-1",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRule(ctx, "example", &observabilityadmin.TelemetryRuleArgs{
/// 			RuleName: pulumi.String("multi-region-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EKS::Cluster"),
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-west-2"),
/// 					pulumi.String("eu-west-1"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrule" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluation.example]
///   rule_name  = "multi-region-rule"
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EKS::Cluster"
///     regions        = ["us-east-1", "us-west-2", "eu-west-1"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
/// import com.pulumi.aws.observabilityadmin.TelemetryRule;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEvaluation("example");
///
///         var exampleTelemetryRule = new TelemetryRule("exampleTelemetryRule", TelemetryRuleArgs.builder()
///             .ruleName("multi-region-rule")
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EKS::Cluster")
///                 .regions(
///                     "us-east-1",
///                     "us-west-2",
///                     "eu-west-1")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
///   exampleTelemetryRule:
///     type: aws:observabilityadmin:TelemetryRule
///     name: example
///     properties:
///       ruleName: multi-region-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EKS::Cluster
///         regions:
///           - us-east-1
///           - us-west-2
///           - eu-west-1
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### WAF Logging with Filters and Redacted Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// const exampleTelemetryRule = new aws.observabilityadmin.TelemetryRule("example", {
///     ruleName: "waf-logs-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::WAFv2::WebACL",
///         destinationConfiguration: {
///             destinationType: "cloud-watch-logs",
///             destinationPattern: "aws-waf-logs-<resourceId>",
///             retentionInDays: 30,
///             wafLoggingParameters: {
///                 logType: "WAF_LOGS",
///                 loggingFilter: {
///                     defaultBehavior: "KEEP",
///                     filters: [{
///                         behavior: "DROP",
///                         requirement: "MEETS_ANY",
///                         conditions: [{
///                             actionCondition: {
///                                 action: "ALLOW",
///                             },
///                         }],
///                     }],
///                 },
///                 redactedFields: [{
///                     queryString: "",
///                     singleHeader: {
///                         name: "authorization",
///                     },
///                 }],
///             },
///         },
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// example_telemetry_rule = aws.observabilityadmin.TelemetryRule("example",
///     rule_name="waf-logs-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::WAFv2::WebACL",
///         "destination_configuration": {
///             "destination_type": "cloud-watch-logs",
///             "destination_pattern": "aws-waf-logs-<resourceId>",
///             "retention_in_days": 30,
///             "waf_logging_parameters": {
///                 "log_type": "WAF_LOGS",
///                 "logging_filter": {
///                     "default_behavior": "KEEP",
///                     "filters": [{
///                         "behavior": "DROP",
///                         "requirement": "MEETS_ANY",
///                         "conditions": [{
///                             "action_condition": {
///                                 "action": "ALLOW",
///                             },
///                         }],
///                     }],
///                 },
///                 "redacted_fields": [{
///                     "query_string": "",
///                     "single_header": {
///                         "name": "authorization",
///                     },
///                 }],
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
///     var exampleTelemetryRule = new Aws.Observabilityadmin.TelemetryRule("example", new()
///     {
///         RuleName = "waf-logs-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::WAFv2::WebACL",
///             DestinationConfiguration = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationArgs
///             {
///                 DestinationType = "cloud-watch-logs",
///                 DestinationPattern = "aws-waf-logs-<resourceId>",
///                 RetentionInDays = 30,
///                 WafLoggingParameters = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs
///                 {
///                     LogType = "WAF_LOGS",
///                     LoggingFilter = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs
///                     {
///                         DefaultBehavior = "KEEP",
///                         Filters = new[]
///                         {
///                             new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs
///                             {
///                                 Behavior = "DROP",
///                                 Requirement = "MEETS_ANY",
///                                 Conditions = new[]
///                                 {
///                                     new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs
///                                     {
///                                         ActionCondition = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs
///                                         {
///                                             Action = "ALLOW",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     RedactedFields = new[]
///                     {
///                         new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs
///                         {
///                             QueryString = "",
///                             SingleHeader = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs
///                             {
///                                 Name = "authorization",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRule(ctx, "example", &observabilityadmin.TelemetryRuleArgs{
/// 			RuleName: pulumi.String("waf-logs-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::WAFv2::WebACL"),
/// 				DestinationConfiguration: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationArgs{
/// 					DestinationType:    pulumi.String("cloud-watch-logs"),
/// 					DestinationPattern: pulumi.String("aws-waf-logs-<resourceId>"),
/// 					RetentionInDays:    pulumi.Int(30),
/// 					WafLoggingParameters: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs{
/// 						LogType: pulumi.String("WAF_LOGS"),
/// 						LoggingFilter: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs{
/// 							DefaultBehavior: pulumi.String("KEEP"),
/// 							Filters: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArray{
/// 								&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs{
/// 									Behavior:    pulumi.String("DROP"),
/// 									Requirement: pulumi.String("MEETS_ANY"),
/// 									Conditions: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArray{
/// 										&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs{
/// 											ActionCondition: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs{
/// 												Action: pulumi.String("ALLOW"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RedactedFields: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArray{
/// 							&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs{
/// 								QueryString: pulumi.String(""),
/// 								SingleHeader: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs{
/// 									Name: pulumi.String("authorization"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrule" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluation.example]
///   rule_name  = "waf-logs-rule"
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::WAFv2::WebACL"
///     destination_configuration = {
///       destination_type    = "cloud-watch-logs"
///       destination_pattern = "aws-waf-logs-<resourceId>"
///       retention_in_days   = 30
///       waf_logging_parameters = {
///         log_type = "WAF_LOGS"
///         logging_filter = {
///           default_behavior = "KEEP"
///           filters = [{
///             "behavior"    = "DROP"
///             "requirement" = "MEETS_ANY"
///             "conditions" = [{
///               "actionCondition" = {
///                 "action" = "ALLOW"
///               }
///             }]
///           }]
///         }
///         redacted_fields = [{
///           "queryString" = ""
///           "singleHeader" = {
///             "name" = "authorization"
///           }
///         }]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
/// import com.pulumi.aws.observabilityadmin.TelemetryRule;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEvaluation("example");
///
///         var exampleTelemetryRule = new TelemetryRule("exampleTelemetryRule", TelemetryRuleArgs.builder()
///             .ruleName("waf-logs-rule")
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::WAFv2::WebACL")
///                 .destinationConfiguration(TelemetryRuleRuleDestinationConfigurationArgs.builder()
///                     .destinationType("cloud-watch-logs")
///                     .destinationPattern("aws-waf-logs-<resourceId>")
///                     .retentionInDays(30)
///                     .wafLoggingParameters(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs.builder()
///                         .logType("WAF_LOGS")
///                         .loggingFilter(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs.builder()
///                             .defaultBehavior("KEEP")
///                             .filters(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs.builder()
///                                 .behavior("DROP")
///                                 .requirement("MEETS_ANY")
///                                 .conditions(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs.builder()
///                                     .actionCondition(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs.builder()
///                                         .action("ALLOW")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .redactedFields(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs.builder()
///                             .queryString("")
///                             .singleHeader(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs.builder()
///                                 .name("authorization")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
///   exampleTelemetryRule:
///     type: aws:observabilityadmin:TelemetryRule
///     name: example
///     properties:
///       ruleName: waf-logs-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::WAFv2::WebACL
///         destinationConfiguration:
///           destinationType: cloud-watch-logs
///           destinationPattern: aws-waf-logs-<resourceId>
///           retentionInDays: 30
///           wafLoggingParameters:
///             logType: WAF_LOGS
///             loggingFilter:
///               defaultBehavior: KEEP
///               filters:
///                 - behavior: DROP
///                   requirement: MEETS_ANY
///                   conditions:
///                     - actionCondition:
///                         action: ALLOW
///             redactedFields:
///               - queryString: ""
///                 singleHeader:
///                   name: authorization
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.observabilityadmin.TelemetryEvaluation("example", {});
/// const exampleTelemetryRule = new aws.observabilityadmin.TelemetryRule("example", {
///     ruleName: "tagged-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///     },
///     tags: {
///         Environment: "production",
///         Purpose: "monitoring",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluation("example")
/// example_telemetry_rule = aws.observabilityadmin.TelemetryRule("example",
///     rule_name="tagged-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///     },
///     tags={
///         "Environment": "production",
///         "Purpose": "monitoring",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Observabilityadmin.TelemetryEvaluation("example");
///
///     var exampleTelemetryRule = new Aws.Observabilityadmin.TelemetryRule("example", new()
///     {
///         RuleName = "tagged-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "monitoring" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := observabilityadmin.NewTelemetryEvaluation(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRule(ctx, "example", &observabilityadmin.TelemetryRuleArgs{
/// 			RuleName: pulumi.String("tagged-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("monitoring"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_observabilityadmin_telemetryevaluation" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrule" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluation.example]
///   rule_name  = "tagged-rule"
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EC2::VPC"
///   }
///   tags = {
///     "Environment" = "production"
///     "Purpose"     = "monitoring"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluation;
/// import com.pulumi.aws.observabilityadmin.TelemetryRule;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new TelemetryEvaluation("example");
///
///         var exampleTelemetryRule = new TelemetryRule("exampleTelemetryRule", TelemetryRuleArgs.builder()
///             .ruleName("tagged-rule")
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "monitoring")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:observabilityadmin:TelemetryEvaluation
///   exampleTelemetryRule:
///     type: aws:observabilityadmin:TelemetryRule
///     name: example
///     properties:
///       ruleName: tagged-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///       tags:
///         Environment: production
///         Purpose: monitoring
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `ruleName` (String) Name of the telemetry rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Rules using `ruleName`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryRule:TelemetryRule example example-telemetry-rule
/// ```
class TelemetryRule extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the telemetry rule. See `rule` below.
  late final pulumi.Output<TelemetryRuleRule> rule;
  /// ARN of the telemetry rule.
  late final pulumi.Output<String> ruleArn;
  /// Name of the telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TelemetryRuleTimeouts?> timeouts;

  /// Creates a new [TelemetryRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryRule]. {@macro pulumi_observabilityadmin_telemetry_rule_telemetry_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryRule(
    String name, {
    TelemetryRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryRule:TelemetryRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryRule] resource's state with the given [name] and [id].
  static TelemetryRule get(
    String name,
    pulumi.Input<String> id, {
    TelemetryRuleState? state,
  }) {
    return TelemetryRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TelemetryRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryRule:TelemetryRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
