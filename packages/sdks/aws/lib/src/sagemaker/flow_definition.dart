import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_definition_args.dart';
import 'flow_definition_human_loop_activation_config.dart';
import 'flow_definition_human_loop_config.dart';
import 'flow_definition_human_loop_request_source.dart';
import 'flow_definition_output_config.dart';
import 'flow_definition_state.dart';

/// Provides a SageMaker AI Flow Definition resource.
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
/// const example = new aws.sagemaker.FlowDefinition("example", {
///     flowDefinitionName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     humanLoopConfig: {
///         humanTaskUiArn: exampleAwsSagemakerHumanTaskUi.arn,
///         taskAvailabilityLifetimeInSeconds: 1,
///         taskCount: 1,
///         taskDescription: "example",
///         taskTitle: "example",
///         workteamArn: exampleAwsSagemakerWorkteam.arn,
///     },
///     outputConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.FlowDefinition("example",
///     flow_definition_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     human_loop_config={
///         "human_task_ui_arn": example_aws_sagemaker_human_task_ui["arn"],
///         "task_availability_lifetime_in_seconds": 1,
///         "task_count": 1,
///         "task_description": "example",
///         "task_title": "example",
///         "workteam_arn": example_aws_sagemaker_workteam["arn"],
///     },
///     output_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/",
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
///     var example = new Aws.Sagemaker.FlowDefinition("example", new()
///     {
///         FlowDefinitionName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         HumanLoopConfig = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopConfigArgs
///         {
///             HumanTaskUiArn = exampleAwsSagemakerHumanTaskUi.Arn,
///             TaskAvailabilityLifetimeInSeconds = 1,
///             TaskCount = 1,
///             TaskDescription = "example",
///             TaskTitle = "example",
///             WorkteamArn = exampleAwsSagemakerWorkteam.Arn,
///         },
///         OutputConfig = new Aws.Sagemaker.Inputs.FlowDefinitionOutputConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewFlowDefinition(ctx, "example", &sagemaker.FlowDefinitionArgs{
/// 			FlowDefinitionName: pulumi.String("example"),
/// 			RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// 			HumanLoopConfig: &sagemaker.FlowDefinitionHumanLoopConfigArgs{
/// 				HumanTaskUiArn:                    pulumi.Any(exampleAwsSagemakerHumanTaskUi.Arn),
/// 				TaskAvailabilityLifetimeInSeconds: pulumi.Int(1),
/// 				TaskCount:                         pulumi.Int(1),
/// 				TaskDescription:                   pulumi.String("example"),
/// 				TaskTitle:                         pulumi.String("example"),
/// 				WorkteamArn:                       pulumi.Any(exampleAwsSagemakerWorkteam.Arn),
/// 			},
/// 			OutputConfig: &sagemaker.FlowDefinitionOutputConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.sagemaker.FlowDefinition;
/// import com.pulumi.aws.sagemaker.FlowDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionOutputConfigArgs;
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
///         var example = new FlowDefinition("example", FlowDefinitionArgs.builder()
///             .flowDefinitionName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .humanLoopConfig(FlowDefinitionHumanLoopConfigArgs.builder()
///                 .humanTaskUiArn(exampleAwsSagemakerHumanTaskUi.arn())
///                 .taskAvailabilityLifetimeInSeconds(1)
///                 .taskCount(1)
///                 .taskDescription("example")
///                 .taskTitle("example")
///                 .workteamArn(exampleAwsSagemakerWorkteam.arn())
///                 .build())
///             .outputConfig(FlowDefinitionOutputConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:FlowDefinition
///     properties:
///       flowDefinitionName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       humanLoopConfig:
///         humanTaskUiArn: ${exampleAwsSagemakerHumanTaskUi.arn}
///         taskAvailabilityLifetimeInSeconds: 1
///         taskCount: 1
///         taskDescription: example
///         taskTitle: example
///         workteamArn: ${exampleAwsSagemakerWorkteam.arn}
///       outputConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/
/// ```
///
///
/// ### Public Workteam Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.FlowDefinition("example", {
///     flowDefinitionName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     humanLoopConfig: {
///         humanTaskUiArn: exampleAwsSagemakerHumanTaskUi.arn,
///         taskAvailabilityLifetimeInSeconds: 1,
///         taskCount: 1,
///         taskDescription: "example",
///         taskTitle: "example",
///         workteamArn: `arn:aws:sagemaker:${current.region}:394669845002:workteam/public-crowd/default`,
///         publicWorkforceTaskPrice: {
///             amountInUsd: {
///                 cents: 1,
///                 tenthFractionsOfACent: 2,
///             },
///         },
///     },
///     outputConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.FlowDefinition("example",
///     flow_definition_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     human_loop_config={
///         "human_task_ui_arn": example_aws_sagemaker_human_task_ui["arn"],
///         "task_availability_lifetime_in_seconds": 1,
///         "task_count": 1,
///         "task_description": "example",
///         "task_title": "example",
///         "workteam_arn": f"arn:aws:sagemaker:{current['region']}:394669845002:workteam/public-crowd/default",
///         "public_workforce_task_price": {
///             "amount_in_usd": {
///                 "cents": 1,
///                 "tenth_fractions_of_a_cent": 2,
///             },
///         },
///     },
///     output_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/",
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
///     var example = new Aws.Sagemaker.FlowDefinition("example", new()
///     {
///         FlowDefinitionName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         HumanLoopConfig = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopConfigArgs
///         {
///             HumanTaskUiArn = exampleAwsSagemakerHumanTaskUi.Arn,
///             TaskAvailabilityLifetimeInSeconds = 1,
///             TaskCount = 1,
///             TaskDescription = "example",
///             TaskTitle = "example",
///             WorkteamArn = $"arn:aws:sagemaker:{current.Region}:394669845002:workteam/public-crowd/default",
///             PublicWorkforceTaskPrice = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceArgs
///             {
///                 AmountInUsd = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsdArgs
///                 {
///                     Cents = 1,
///                     TenthFractionsOfACent = 2,
///                 },
///             },
///         },
///         OutputConfig = new Aws.Sagemaker.Inputs.FlowDefinitionOutputConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewFlowDefinition(ctx, "example", &sagemaker.FlowDefinitionArgs{
/// 			FlowDefinitionName: pulumi.String("example"),
/// 			RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// 			HumanLoopConfig: &sagemaker.FlowDefinitionHumanLoopConfigArgs{
/// 				HumanTaskUiArn:                    pulumi.Any(exampleAwsSagemakerHumanTaskUi.Arn),
/// 				TaskAvailabilityLifetimeInSeconds: pulumi.Int(1),
/// 				TaskCount:                         pulumi.Int(1),
/// 				TaskDescription:                   pulumi.String("example"),
/// 				TaskTitle:                         pulumi.String("example"),
/// 				WorkteamArn:                       pulumi.Sprintf("arn:aws:sagemaker:%v:394669845002:workteam/public-crowd/default", current.Region),
/// 				PublicWorkforceTaskPrice: &sagemaker.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceArgs{
/// 					AmountInUsd: &sagemaker.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsdArgs{
/// 						Cents:                 pulumi.Int(1),
/// 						TenthFractionsOfACent: pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 			OutputConfig: &sagemaker.FlowDefinitionOutputConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.sagemaker.FlowDefinition;
/// import com.pulumi.aws.sagemaker.FlowDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsdArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionOutputConfigArgs;
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
///         var example = new FlowDefinition("example", FlowDefinitionArgs.builder()
///             .flowDefinitionName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .humanLoopConfig(FlowDefinitionHumanLoopConfigArgs.builder()
///                 .humanTaskUiArn(exampleAwsSagemakerHumanTaskUi.arn())
///                 .taskAvailabilityLifetimeInSeconds(1)
///                 .taskCount(1)
///                 .taskDescription("example")
///                 .taskTitle("example")
///                 .workteamArn(String.format("arn:aws:sagemaker:%s:394669845002:workteam/public-crowd/default", current.region()))
///                 .publicWorkforceTaskPrice(FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceArgs.builder()
///                     .amountInUsd(FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsdArgs.builder()
///                         .cents(1)
///                         .tenthFractionsOfACent(2)
///                         .build())
///                     .build())
///                 .build())
///             .outputConfig(FlowDefinitionOutputConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:FlowDefinition
///     properties:
///       flowDefinitionName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       humanLoopConfig:
///         humanTaskUiArn: ${exampleAwsSagemakerHumanTaskUi.arn}
///         taskAvailabilityLifetimeInSeconds: 1
///         taskCount: 1
///         taskDescription: example
///         taskTitle: example
///         workteamArn: arn:aws:sagemaker:${current.region}:394669845002:workteam/public-crowd/default
///         publicWorkforceTaskPrice:
///           amountInUsd:
///             cents: 1
///             tenthFractionsOfACent: 2
///       outputConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/
/// ```
///
///
/// ### Human Loop Activation Config Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.FlowDefinition("example", {
///     flowDefinitionName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     humanLoopConfig: {
///         humanTaskUiArn: exampleAwsSagemakerHumanTaskUi.arn,
///         taskAvailabilityLifetimeInSeconds: 1,
///         taskCount: 1,
///         taskDescription: "example",
///         taskTitle: "example",
///         workteamArn: exampleAwsSagemakerWorkteam.arn,
///     },
///     humanLoopRequestSource: {
///         awsManagedHumanLoopRequestSource: "AWS/Textract/AnalyzeDocument/Forms/V1",
///     },
///     humanLoopActivationConfig: {
///         humanLoopActivationConditionsConfig: {
///             humanLoopActivationConditions: `        {
/// \\t\\t\\t\\"Conditions\\": [
/// \\t\\t\\t  {
/// \\t\\t\\t\\t\\"ConditionType\\": \\"Sampling\\",
/// \\t\\t\\t\\t\\"ConditionParameters\\": {
/// \\t\\t\\t\\t  \\"RandomSamplingPercentage\\": 5
/// \\t\\t\\t\\t}
/// \\t\\t\\t  }
/// \\t\\t\\t]
/// \\t\\t}
/// `,
///         },
///     },
///     outputConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.FlowDefinition("example",
///     flow_definition_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     human_loop_config={
///         "human_task_ui_arn": example_aws_sagemaker_human_task_ui["arn"],
///         "task_availability_lifetime_in_seconds": 1,
///         "task_count": 1,
///         "task_description": "example",
///         "task_title": "example",
///         "workteam_arn": example_aws_sagemaker_workteam["arn"],
///     },
///     human_loop_request_source={
///         "aws_managed_human_loop_request_source": "AWS/Textract/AnalyzeDocument/Forms/V1",
///     },
///     human_loop_activation_config={
///         "human_loop_activation_conditions_config": {
///             "human_loop_activation_conditions": """        {
/// \t\t\t\"Conditions\": [
/// \t\t\t  {
/// \t\t\t\t\"ConditionType\": \"Sampling\",
/// \t\t\t\t\"ConditionParameters\": {
/// \t\t\t\t  \"RandomSamplingPercentage\": 5
/// \t\t\t\t}
/// \t\t\t  }
/// \t\t\t]
/// \t\t}
/// """,
///         },
///     },
///     output_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/",
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
///     var example = new Aws.Sagemaker.FlowDefinition("example", new()
///     {
///         FlowDefinitionName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         HumanLoopConfig = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopConfigArgs
///         {
///             HumanTaskUiArn = exampleAwsSagemakerHumanTaskUi.Arn,
///             TaskAvailabilityLifetimeInSeconds = 1,
///             TaskCount = 1,
///             TaskDescription = "example",
///             TaskTitle = "example",
///             WorkteamArn = exampleAwsSagemakerWorkteam.Arn,
///         },
///         HumanLoopRequestSource = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopRequestSourceArgs
///         {
///             AwsManagedHumanLoopRequestSource = "AWS/Textract/AnalyzeDocument/Forms/V1",
///         },
///         HumanLoopActivationConfig = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopActivationConfigArgs
///         {
///             HumanLoopActivationConditionsConfig = new Aws.Sagemaker.Inputs.FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfigArgs
///             {
///                 HumanLoopActivationConditions = @"        {
/// \t\t\t\""Conditions\"": [
/// \t\t\t  {
/// \t\t\t\t\""ConditionType\"": \""Sampling\"",
/// \t\t\t\t\""ConditionParameters\"": {
/// \t\t\t\t  \""RandomSamplingPercentage\"": 5
/// \t\t\t\t}
/// \t\t\t  }
/// \t\t\t]
/// \t\t}
/// ",
///             },
///         },
///         OutputConfig = new Aws.Sagemaker.Inputs.FlowDefinitionOutputConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewFlowDefinition(ctx, "example", &sagemaker.FlowDefinitionArgs{
/// 			FlowDefinitionName: pulumi.String("example"),
/// 			RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// 			HumanLoopConfig: &sagemaker.FlowDefinitionHumanLoopConfigArgs{
/// 				HumanTaskUiArn:                    pulumi.Any(exampleAwsSagemakerHumanTaskUi.Arn),
/// 				TaskAvailabilityLifetimeInSeconds: pulumi.Int(1),
/// 				TaskCount:                         pulumi.Int(1),
/// 				TaskDescription:                   pulumi.String("example"),
/// 				TaskTitle:                         pulumi.String("example"),
/// 				WorkteamArn:                       pulumi.Any(exampleAwsSagemakerWorkteam.Arn),
/// 			},
/// 			HumanLoopRequestSource: &sagemaker.FlowDefinitionHumanLoopRequestSourceArgs{
/// 				AwsManagedHumanLoopRequestSource: pulumi.String("AWS/Textract/AnalyzeDocument/Forms/V1"),
/// 			},
/// 			HumanLoopActivationConfig: &sagemaker.FlowDefinitionHumanLoopActivationConfigArgs{
/// 				HumanLoopActivationConditionsConfig: &sagemaker.FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfigArgs{
/// 					HumanLoopActivationConditions: pulumi.String(`        {
/// \t\t\t\"Conditions\": [
/// \t\t\t  {
/// \t\t\t\t\"ConditionType\": \"Sampling\",
/// \t\t\t\t\"ConditionParameters\": {
/// \t\t\t\t  \"RandomSamplingPercentage\": 5
/// \t\t\t\t}
/// \t\t\t  }
/// \t\t\t]
/// \t\t}
/// `),
/// 				},
/// 			},
/// 			OutputConfig: &sagemaker.FlowDefinitionOutputConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.sagemaker.FlowDefinition;
/// import com.pulumi.aws.sagemaker.FlowDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopRequestSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopActivationConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.FlowDefinitionOutputConfigArgs;
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
///         var example = new FlowDefinition("example", FlowDefinitionArgs.builder()
///             .flowDefinitionName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .humanLoopConfig(FlowDefinitionHumanLoopConfigArgs.builder()
///                 .humanTaskUiArn(exampleAwsSagemakerHumanTaskUi.arn())
///                 .taskAvailabilityLifetimeInSeconds(1)
///                 .taskCount(1)
///                 .taskDescription("example")
///                 .taskTitle("example")
///                 .workteamArn(exampleAwsSagemakerWorkteam.arn())
///                 .build())
///             .humanLoopRequestSource(FlowDefinitionHumanLoopRequestSourceArgs.builder()
///                 .awsManagedHumanLoopRequestSource("AWS/Textract/AnalyzeDocument/Forms/V1")
///                 .build())
///             .humanLoopActivationConfig(FlowDefinitionHumanLoopActivationConfigArgs.builder()
///                 .humanLoopActivationConditionsConfig(FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfigArgs.builder()
///                     .humanLoopActivationConditions("""
///         {
/// \t\t\t\"Conditions\": [
/// \t\t\t  {
/// \t\t\t\t\"ConditionType\": \"Sampling\",
/// \t\t\t\t\"ConditionParameters\": {
/// \t\t\t\t  \"RandomSamplingPercentage\": 5
/// \t\t\t\t}
/// \t\t\t  }
/// \t\t\t]
/// \t\t}
///                     """)
///                     .build())
///                 .build())
///             .outputConfig(FlowDefinitionOutputConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:FlowDefinition
///     properties:
///       flowDefinitionName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       humanLoopConfig:
///         humanTaskUiArn: ${exampleAwsSagemakerHumanTaskUi.arn}
///         taskAvailabilityLifetimeInSeconds: 1
///         taskCount: 1
///         taskDescription: example
///         taskTitle: example
///         workteamArn: ${exampleAwsSagemakerWorkteam.arn}
///       humanLoopRequestSource:
///         awsManagedHumanLoopRequestSource: AWS/Textract/AnalyzeDocument/Forms/V1
///       humanLoopActivationConfig:
///         humanLoopActivationConditionsConfig:
///           humanLoopActivationConditions: |2
///                     {
///             \t\t\t\"Conditions\": [
///             \t\t\t  {
///             \t\t\t\t\"ConditionType\": \"Sampling\",
///             \t\t\t\t\"ConditionParameters\": {
///             \t\t\t\t  \"RandomSamplingPercentage\": 5
///             \t\t\t\t}
///             \t\t\t  }
///             \t\t\t]
///             \t\t}
///       outputConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Flow Definitions using the `flow_definition_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/flowDefinition:FlowDefinition example example
/// ```
class FlowDefinition extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition.
  late final pulumi.Output<String> arn;

  /// The name of your flow definition.
  late final pulumi.Output<String> flowDefinitionName;

  /// An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below.
  late final pulumi.Output<FlowDefinitionHumanLoopActivationConfig?>
  humanLoopActivationConfig;

  /// An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below.
  late final pulumi.Output<FlowDefinitionHumanLoopConfig> humanLoopConfig;

  /// Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below.
  late final pulumi.Output<FlowDefinitionHumanLoopRequestSource?>
  humanLoopRequestSource;

  /// An object containing information about where the human review results will be uploaded. See Output Config details below.
  late final pulumi.Output<FlowDefinitionOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the role needed to call other services on your behalf.
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [FlowDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowDefinition]. {@macro pulumi_sagemaker_flow_definition_flow_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowDefinition(
    String name, {
    FlowDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/flowDefinition:FlowDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    flowDefinitionName = registerOutput<String>('flowDefinitionName');
    humanLoopActivationConfig =
        registerOutput<FlowDefinitionHumanLoopActivationConfig?>(
          'humanLoopActivationConfig',
        );
    humanLoopConfig = registerOutput<FlowDefinitionHumanLoopConfig>(
      'humanLoopConfig',
    );
    humanLoopRequestSource =
        registerOutput<FlowDefinitionHumanLoopRequestSource?>(
          'humanLoopRequestSource',
        );
    outputConfig = registerOutput<FlowDefinitionOutputConfig>('outputConfig');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [FlowDefinition] resource's state with the given [name] and [id].
  static FlowDefinition get(
    String name,
    pulumi.Input<String> id, {
    FlowDefinitionState? state,
  }) {
    return FlowDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlowDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/flowDefinition:FlowDefinition',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    flowDefinitionName = registerOutput<String>('flowDefinitionName');
    humanLoopActivationConfig =
        registerOutput<FlowDefinitionHumanLoopActivationConfig?>(
          'humanLoopActivationConfig',
        );
    humanLoopConfig = registerOutput<FlowDefinitionHumanLoopConfig>(
      'humanLoopConfig',
    );
    humanLoopRequestSource =
        registerOutput<FlowDefinitionHumanLoopRequestSource?>(
          'humanLoopRequestSource',
        );
    outputConfig = registerOutput<FlowDefinitionOutputConfig>('outputConfig');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
