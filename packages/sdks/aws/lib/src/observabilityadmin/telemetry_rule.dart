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
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///     },
///     ruleName: "example-telemetry-rule",
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
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///     },
///     rule_name="example-telemetry-rule",
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
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///         },
///         RuleName = "example-telemetry-rule",
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
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 			},
/// 			RuleName: pulumi.String("example-telemetry-rule"),
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
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EC2::VPC"
///   }
///   rule_name = "example-telemetry-rule"
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
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .build())
///             .ruleName("example-telemetry-rule")
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
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///       ruleName: example-telemetry-rule
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
///     rule: {
///         destinationConfiguration: {
///             vpcFlowLogParameters: {
///                 trafficType: "ALL",
///                 maxAggregationInterval: 60,
///             },
///             destinationType: "cloud-watch-logs",
///             destinationPattern: "/aws/vpcflowlogs/<resourceId>",
///             retentionInDays: 30,
///         },
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///         telemetrySourceTypes: ["VPC_FLOW_LOGS"],
///         allRegions: true,
///         allowFieldUpdates: true,
///     },
///     ruleName: "vpc-flow-logs-rule",
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
///     rule={
///         "destination_configuration": {
///             "vpc_flow_log_parameters": {
///                 "traffic_type": "ALL",
///                 "max_aggregation_interval": 60,
///             },
///             "destination_type": "cloud-watch-logs",
///             "destination_pattern": "/aws/vpcflowlogs/<resourceId>",
///             "retention_in_days": 30,
///         },
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///         "telemetry_source_types": ["VPC_FLOW_LOGS"],
///         "all_regions": True,
///         "allow_field_updates": True,
///     },
///     rule_name="vpc-flow-logs-rule",
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
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             DestinationConfiguration = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationArgs
///             {
///                 VpcFlowLogParameters = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs
///                 {
///                     TrafficType = "ALL",
///                     MaxAggregationInterval = 60,
///                 },
///                 DestinationType = "cloud-watch-logs",
///                 DestinationPattern = "/aws/vpcflowlogs/<resourceId>",
///                 RetentionInDays = 30,
///             },
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///             TelemetrySourceTypes = new[]
///             {
///                 "VPC_FLOW_LOGS",
///             },
///             AllRegions = true,
///             AllowFieldUpdates = true,
///         },
///         RuleName = "vpc-flow-logs-rule",
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
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				DestinationConfiguration: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationArgs{
/// 					VpcFlowLogParameters: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs{
/// 						TrafficType:            pulumi.String("ALL"),
/// 						MaxAggregationInterval: pulumi.Int(60),
/// 					},
/// 					DestinationType:    pulumi.String("cloud-watch-logs"),
/// 					DestinationPattern: pulumi.String("/aws/vpcflowlogs/<resourceId>"),
/// 					RetentionInDays:    pulumi.Int(30),
/// 				},
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 				TelemetrySourceTypes: pulumi.StringArray{
/// 					pulumi.String("VPC_FLOW_LOGS"),
/// 				},
/// 				AllRegions:        pulumi.Bool(true),
/// 				AllowFieldUpdates: pulumi.Bool(true),
/// 			},
/// 			RuleName: pulumi.String("vpc-flow-logs-rule"),
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
///   rule = {
///     destination_configuration = {
///       vpc_flow_log_parameters = {
///         traffic_type             = "ALL"
///         max_aggregation_interval = 60
///       }
///       destination_type    = "cloud-watch-logs"
///       destination_pattern = "/aws/vpcflowlogs/<resourceId>"
///       retention_in_days   = 30
///     }
///     telemetry_type         = "Logs"
///     resource_type          = "AWS::EC2::VPC"
///     telemetry_source_types = ["VPC_FLOW_LOGS"]
///     all_regions            = true
///     allow_field_updates    = true
///   }
///   rule_name = "vpc-flow-logs-rule"
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
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .destinationConfiguration(TelemetryRuleRuleDestinationConfigurationArgs.builder()
///                     .vpcFlowLogParameters(TelemetryRuleRuleDestinationConfigurationVpcFlowLogParametersArgs.builder()
///                         .trafficType("ALL")
///                         .maxAggregationInterval(60)
///                         .build())
///                     .destinationType("cloud-watch-logs")
///                     .destinationPattern("/aws/vpcflowlogs/<resourceId>")
///                     .retentionInDays(30)
///                     .build())
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .telemetrySourceTypes("VPC_FLOW_LOGS")
///                 .allRegions(true)
///                 .allowFieldUpdates(true)
///                 .build())
///             .ruleName("vpc-flow-logs-rule")
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
///       rule:
///         destinationConfiguration:
///           vpcFlowLogParameters:
///             trafficType: ALL
///             maxAggregationInterval: 60
///           destinationType: cloud-watch-logs
///           destinationPattern: /aws/vpcflowlogs/<resourceId>
///           retentionInDays: 30
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///         telemetrySourceTypes:
///           - VPC_FLOW_LOGS
///         allRegions: true
///         allowFieldUpdates: true
///       ruleName: vpc-flow-logs-rule
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
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EKS::Cluster",
///         regions: [
///             "us-east-1",
///             "us-west-2",
///             "eu-west-1",
///         ],
///     },
///     ruleName: "multi-region-rule",
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
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EKS::Cluster",
///         "regions": [
///             "us-east-1",
///             "us-west-2",
///             "eu-west-1",
///         ],
///     },
///     rule_name="multi-region-rule",
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
///         RuleName = "multi-region-rule",
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
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EKS::Cluster"),
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-west-2"),
/// 					pulumi.String("eu-west-1"),
/// 				},
/// 			},
/// 			RuleName: pulumi.String("multi-region-rule"),
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
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EKS::Cluster"
///     regions        = ["us-east-1", "us-west-2", "eu-west-1"]
///   }
///   rule_name = "multi-region-rule"
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
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EKS::Cluster")
///                 .regions(
///                     "us-east-1",
///                     "us-west-2",
///                     "eu-west-1")
///                 .build())
///             .ruleName("multi-region-rule")
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
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EKS::Cluster
///         regions:
///           - us-east-1
///           - us-west-2
///           - eu-west-1
///       ruleName: multi-region-rule
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
///     rule: {
///         destinationConfiguration: {
///             wafLoggingParameters: {
///                 loggingFilter: {
///                     filters: [{
///                         conditions: [{
///                             actionCondition: {
///                                 action: "ALLOW",
///                             },
///                         }],
///                         behavior: "DROP",
///                         requirement: "MEETS_ANY",
///                     }],
///                     defaultBehavior: "KEEP",
///                 },
///                 redactedFields: [{
///                     singleHeader: {
///                         name: "authorization",
///                     },
///                     queryString: "",
///                 }],
///                 logType: "WAF_LOGS",
///             },
///             destinationType: "cloud-watch-logs",
///             destinationPattern: "aws-waf-logs-<resourceId>",
///             retentionInDays: 30,
///         },
///         telemetryType: "Logs",
///         resourceType: "AWS::WAFv2::WebACL",
///     },
///     ruleName: "waf-logs-rule",
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
///     rule={
///         "destination_configuration": {
///             "waf_logging_parameters": {
///                 "logging_filter": {
///                     "filters": [{
///                         "conditions": [{
///                             "action_condition": {
///                                 "action": "ALLOW",
///                             },
///                         }],
///                         "behavior": "DROP",
///                         "requirement": "MEETS_ANY",
///                     }],
///                     "default_behavior": "KEEP",
///                 },
///                 "redacted_fields": [{
///                     "single_header": {
///                         "name": "authorization",
///                     },
///                     "query_string": "",
///                 }],
///                 "log_type": "WAF_LOGS",
///             },
///             "destination_type": "cloud-watch-logs",
///             "destination_pattern": "aws-waf-logs-<resourceId>",
///             "retention_in_days": 30,
///         },
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::WAFv2::WebACL",
///     },
///     rule_name="waf-logs-rule",
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
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             DestinationConfiguration = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationArgs
///             {
///                 WafLoggingParameters = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs
///                 {
///                     LoggingFilter = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs
///                     {
///                         Filters = new[]
///                         {
///                             new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs
///                             {
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
///                                 Behavior = "DROP",
///                                 Requirement = "MEETS_ANY",
///                             },
///                         },
///                         DefaultBehavior = "KEEP",
///                     },
///                     RedactedFields = new[]
///                     {
///                         new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs
///                         {
///                             SingleHeader = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs
///                             {
///                                 Name = "authorization",
///                             },
///                             QueryString = "",
///                         },
///                     },
///                     LogType = "WAF_LOGS",
///                 },
///                 DestinationType = "cloud-watch-logs",
///                 DestinationPattern = "aws-waf-logs-<resourceId>",
///                 RetentionInDays = 30,
///             },
///             TelemetryType = "Logs",
///             ResourceType = "AWS::WAFv2::WebACL",
///         },
///         RuleName = "waf-logs-rule",
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
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				DestinationConfiguration: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationArgs{
/// 					WafLoggingParameters: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs{
/// 						LoggingFilter: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs{
/// 							Filters: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArray{
/// 								&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs{
/// 									Conditions: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArray{
/// 										&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs{
/// 											ActionCondition: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs{
/// 												Action: pulumi.String("ALLOW"),
/// 											},
/// 										},
/// 									},
/// 									Behavior:    pulumi.String("DROP"),
/// 									Requirement: pulumi.String("MEETS_ANY"),
/// 								},
/// 							},
/// 							DefaultBehavior: pulumi.String("KEEP"),
/// 						},
/// 						RedactedFields: observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArray{
/// 							&observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs{
/// 								SingleHeader: &observabilityadmin.TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs{
/// 									Name: pulumi.String("authorization"),
/// 								},
/// 								QueryString: pulumi.String(""),
/// 							},
/// 						},
/// 						LogType: pulumi.String("WAF_LOGS"),
/// 					},
/// 					DestinationType:    pulumi.String("cloud-watch-logs"),
/// 					DestinationPattern: pulumi.String("aws-waf-logs-<resourceId>"),
/// 					RetentionInDays:    pulumi.Int(30),
/// 				},
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::WAFv2::WebACL"),
/// 			},
/// 			RuleName: pulumi.String("waf-logs-rule"),
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
///   rule = {
///     destination_configuration = {
///       waf_logging_parameters = {
///         logging_filter = {
///           filters = [{
///             "conditions" = [{
///               "actionCondition" = {
///                 "action" = "ALLOW"
///               }
///             }]
///             "behavior"    = "DROP"
///             "requirement" = "MEETS_ANY"
///           }]
///           default_behavior = "KEEP"
///         }
///         redacted_fields = [{
///           "singleHeader" = {
///             "name" = "authorization"
///           }
///           "queryString" = ""
///         }]
///         log_type = "WAF_LOGS"
///       }
///       destination_type    = "cloud-watch-logs"
///       destination_pattern = "aws-waf-logs-<resourceId>"
///       retention_in_days   = 30
///     }
///     telemetry_type = "Logs"
///     resource_type  = "AWS::WAFv2::WebACL"
///   }
///   rule_name = "waf-logs-rule"
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
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .destinationConfiguration(TelemetryRuleRuleDestinationConfigurationArgs.builder()
///                     .wafLoggingParameters(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersArgs.builder()
///                         .loggingFilter(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterArgs.builder()
///                             .filters(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterArgs.builder()
///                                 .conditions(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionArgs.builder()
///                                     .actionCondition(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilterConditionActionConditionArgs.builder()
///                                         .action("ALLOW")
///                                         .build())
///                                     .build())
///                                 .behavior("DROP")
///                                 .requirement("MEETS_ANY")
///                                 .build())
///                             .defaultBehavior("KEEP")
///                             .build())
///                         .redactedFields(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldArgs.builder()
///                             .singleHeader(TelemetryRuleRuleDestinationConfigurationWafLoggingParametersRedactedFieldSingleHeaderArgs.builder()
///                                 .name("authorization")
///                                 .build())
///                             .queryString("")
///                             .build())
///                         .logType("WAF_LOGS")
///                         .build())
///                     .destinationType("cloud-watch-logs")
///                     .destinationPattern("aws-waf-logs-<resourceId>")
///                     .retentionInDays(30)
///                     .build())
///                 .telemetryType("Logs")
///                 .resourceType("AWS::WAFv2::WebACL")
///                 .build())
///             .ruleName("waf-logs-rule")
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
///       rule:
///         destinationConfiguration:
///           wafLoggingParameters:
///             loggingFilter:
///               filters:
///                 - conditions:
///                     - actionCondition:
///                         action: ALLOW
///                   behavior: DROP
///                   requirement: MEETS_ANY
///               defaultBehavior: KEEP
///             redactedFields:
///               - singleHeader:
///                   name: authorization
///                 queryString: ""
///             logType: WAF_LOGS
///           destinationType: cloud-watch-logs
///           destinationPattern: aws-waf-logs-<resourceId>
///           retentionInDays: 30
///         telemetryType: Logs
///         resourceType: AWS::WAFv2::WebACL
///       ruleName: waf-logs-rule
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
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///     },
///     ruleName: "tagged-rule",
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
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///     },
///     rule_name="tagged-rule",
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
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///         },
///         RuleName = "tagged-rule",
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
/// 			Rule: &observabilityadmin.TelemetryRuleRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 			},
/// 			RuleName: pulumi.String("tagged-rule"),
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
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EC2::VPC"
///   }
///   rule_name = "tagged-rule"
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
///             .rule(TelemetryRuleRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .build())
///             .ruleName("tagged-rule")
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
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///       ruleName: tagged-rule
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TelemetryRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryRule] resource's state with the given [name] and [id].
  static TelemetryRule get(
    String name,
    pulumi.Input<String> id, {
    TelemetryRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TelemetryRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TelemetryRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TelemetryRule] resource.
  TelemetryRule.reference(String urn)
    : super(
        'aws:observabilityadmin/telemetryRule:TelemetryRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TelemetryRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
