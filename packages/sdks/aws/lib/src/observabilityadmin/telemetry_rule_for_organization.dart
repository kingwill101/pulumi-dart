import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_args.dart';
import 'telemetry_rule_for_organization_rule.dart';
import 'telemetry_rule_for_organization_state.dart';
import 'telemetry_rule_for_organization_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Rule for an AWS Organization.
///
/// An organization-wide telemetry rule defines how telemetry data (logs, metrics, or traces) should be collected for AWS resources across the accounts in your organization. The rule can target one or more Regions and configure a destination (such as CloudWatch Logs or S3) along with source-specific parameters for VPC flow logs, WAF logs, CloudTrail events, ELB access logs, and more.
///
/// &gt; **NOTE:** Before using this resource, telemetry evaluation for organization must be enabled. Use the `aws.observabilityadmin.TelemetryEvaluationForOrganization` resource to enable it.
///
/// &gt; **NOTE:** This resource can only be used from the organization management account.
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
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {});
/// const exampleTelemetryRuleForOrganization = new aws.observabilityadmin.TelemetryRuleForOrganization("example", {
///     ruleName: "example-org-telemetry-rule",
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
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example")
/// example_telemetry_rule_for_organization = aws.observabilityadmin.TelemetryRuleForOrganization("example",
///     rule_name="example-org-telemetry-rule",
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
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example");
///
///     var exampleTelemetryRuleForOrganization = new Aws.Observabilityadmin.TelemetryRuleForOrganization("example", new()
///     {
///         RuleName = "example-org-telemetry-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleArgs
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
/// 		example, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRuleForOrganization(ctx, "example", &observabilityadmin.TelemetryRuleForOrganizationArgs{
/// 			RuleName: pulumi.String("example-org-telemetry-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleForOrganizationRuleArgs{
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrulefororganization" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluationfororganization.example]
///   rule_name  = "example-org-telemetry-rule"
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
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleArgs;
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
///         var example = new TelemetryEvaluationForOrganization("example");
///
///         var exampleTelemetryRuleForOrganization = new TelemetryRuleForOrganization("exampleTelemetryRuleForOrganization", TelemetryRuleForOrganizationArgs.builder()
///             .ruleName("example-org-telemetry-rule")
///             .rule(TelemetryRuleForOrganizationRuleArgs.builder()
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
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///   exampleTelemetryRuleForOrganization:
///     type: aws:observabilityadmin:TelemetryRuleForOrganization
///     name: example
///     properties:
///       ruleName: example-org-telemetry-rule
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
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {});
/// const exampleTelemetryRuleForOrganization = new aws.observabilityadmin.TelemetryRuleForOrganization("example", {
///     ruleName: "org-vpc-flow-logs-rule",
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
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example")
/// example_telemetry_rule_for_organization = aws.observabilityadmin.TelemetryRuleForOrganization("example",
///     rule_name="org-vpc-flow-logs-rule",
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
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example");
///
///     var exampleTelemetryRuleForOrganization = new Aws.Observabilityadmin.TelemetryRuleForOrganization("example", new()
///     {
///         RuleName = "org-vpc-flow-logs-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///             TelemetrySourceTypes = new[]
///             {
///                 "VPC_FLOW_LOGS",
///             },
///             AllRegions = true,
///             AllowFieldUpdates = true,
///             DestinationConfiguration = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleDestinationConfigurationArgs
///             {
///                 DestinationType = "cloud-watch-logs",
///                 DestinationPattern = "/aws/vpcflowlogs/<resourceId>",
///                 RetentionInDays = 30,
///                 VpcFlowLogParameters = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParametersArgs
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
/// 		example, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRuleForOrganization(ctx, "example", &observabilityadmin.TelemetryRuleForOrganizationArgs{
/// 			RuleName: pulumi.String("org-vpc-flow-logs-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleForOrganizationRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 				TelemetrySourceTypes: pulumi.StringArray{
/// 					pulumi.String("VPC_FLOW_LOGS"),
/// 				},
/// 				AllRegions:        pulumi.Bool(true),
/// 				AllowFieldUpdates: pulumi.Bool(true),
/// 				DestinationConfiguration: &observabilityadmin.TelemetryRuleForOrganizationRuleDestinationConfigurationArgs{
/// 					DestinationType:    pulumi.String("cloud-watch-logs"),
/// 					DestinationPattern: pulumi.String("/aws/vpcflowlogs/<resourceId>"),
/// 					RetentionInDays:    pulumi.Int(30),
/// 					VpcFlowLogParameters: &observabilityadmin.TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParametersArgs{
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrulefororganization" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluationfororganization.example]
///   rule_name  = "org-vpc-flow-logs-rule"
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
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleDestinationConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParametersArgs;
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
///         var example = new TelemetryEvaluationForOrganization("example");
///
///         var exampleTelemetryRuleForOrganization = new TelemetryRuleForOrganization("exampleTelemetryRuleForOrganization", TelemetryRuleForOrganizationArgs.builder()
///             .ruleName("org-vpc-flow-logs-rule")
///             .rule(TelemetryRuleForOrganizationRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .telemetrySourceTypes("VPC_FLOW_LOGS")
///                 .allRegions(true)
///                 .allowFieldUpdates(true)
///                 .destinationConfiguration(TelemetryRuleForOrganizationRuleDestinationConfigurationArgs.builder()
///                     .destinationType("cloud-watch-logs")
///                     .destinationPattern("/aws/vpcflowlogs/<resourceId>")
///                     .retentionInDays(30)
///                     .vpcFlowLogParameters(TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParametersArgs.builder()
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
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///   exampleTelemetryRuleForOrganization:
///     type: aws:observabilityadmin:TelemetryRuleForOrganization
///     name: example
///     properties:
///       ruleName: org-vpc-flow-logs-rule
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
/// ### Scoped to Specific Organizational Units
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.organizations.getOrganization({});
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {});
/// const exampleTelemetryRuleForOrganization = new aws.observabilityadmin.TelemetryRuleForOrganization("example", {
///     ruleName: "org-scoped-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EKS::Cluster",
///         scope: current.then(current => `OrganizationId = '${current.id}'`),
///         selectionCriteria: "ResourceTags.Environment = 'production'",
///         regions: [
///             "us-east-1",
///             "us-west-2",
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
/// current = aws.organizations.get_organization()
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example")
/// example_telemetry_rule_for_organization = aws.observabilityadmin.TelemetryRuleForOrganization("example",
///     rule_name="org-scoped-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EKS::Cluster",
///         "scope": f"OrganizationId = '{current.id}'",
///         "selection_criteria": "ResourceTags.Environment = 'production'",
///         "regions": [
///             "us-east-1",
///             "us-west-2",
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
///     var current = Aws.Organizations.GetOrganization.Invoke();
///
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example");
///
///     var exampleTelemetryRuleForOrganization = new Aws.Observabilityadmin.TelemetryRuleForOrganization("example", new()
///     {
///         RuleName = "org-scoped-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EKS::Cluster",
///             Scope = $"OrganizationId = '{current.Apply(getOrganizationResult => getOrganizationResult.Id)}'",
///             SelectionCriteria = "ResourceTags.Environment = 'production'",
///             Regions = new[]
///             {
///                 "us-east-1",
///                 "us-west-2",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRuleForOrganization(ctx, "example", &observabilityadmin.TelemetryRuleForOrganizationArgs{
/// 			RuleName: pulumi.String("org-scoped-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleForOrganizationRuleArgs{
/// 				TelemetryType:     pulumi.String("Logs"),
/// 				ResourceType:      pulumi.String("AWS::EKS::Cluster"),
/// 				Scope:             pulumi.Sprintf("OrganizationId = '%v'", current.Id),
/// 				SelectionCriteria: pulumi.String("ResourceTags.Environment = 'production'"),
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("us-east-1"),
/// 					pulumi.String("us-west-2"),
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
/// data "aws_organizations_getorganization" "current" {
/// }
///
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrulefororganization" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluationfororganization.example]
///   rule_name  = "org-scoped-rule"
///   rule = {
///     telemetry_type     = "Logs"
///     resource_type      = "AWS::EKS::Cluster"
///     scope              ="OrganizationId = '${data.aws_organizations_getorganization.current.id}'"
///     selection_criteria = "ResourceTags.Environment = 'production'"
///     regions            = ["us-east-1", "us-west-2"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleArgs;
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
///         final var current = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var example = new TelemetryEvaluationForOrganization("example");
///
///         var exampleTelemetryRuleForOrganization = new TelemetryRuleForOrganization("exampleTelemetryRuleForOrganization", TelemetryRuleForOrganizationArgs.builder()
///             .ruleName("org-scoped-rule")
///             .rule(TelemetryRuleForOrganizationRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EKS::Cluster")
///                 .scope(String.format("OrganizationId = '%s'", current.id()))
///                 .selectionCriteria("ResourceTags.Environment = 'production'")
///                 .regions(
///                     "us-east-1",
///                     "us-west-2")
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
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///   exampleTelemetryRuleForOrganization:
///     type: aws:observabilityadmin:TelemetryRuleForOrganization
///     name: example
///     properties:
///       ruleName: org-scoped-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EKS::Cluster
///         scope: OrganizationId = '${current.id}'
///         selectionCriteria: ResourceTags.Environment = 'production'
///         regions:
///           - us-east-1
///           - us-west-2
///     options:
///       dependsOn:
///         - ${example}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
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
/// const example = new aws.observabilityadmin.TelemetryEvaluationForOrganization("example", {});
/// const exampleTelemetryRuleForOrganization = new aws.observabilityadmin.TelemetryRuleForOrganization("example", {
///     ruleName: "org-tagged-rule",
///     rule: {
///         telemetryType: "Logs",
///         resourceType: "AWS::EC2::VPC",
///     },
///     tags: {
///         Environment: "production",
///         Purpose: "organization-monitoring",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.observabilityadmin.TelemetryEvaluationForOrganization("example")
/// example_telemetry_rule_for_organization = aws.observabilityadmin.TelemetryRuleForOrganization("example",
///     rule_name="org-tagged-rule",
///     rule={
///         "telemetry_type": "Logs",
///         "resource_type": "AWS::EC2::VPC",
///     },
///     tags={
///         "Environment": "production",
///         "Purpose": "organization-monitoring",
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
///     var example = new Aws.Observabilityadmin.TelemetryEvaluationForOrganization("example");
///
///     var exampleTelemetryRuleForOrganization = new Aws.Observabilityadmin.TelemetryRuleForOrganization("example", new()
///     {
///         RuleName = "org-tagged-rule",
///         Rule = new Aws.Observabilityadmin.Inputs.TelemetryRuleForOrganizationRuleArgs
///         {
///             TelemetryType = "Logs",
///             ResourceType = "AWS::EC2::VPC",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "organization-monitoring" },
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
/// 		example, err := observabilityadmin.NewTelemetryEvaluationForOrganization(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewTelemetryRuleForOrganization(ctx, "example", &observabilityadmin.TelemetryRuleForOrganizationArgs{
/// 			RuleName: pulumi.String("org-tagged-rule"),
/// 			Rule: &observabilityadmin.TelemetryRuleForOrganizationRuleArgs{
/// 				TelemetryType: pulumi.String("Logs"),
/// 				ResourceType:  pulumi.String("AWS::EC2::VPC"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("organization-monitoring"),
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
/// resource "aws_observabilityadmin_telemetryevaluationfororganization" "example" {
/// }
/// resource "aws_observabilityadmin_telemetryrulefororganization" "example" {
///   depends_on = [aws_observabilityadmin_telemetryevaluationfororganization.example]
///   rule_name  = "org-tagged-rule"
///   rule = {
///     telemetry_type = "Logs"
///     resource_type  = "AWS::EC2::VPC"
///   }
///   tags = {
///     "Environment" = "production"
///     "Purpose"     = "organization-monitoring"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.observabilityadmin.TelemetryEvaluationForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.TelemetryRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.TelemetryRuleForOrganizationRuleArgs;
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
///         var example = new TelemetryEvaluationForOrganization("example");
///
///         var exampleTelemetryRuleForOrganization = new TelemetryRuleForOrganization("exampleTelemetryRuleForOrganization", TelemetryRuleForOrganizationArgs.builder()
///             .ruleName("org-tagged-rule")
///             .rule(TelemetryRuleForOrganizationRuleArgs.builder()
///                 .telemetryType("Logs")
///                 .resourceType("AWS::EC2::VPC")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "organization-monitoring")
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
///     type: aws:observabilityadmin:TelemetryEvaluationForOrganization
///   exampleTelemetryRuleForOrganization:
///     type: aws:observabilityadmin:TelemetryRuleForOrganization
///     name: example
///     properties:
///       ruleName: org-tagged-rule
///       rule:
///         telemetryType: Logs
///         resourceType: AWS::EC2::VPC
///       tags:
///         Environment: production
///         Purpose: organization-monitoring
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
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Rules for Organization using `ruleName`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryRuleForOrganization:TelemetryRuleForOrganization example example-org-telemetry-rule
/// ```
class TelemetryRuleForOrganization extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the organization telemetry rule. See `rule` below.
  late final pulumi.Output<TelemetryRuleForOrganizationRule> rule;
  /// ARN of the organization telemetry rule.
  late final pulumi.Output<String> ruleArn;
  /// Name of the organization telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TelemetryRuleForOrganizationTimeouts?> timeouts;

  /// Creates a new [TelemetryRuleForOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryRuleForOrganization]. {@macro pulumi_observabilityadmin_telemetry_rule_for_organization_telemetry_rule_for_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryRuleForOrganization(
    String name, {
    TelemetryRuleForOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryRuleForOrganization:TelemetryRuleForOrganization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleForOrganizationRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleForOrganizationRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryRuleForOrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryRuleForOrganization] resource's state with the given [name] and [id].
  static TelemetryRuleForOrganization get(
    String name,
    pulumi.Input<String> id, {
    TelemetryRuleForOrganizationState? state,
  }) {
    return TelemetryRuleForOrganization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TelemetryRuleForOrganization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryRuleForOrganization:TelemetryRuleForOrganization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    rule = registerOutput<TelemetryRuleForOrganizationRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleForOrganizationRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ruleArn = registerOutput<String>('ruleArn');
    ruleName = registerOutput<String>('ruleName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryRuleForOrganizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryRuleForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
