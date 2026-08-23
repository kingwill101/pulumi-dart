import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_args.dart';
import 'experiment_template_experiment_options.dart';
import 'experiment_template_experiment_report_configuration.dart';
import 'experiment_template_log_configuration.dart';
import 'experiment_template_state.dart';

/// Provides an FIS Experiment Template, which can be used to run an experiment.
/// An experiment template contains one or more actions to run on specified targets during an experiment.
/// It also contains the stop conditions that prevent the experiment from going out of bounds.
/// See [Amazon Fault Injection Simulator](https://docs.aws.amazon.com/fis/index.html)
/// for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fis.ExperimentTemplate("example", {
///     description: "example",
///     roleArn: exampleAwsIamRole.arn,
///     stopConditions: [{
///         source: "none",
///     }],
///     actions: [{
///         name: "example-action",
///         actionId: "aws:ec2:terminate-instances",
///         target: {
///             key: "Instances",
///             value: "example-target",
///         },
///     }],
///     targets: [{
///         name: "example-target",
///         resourceType: "aws:ec2:instance",
///         selectionMode: "COUNT(1)",
///         resourceTags: [{
///             key: "env",
///             value: "example",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fis.ExperimentTemplate("example",
///     description="example",
///     role_arn=example_aws_iam_role["arn"],
///     stop_conditions=[{
///         "source": "none",
///     }],
///     actions=[{
///         "name": "example-action",
///         "action_id": "aws:ec2:terminate-instances",
///         "target": {
///             "key": "Instances",
///             "value": "example-target",
///         },
///     }],
///     targets=[{
///         "name": "example-target",
///         "resource_type": "aws:ec2:instance",
///         "selection_mode": "COUNT(1)",
///         "resource_tags": [{
///             "key": "env",
///             "value": "example",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fis.ExperimentTemplate("example", new()
///     {
///         Description = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         StopConditions = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateStopConditionArgs
///             {
///                 Source = "none",
///             },
///         },
///         Actions = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateActionArgs
///             {
///                 Name = "example-action",
///                 ActionId = "aws:ec2:terminate-instances",
///                 Target = new Aws.Fis.Inputs.ExperimentTemplateActionTargetArgs
///                 {
///                     Key = "Instances",
///                     Value = "example-target",
///                 },
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateTargetArgs
///             {
///                 Name = "example-target",
///                 ResourceType = "aws:ec2:instance",
///                 SelectionMode = "COUNT(1)",
///                 ResourceTags = new[]
///                 {
///                     new Aws.Fis.Inputs.ExperimentTemplateTargetResourceTagArgs
///                     {
///                         Key = "env",
///                         Value = "example",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fis.NewExperimentTemplate(ctx, "example", &fis.ExperimentTemplateArgs{
/// 			Description: pulumi.String("example"),
/// 			RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 			StopConditions: fis.ExperimentTemplateStopConditionArray{
/// 				&fis.ExperimentTemplateStopConditionArgs{
/// 					Source: pulumi.String("none"),
/// 				},
/// 			},
/// 			Actions: fis.ExperimentTemplateActionArray{
/// 				&fis.ExperimentTemplateActionArgs{
/// 					Name:     pulumi.String("example-action"),
/// 					ActionId: pulumi.String("aws:ec2:terminate-instances"),
/// 					Target: &fis.ExperimentTemplateActionTargetArgs{
/// 						Key:   pulumi.String("Instances"),
/// 						Value: pulumi.String("example-target"),
/// 					},
/// 				},
/// 			},
/// 			Targets: fis.ExperimentTemplateTargetArray{
/// 				&fis.ExperimentTemplateTargetArgs{
/// 					Name:          pulumi.String("example-target"),
/// 					ResourceType:  pulumi.String("aws:ec2:instance"),
/// 					SelectionMode: pulumi.String("COUNT(1)"),
/// 					ResourceTags: fis.ExperimentTemplateTargetResourceTagArray{
/// 						&fis.ExperimentTemplateTargetResourceTagArgs{
/// 							Key:   pulumi.String("env"),
/// 							Value: pulumi.String("example"),
/// 						},
/// 					},
/// 				},
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_fis_experimenttemplate" "example" {
///   description = "example"
///   role_arn    = exampleAwsIamRole.arn
///   stop_conditions {
///     source = "none"
///   }
///   actions {
///     name      = "example-action"
///     action_id = "aws:ec2:terminate-instances"
///     target = {
///       key   = "Instances"
///       value = "example-target"
///     }
///   }
///   targets {
///     name           = "example-target"
///     resource_type  = "aws:ec2:instance"
///     selection_mode = "COUNT(1)"
///     resource_tags {
///       key   = "env"
///       value = "example"
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
/// import com.pulumi.aws.fis.ExperimentTemplate;
/// import com.pulumi.aws.fis.ExperimentTemplateArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateStopConditionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetResourceTagArgs;
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
///         var example = new ExperimentTemplate("example", ExperimentTemplateArgs.builder()
///             .description("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .stopConditions(ExperimentTemplateStopConditionArgs.builder()
///                 .source("none")
///                 .build())
///             .actions(ExperimentTemplateActionArgs.builder()
///                 .name("example-action")
///                 .actionId("aws:ec2:terminate-instances")
///                 .target(ExperimentTemplateActionTargetArgs.builder()
///                     .key("Instances")
///                     .value("example-target")
///                     .build())
///                 .build())
///             .targets(ExperimentTemplateTargetArgs.builder()
///                 .name("example-target")
///                 .resourceType("aws:ec2:instance")
///                 .selectionMode("COUNT(1)")
///                 .resourceTags(ExperimentTemplateTargetResourceTagArgs.builder()
///                     .key("env")
///                     .value("example")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fis:ExperimentTemplate
///     properties:
///       description: example
///       roleArn: ${exampleAwsIamRole.arn}
///       stopConditions:
///         - source: none
///       actions:
///         - name: example-action
///           actionId: aws:ec2:terminate-instances
///           target:
///             key: Instances
///             value: example-target
///       targets:
///         - name: example-target
///           resourceType: aws:ec2:instance
///           selectionMode: COUNT(1)
///           resourceTags:
///             - key: env
///               value: example
/// ```
///
///
/// ### Example Usage with Report Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const example = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: JSON.stringify({
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: [current.then(current => `fis.${current.dnsSuffix}`)],
///             },
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// const reportAccess = aws.iam.getPolicyDocument({
///     version: "2012-10-17",
///     statements: [
///         {
///             sid: "logsDelivery",
///             effect: "Allow",
///             actions: ["logs:CreateLogDelivery"],
///             resources: ["*"],
///         },
///         {
///             sid: "ReportsBucket",
///             effect: "Allow",
///             actions: [
///                 "s3:PutObject",
///                 "s3:GetObject",
///             ],
///             resources: ["*"],
///         },
///         {
///             sid: "GetDashboard",
///             effect: "Allow",
///             actions: ["cloudwatch:GetDashboard"],
///             resources: ["*"],
///         },
///         {
///             sid: "GetDashboardData",
///             effect: "Allow",
///             actions: ["cloudwatch:getMetricWidgetImage"],
///             resources: ["*"],
///         },
///     ],
/// });
/// const reportAccessPolicy = new aws.iam.Policy("report_access", {
///     name: "report_access",
///     policy: reportAccess.then(reportAccess => reportAccess.json),
/// });
/// const reportAccessRolePolicyAttachment = new aws.iam.RolePolicyAttachment("report_access", {
///     role: test.name,
///     policyArn: reportAccessPolicy.arn,
/// });
/// const exampleExperimentTemplate = new aws.fis.ExperimentTemplate("example", {
///     description: "example",
///     roleArn: example.arn,
///     stopConditions: [{
///         source: "none",
///     }],
///     actions: [{
///         name: "example-action",
///         actionId: "aws:ec2:terminate-instances",
///         target: {
///             key: "Instances",
///             value: "example-target",
///         },
///     }],
///     targets: [{
///         name: "example-target",
///         resourceType: "aws:ec2:instance",
///         selectionMode: "COUNT(1)",
///         resourceTags: [{
///             key: "env",
///             value: "example",
///         }],
///     }],
///     experimentReportConfiguration: {
///         dataSources: {
///             cloudwatchDashboards: [{
///                 dashboardArn: exampleAwsCloudwatchDashboard.dashboardArn,
///             }],
///         },
///         outputs: {
///             s3Configuration: {
///                 bucketName: exampleAwsS3Bucket.bucket,
///                 prefix: "fis-example-reports",
///             },
///         },
///         postExperimentDuration: "PT10M",
///         preExperimentDuration: "PT10M",
///     },
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// example = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=json.dumps({
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": [f"fis.{current.dns_suffix}"],
///             },
///         }],
///         "Version": "2012-10-17",
///     }))
/// report_access = aws.iam.get_policy_document(version="2012-10-17",
///     statements=[
///         {
///             "sid": "logsDelivery",
///             "effect": "Allow",
///             "actions": ["logs:CreateLogDelivery"],
///             "resources": ["*"],
///         },
///         {
///             "sid": "ReportsBucket",
///             "effect": "Allow",
///             "actions": [
///                 "s3:PutObject",
///                 "s3:GetObject",
///             ],
///             "resources": ["*"],
///         },
///         {
///             "sid": "GetDashboard",
///             "effect": "Allow",
///             "actions": ["cloudwatch:GetDashboard"],
///             "resources": ["*"],
///         },
///         {
///             "sid": "GetDashboardData",
///             "effect": "Allow",
///             "actions": ["cloudwatch:getMetricWidgetImage"],
///             "resources": ["*"],
///         },
///     ])
/// report_access_policy = aws.iam.Policy("report_access",
///     name="report_access",
///     policy=report_access.json)
/// report_access_role_policy_attachment = aws.iam.RolePolicyAttachment("report_access",
///     role=test["name"],
///     policy_arn=report_access_policy.arn)
/// example_experiment_template = aws.fis.ExperimentTemplate("example",
///     description="example",
///     role_arn=example.arn,
///     stop_conditions=[{
///         "source": "none",
///     }],
///     actions=[{
///         "name": "example-action",
///         "action_id": "aws:ec2:terminate-instances",
///         "target": {
///             "key": "Instances",
///             "value": "example-target",
///         },
///     }],
///     targets=[{
///         "name": "example-target",
///         "resource_type": "aws:ec2:instance",
///         "selection_mode": "COUNT(1)",
///         "resource_tags": [{
///             "key": "env",
///             "value": "example",
///         }],
///     }],
///     experiment_report_configuration={
///         "data_sources": {
///             "cloudwatch_dashboards": [{
///                 "dashboard_arn": example_aws_cloudwatch_dashboard["dashboardArn"],
///             }],
///         },
///         "outputs": {
///             "s3_configuration": {
///                 "bucket_name": example_aws_s3_bucket["bucket"],
///                 "prefix": "fis-example-reports",
///             },
///         },
///         "post_experiment_duration": "PT10M",
///         "pre_experiment_duration": "PT10M",
///     },
///     tags={
///         "Name": "example",
///     })
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
///     var current = Aws.GetPartition.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = new[]
///                         {
///                             $"fis.{current.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}",
///                         },
///                     },
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
///     var reportAccess = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Version = "2012-10-17",
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "logsDelivery",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "logs:CreateLogDelivery",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "ReportsBucket",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                     "s3:GetObject",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "GetDashboard",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "cloudwatch:GetDashboard",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "GetDashboardData",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "cloudwatch:getMetricWidgetImage",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var reportAccessPolicy = new Aws.Iam.Policy("report_access", new()
///     {
///         Name = "report_access",
///         PolicyDocument = reportAccess.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var reportAccessRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("report_access", new()
///     {
///         Role = test.Name,
///         PolicyArn = reportAccessPolicy.Arn,
///     });
///
///     var exampleExperimentTemplate = new Aws.Fis.ExperimentTemplate("example", new()
///     {
///         Description = "example",
///         RoleArn = example.Arn,
///         StopConditions = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateStopConditionArgs
///             {
///                 Source = "none",
///             },
///         },
///         Actions = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateActionArgs
///             {
///                 Name = "example-action",
///                 ActionId = "aws:ec2:terminate-instances",
///                 Target = new Aws.Fis.Inputs.ExperimentTemplateActionTargetArgs
///                 {
///                     Key = "Instances",
///                     Value = "example-target",
///                 },
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Fis.Inputs.ExperimentTemplateTargetArgs
///             {
///                 Name = "example-target",
///                 ResourceType = "aws:ec2:instance",
///                 SelectionMode = "COUNT(1)",
///                 ResourceTags = new[]
///                 {
///                     new Aws.Fis.Inputs.ExperimentTemplateTargetResourceTagArgs
///                     {
///                         Key = "env",
///                         Value = "example",
///                     },
///                 },
///             },
///         },
///         ExperimentReportConfiguration = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationArgs
///         {
///             DataSources = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs
///             {
///                 CloudwatchDashboards = new[]
///                 {
///                     new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs
///                     {
///                         DashboardArn = exampleAwsCloudwatchDashboard.DashboardArn,
///                     },
///                 },
///             },
///             Outputs = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationOutputsArgs
///             {
///                 S3Configuration = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs
///                 {
///                     BucketName = exampleAwsS3Bucket.Bucket,
///                     Prefix = "fis-example-reports",
///                 },
///             },
///             PostExperimentDuration = "PT10M",
///             PreExperimentDuration = "PT10M",
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string][]string{
/// 						"Service": []string{
/// 							fmt.Sprintf("fis.%v", current.DnsSuffix),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reportAccess, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Version: pulumi.StringRef("2012-10-17"),
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("logsDelivery"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"logs:CreateLogDelivery",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid:    pulumi.StringRef("ReportsBucket"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"s3:PutObject",
/// 						"s3:GetObject",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid:    pulumi.StringRef("GetDashboard"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"cloudwatch:GetDashboard",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Sid:    pulumi.StringRef("GetDashboardData"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"cloudwatch:getMetricWidgetImage",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reportAccessPolicy, err := iam.NewPolicy(ctx, "report_access", &iam.PolicyArgs{
/// 			Name:   pulumi.String("report_access"),
/// 			Policy: pulumi.String(reportAccess.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "report_access", &iam.RolePolicyAttachmentArgs{
/// 			Role:      pulumi.Any(test.Name),
/// 			PolicyArn: reportAccessPolicy.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fis.NewExperimentTemplate(ctx, "example", &fis.ExperimentTemplateArgs{
/// 			Description: pulumi.String("example"),
/// 			RoleArn:     example.Arn,
/// 			StopConditions: fis.ExperimentTemplateStopConditionArray{
/// 				&fis.ExperimentTemplateStopConditionArgs{
/// 					Source: pulumi.String("none"),
/// 				},
/// 			},
/// 			Actions: fis.ExperimentTemplateActionArray{
/// 				&fis.ExperimentTemplateActionArgs{
/// 					Name:     pulumi.String("example-action"),
/// 					ActionId: pulumi.String("aws:ec2:terminate-instances"),
/// 					Target: &fis.ExperimentTemplateActionTargetArgs{
/// 						Key:   pulumi.String("Instances"),
/// 						Value: pulumi.String("example-target"),
/// 					},
/// 				},
/// 			},
/// 			Targets: fis.ExperimentTemplateTargetArray{
/// 				&fis.ExperimentTemplateTargetArgs{
/// 					Name:          pulumi.String("example-target"),
/// 					ResourceType:  pulumi.String("aws:ec2:instance"),
/// 					SelectionMode: pulumi.String("COUNT(1)"),
/// 					ResourceTags: fis.ExperimentTemplateTargetResourceTagArray{
/// 						&fis.ExperimentTemplateTargetResourceTagArgs{
/// 							Key:   pulumi.String("env"),
/// 							Value: pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ExperimentReportConfiguration: &fis.ExperimentTemplateExperimentReportConfigurationArgs{
/// 				DataSources: &fis.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs{
/// 					CloudwatchDashboards: fis.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArray{
/// 						&fis.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs{
/// 							DashboardArn: pulumi.Any(exampleAwsCloudwatchDashboard.DashboardArn),
/// 						},
/// 					},
/// 				},
/// 				Outputs: &fis.ExperimentTemplateExperimentReportConfigurationOutputsArgs{
/// 					S3Configuration: &fis.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs{
/// 						BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// 						Prefix:     pulumi.String("fis-example-reports"),
/// 					},
/// 				},
/// 				PostExperimentDuration: pulumi.String("PT10M"),
/// 				PreExperimentDuration:  pulumi.String("PT10M"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getpartition" "current" {
/// }
/// data "aws_iam_getpolicydocument" "reportAccess" {
///   version = "2012-10-17"
///   statements {
///     sid       = "logsDelivery"
///     effect    = "Allow"
///     actions   = ["logs:CreateLogDelivery"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "ReportsBucket"
///     effect    = "Allow"
///     actions   = ["s3:PutObject", "s3:GetObject"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "GetDashboard"
///     effect    = "Allow"
///     actions   = ["cloudwatch:GetDashboard"]
///     resources = ["*"]
///   }
///   statements {
///     sid       = "GetDashboardData"
///     effect    = "Allow"
///     actions   = ["cloudwatch:getMetricWidgetImage"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name = "example"
///   assume_role_policy = jsonencode({
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = ["fis.${data.aws_getpartition.current.dns_suffix}"]
///       }
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// resource "aws_iam_policy" "report_access" {
///   name   = "report_access"
///   policy = data.aws_iam_getpolicydocument.reportAccess.json
/// }
/// resource "aws_iam_rolepolicyattachment" "report_access" {
///   role       = test.name
///   policy_arn = aws_iam_policy.report_access.arn
/// }
/// resource "aws_fis_experimenttemplate" "example" {
///   description = "example"
///   role_arn    = aws_iam_role.example.arn
///   stop_conditions {
///     source = "none"
///   }
///   actions {
///     name      = "example-action"
///     action_id = "aws:ec2:terminate-instances"
///     target = {
///       key   = "Instances"
///       value = "example-target"
///     }
///   }
///   targets {
///     name           = "example-target"
///     resource_type  = "aws:ec2:instance"
///     selection_mode = "COUNT(1)"
///     resource_tags {
///       key   = "env"
///       value = "example"
///     }
///   }
///   experiment_report_configuration = {
///     data_sources = {
///       cloudwatch_dashboards = [{
///         "dashboardArn" = exampleAwsCloudwatchDashboard.dashboardArn
///       }]
///     }
///     outputs = {
///       s3_configuration = {
///         bucket_name = exampleAwsS3Bucket.bucket
///         prefix      = "fis-example-reports"
///       }
///     }
///     post_experiment_duration = "PT10M"
///     pre_experiment_duration  = "PT10M"
///   }
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.fis.ExperimentTemplate;
/// import com.pulumi.aws.fis.ExperimentTemplateArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateStopConditionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetResourceTagArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationOutputsArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", jsonArray(String.format("fis.%s", current.dnsSuffix())))
///                         ))
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///         final var reportAccess = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .version("2012-10-17")
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("logsDelivery")
///                     .effect("Allow")
///                     .actions("logs:CreateLogDelivery")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("ReportsBucket")
///                     .effect("Allow")
///                     .actions(
///                         "s3:PutObject",
///                         "s3:GetObject")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("GetDashboard")
///                     .effect("Allow")
///                     .actions("cloudwatch:GetDashboard")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("GetDashboardData")
///                     .effect("Allow")
///                     .actions("cloudwatch:getMetricWidgetImage")
///                     .resources("*")
///                     .build())
///             .build());
///
///         var reportAccessPolicy = new Policy("reportAccessPolicy", PolicyArgs.builder()
///             .name("report_access")
///             .policy(reportAccess.json())
///             .build());
///
///         var reportAccessRolePolicyAttachment = new RolePolicyAttachment("reportAccessRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(test.name())
///             .policyArn(reportAccessPolicy.arn())
///             .build());
///
///         var exampleExperimentTemplate = new ExperimentTemplate("exampleExperimentTemplate", ExperimentTemplateArgs.builder()
///             .description("example")
///             .roleArn(example.arn())
///             .stopConditions(ExperimentTemplateStopConditionArgs.builder()
///                 .source("none")
///                 .build())
///             .actions(ExperimentTemplateActionArgs.builder()
///                 .name("example-action")
///                 .actionId("aws:ec2:terminate-instances")
///                 .target(ExperimentTemplateActionTargetArgs.builder()
///                     .key("Instances")
///                     .value("example-target")
///                     .build())
///                 .build())
///             .targets(ExperimentTemplateTargetArgs.builder()
///                 .name("example-target")
///                 .resourceType("aws:ec2:instance")
///                 .selectionMode("COUNT(1)")
///                 .resourceTags(ExperimentTemplateTargetResourceTagArgs.builder()
///                     .key("env")
///                     .value("example")
///                     .build())
///                 .build())
///             .experimentReportConfiguration(ExperimentTemplateExperimentReportConfigurationArgs.builder()
///                 .dataSources(ExperimentTemplateExperimentReportConfigurationDataSourcesArgs.builder()
///                     .cloudwatchDashboards(ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs.builder()
///                         .dashboardArn(exampleAwsCloudwatchDashboard.dashboardArn())
///                         .build())
///                     .build())
///                 .outputs(ExperimentTemplateExperimentReportConfigurationOutputsArgs.builder()
///                     .s3Configuration(ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs.builder()
///                         .bucketName(exampleAwsS3Bucket.bucket())
///                         .prefix("fis-example-reports")
///                         .build())
///                     .build())
///                 .postExperimentDuration("PT10M")
///                 .preExperimentDuration("PT10M")
///                 .build())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example
///       assumeRolePolicy:
///         fn::toJSON:
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service:
///                   - fis.${current.dnsSuffix}
///           Version: 2012-10-17
///   reportAccessPolicy:
///     type: aws:iam:Policy
///     name: report_access
///     properties:
///       name: report_access
///       policy: ${reportAccess.json}
///   reportAccessRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: report_access
///     properties:
///       role: ${test.name}
///       policyArn: ${reportAccessPolicy.arn}
///   exampleExperimentTemplate:
///     type: aws:fis:ExperimentTemplate
///     name: example
///     properties:
///       description: example
///       roleArn: ${example.arn}
///       stopConditions:
///         - source: none
///       actions:
///         - name: example-action
///           actionId: aws:ec2:terminate-instances
///           target:
///             key: Instances
///             value: example-target
///       targets:
///         - name: example-target
///           resourceType: aws:ec2:instance
///           selectionMode: COUNT(1)
///           resourceTags:
///             - key: env
///               value: example
///       experimentReportConfiguration:
///         dataSources:
///           cloudwatchDashboards:
///             - dashboardArn: ${exampleAwsCloudwatchDashboard.dashboardArn}
///         outputs:
///           s3Configuration:
///             bucketName: ${exampleAwsS3Bucket.bucket}
///             prefix: fis-example-reports
///         postExperimentDuration: PT10M
///         preExperimentDuration: PT10M
///       tags:
///         Name: example
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   reportAccess:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         version: 2012-10-17
///         statements:
///           - sid: logsDelivery
///             effect: Allow
///             actions:
///               - logs:CreateLogDelivery
///             resources:
///               - '*'
///           - sid: ReportsBucket
///             effect: Allow
///             actions:
///               - s3:PutObject
///               - s3:GetObject
///             resources:
///               - '*'
///           - sid: GetDashboard
///             effect: Allow
///             actions:
///               - cloudwatch:GetDashboard
///             resources:
///               - '*'
///           - sid: GetDashboardData
///             effect: Allow
///             actions:
///               - cloudwatch:getMetricWidgetImage
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FIS Experiment Templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fis/experimentTemplate:ExperimentTemplate template EXT123AbCdEfGhIjK
/// ```
class ExperimentTemplate extends pulumi.CustomResource {
  /// Action to be performed during an experiment. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;
  /// Description for the experiment template.
  late final pulumi.Output<String> description;
  /// Experiment options for the experiment template. See experimentOptions below for more details!
  late final pulumi.Output<ExperimentTemplateExperimentOptions> experimentOptions;
  /// Configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  late final pulumi.Output<ExperimentTemplateExperimentReportConfiguration?> experimentReportConfiguration;
  /// Configuration for experiment logging. See below.
  late final pulumi.Output<ExperimentTemplateLogConfiguration?> logConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  late final pulumi.Output<String> roleArn;
  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>> stopConditions;
  /// Key-value mapping of tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Target of an action. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> targets;

  /// Creates a new [ExperimentTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExperimentTemplate]. {@macro pulumi_fis_experiment_template_experiment_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExperimentTemplate(
    String name, {
    ExperimentTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/experimentTemplate:ExperimentTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String>('description');
    experimentOptions = registerOutput<ExperimentTemplateExperimentOptions>('experimentOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateExperimentOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    experimentReportConfiguration = registerOutput<ExperimentTemplateExperimentReportConfiguration?>('experimentReportConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateExperimentReportConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfiguration = registerOutput<ExperimentTemplateLogConfiguration?>('logConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stopConditions = registerOutput<List<Map<String, dynamic>>>('stopConditions');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targets = registerOutput<List<Map<String, dynamic>>?>('targets');
  }

  /// Gets an existing [ExperimentTemplate] resource's state with the given [name] and [id].
  static ExperimentTemplate get(
    String name,
    pulumi.Input<String> id, {
    ExperimentTemplateState? state,
  }) {
    return ExperimentTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExperimentTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/experimentTemplate:ExperimentTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    description = registerOutput<String>('description');
    experimentOptions = registerOutput<ExperimentTemplateExperimentOptions>('experimentOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateExperimentOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    experimentReportConfiguration = registerOutput<ExperimentTemplateExperimentReportConfiguration?>('experimentReportConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateExperimentReportConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logConfiguration = registerOutput<ExperimentTemplateLogConfiguration?>('logConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentTemplateLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stopConditions = registerOutput<List<Map<String, dynamic>>>('stopConditions');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targets = registerOutput<List<Map<String, dynamic>>?>('targets');
  }
}
