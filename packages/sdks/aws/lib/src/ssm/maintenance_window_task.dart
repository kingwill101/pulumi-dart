import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_args.dart';
import 'maintenance_window_task_state.dart';
import 'maintenance_window_task_target.dart';
import 'maintenance_window_task_task_invocation_parameters.dart';

/// Provides an SSM Maintenance Window Task resource
///
/// ## Example Usage
///
/// ### Automation Tasks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.MaintenanceWindowTask("example", {
///     taskInvocationParameters: {
///         automationParameters: {
///             parameters: [{
///                 name: "InstanceId",
///                 values: [exampleAwsInstance.id],
///             }],
///             documentVersion: "$LATEST",
///         },
///     },
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
///     maxConcurrency: "2",
///     maxErrors: "1",
///     priority: 1,
///     taskArn: "AWS-RestartEC2Instance",
///     taskType: "AUTOMATION",
///     windowId: exampleAwsSsmMaintenanceWindow.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.MaintenanceWindowTask("example",
///     task_invocation_parameters={
///         "automation_parameters": {
///             "parameters": [{
///                 "name": "InstanceId",
///                 "values": [example_aws_instance["id"]],
///             }],
///             "document_version": "$LATEST",
///         },
///     },
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }],
///     max_concurrency="2",
///     max_errors="1",
///     priority=1,
///     task_arn="AWS-RestartEC2Instance",
///     task_type="AUTOMATION",
///     window_id=example_aws_ssm_maintenance_window["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.MaintenanceWindowTask("example", new()
///     {
///         TaskInvocationParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersArgs
///         {
///             AutomationParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersArgs
///             {
///                 Parameters = new[]
///                 {
///                     new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameterArgs
///                     {
///                         Name = "InstanceId",
///                         Values = new[]
///                         {
///                             exampleAwsInstance.Id,
///                         },
///                     },
///                 },
///                 DocumentVersion = "$LATEST",
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.MaintenanceWindowTaskTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///         MaxConcurrency = "2",
///         MaxErrors = "1",
///         Priority = 1,
///         TaskArn = "AWS-RestartEC2Instance",
///         TaskType = "AUTOMATION",
///         WindowId = exampleAwsSsmMaintenanceWindow.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewMaintenanceWindowTask(ctx, "example", &ssm.MaintenanceWindowTaskArgs{
/// 			TaskInvocationParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersArgs{
/// 				AutomationParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersArgs{
/// 					Parameters: ssm.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameterArray{
/// 						&ssm.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameterArgs{
/// 							Name: pulumi.String("InstanceId"),
/// 							Values: pulumi.StringArray{
/// 								exampleAwsInstance.Id,
/// 							},
/// 						},
/// 					},
/// 					DocumentVersion: pulumi.String("$LATEST"),
/// 				},
/// 			},
/// 			Targets: ssm.MaintenanceWindowTaskTargetArray{
/// 				&ssm.MaintenanceWindowTaskTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 			MaxConcurrency: pulumi.String("2"),
/// 			MaxErrors:      pulumi.String("1"),
/// 			Priority:       pulumi.Int(1),
/// 			TaskArn:        pulumi.String("AWS-RestartEC2Instance"),
/// 			TaskType:       pulumi.String("AUTOMATION"),
/// 			WindowId:       pulumi.Any(exampleAwsSsmMaintenanceWindow.Id),
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
/// resource "aws_ssm_maintenancewindowtask" "example" {
///   task_invocation_parameters = {
///     automation_parameters = {
///       parameters = [{
///         "name"   = "InstanceId"
///         "values" = [exampleAwsInstance.id]
///       }]
///       document_version = "$LATEST"
///     }
///   }
///   targets {
///     key    = "InstanceIds"
///     values = [exampleAwsInstance.id]
///   }
///   max_concurrency = 2
///   max_errors      = 1
///   priority        = 1
///   task_arn        = "AWS-RestartEC2Instance"
///   task_type       = "AUTOMATION"
///   window_id       = exampleAwsSsmMaintenanceWindow.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.MaintenanceWindowTask;
/// import com.pulumi.aws.ssm.MaintenanceWindowTaskArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameterArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTargetArgs;
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
///         var example = new MaintenanceWindowTask("example", MaintenanceWindowTaskArgs.builder()
///             .taskInvocationParameters(MaintenanceWindowTaskTaskInvocationParametersArgs.builder()
///                 .automationParameters(MaintenanceWindowTaskTaskInvocationParametersAutomationParametersArgs.builder()
///                     .parameters(MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameterArgs.builder()
///                         .name("InstanceId")
///                         .values(exampleAwsInstance.id())
///                         .build())
///                     .documentVersion("$LATEST")
///                     .build())
///                 .build())
///             .targets(MaintenanceWindowTaskTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .maxConcurrency("2")
///             .maxErrors("1")
///             .priority(1)
///             .taskArn("AWS-RestartEC2Instance")
///             .taskType("AUTOMATION")
///             .windowId(exampleAwsSsmMaintenanceWindow.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:MaintenanceWindowTask
///     properties:
///       taskInvocationParameters:
///         automationParameters:
///           parameters:
///             - name: InstanceId
///               values:
///                 - ${exampleAwsInstance.id}
///           documentVersion: $LATEST
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
///       maxConcurrency: 2
///       maxErrors: 1
///       priority: 1
///       taskArn: AWS-RestartEC2Instance
///       taskType: AUTOMATION
///       windowId: ${exampleAwsSsmMaintenanceWindow.id}
/// ```
///
///
/// ### Lambda Tasks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.ssm.MaintenanceWindowTask("example", {
///     taskInvocationParameters: {
///         lambdaParameters: {
///             clientContext: std.base64encode({
///                 input: "{\"key1\":\"value1\"}",
///             }).then(invoke => invoke.result),
///             payload: "{\"key1\":\"value1\"}",
///         },
///     },
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
///     maxConcurrency: "2",
///     maxErrors: "1",
///     priority: 1,
///     taskArn: exampleAwsLambdaFunction.arn,
///     taskType: "LAMBDA",
///     windowId: exampleAwsSsmMaintenanceWindow.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ssm.MaintenanceWindowTask("example",
///     task_invocation_parameters={
///         "lambda_parameters": {
///             "client_context": std.base64encode(input="{\"key1\":\"value1\"}").result,
///             "payload": "{\"key1\":\"value1\"}",
///         },
///     },
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }],
///     max_concurrency="2",
///     max_errors="1",
///     priority=1,
///     task_arn=example_aws_lambda_function["arn"],
///     task_type="LAMBDA",
///     window_id=example_aws_ssm_maintenance_window["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.MaintenanceWindowTask("example", new()
///     {
///         TaskInvocationParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersArgs
///         {
///             LambdaParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersLambdaParametersArgs
///             {
///                 ClientContext = Std.Base64encode.Invoke(new()
///                 {
///                     Input = "{\"key1\":\"value1\"}",
///                 }).Apply(invoke => invoke.Result),
///                 Payload = "{\"key1\":\"value1\"}",
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.MaintenanceWindowTaskTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///         MaxConcurrency = "2",
///         MaxErrors = "1",
///         Priority = 1,
///         TaskArn = exampleAwsLambdaFunction.Arn,
///         TaskType = "LAMBDA",
///         WindowId = exampleAwsSsmMaintenanceWindow.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "{\"key1\":\"value1\"}",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewMaintenanceWindowTask(ctx, "example", &ssm.MaintenanceWindowTaskArgs{
/// 			TaskInvocationParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersArgs{
/// 				LambdaParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersLambdaParametersArgs{
/// 					ClientContext: pulumi.String(invokeBase64encode.Result),
/// 					Payload:       pulumi.String("{\"key1\":\"value1\"}"),
/// 				},
/// 			},
/// 			Targets: ssm.MaintenanceWindowTaskTargetArray{
/// 				&ssm.MaintenanceWindowTaskTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 			MaxConcurrency: pulumi.String("2"),
/// 			MaxErrors:      pulumi.String("1"),
/// 			Priority:       pulumi.Int(1),
/// 			TaskArn:        pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			TaskType:       pulumi.String("LAMBDA"),
/// 			WindowId:       pulumi.Any(exampleAwsSsmMaintenanceWindow.Id),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_ssm_maintenancewindowtask" "example" {
///   task_invocation_parameters = {
///     lambda_parameters = {
///       client_context = base64encode("{\"key1\":\"value1\"}")
///       payload        = "{\"key1\":\"value1\"}"
///     }
///   }
///   targets {
///     key    = "InstanceIds"
///     values = [exampleAwsInstance.id]
///   }
///   max_concurrency = 2
///   max_errors      = 1
///   priority        = 1
///   task_arn        = exampleAwsLambdaFunction.arn
///   task_type       = "LAMBDA"
///   window_id       = exampleAwsSsmMaintenanceWindow.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.MaintenanceWindowTask;
/// import com.pulumi.aws.ssm.MaintenanceWindowTaskArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersLambdaParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var example = new MaintenanceWindowTask("example", MaintenanceWindowTaskArgs.builder()
///             .taskInvocationParameters(MaintenanceWindowTaskTaskInvocationParametersArgs.builder()
///                 .lambdaParameters(MaintenanceWindowTaskTaskInvocationParametersLambdaParametersArgs.builder()
///                     .clientContext(StdFunctions.base64encode(Base64encodeArgs.builder()
///                         .input("{\"key1\":\"value1\"}")
///                         .build()).result())
///                     .payload("{\"key1\":\"value1\"}")
///                     .build())
///                 .build())
///             .targets(MaintenanceWindowTaskTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .maxConcurrency("2")
///             .maxErrors("1")
///             .priority(1)
///             .taskArn(exampleAwsLambdaFunction.arn())
///             .taskType("LAMBDA")
///             .windowId(exampleAwsSsmMaintenanceWindow.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:MaintenanceWindowTask
///     properties:
///       taskInvocationParameters:
///         lambdaParameters:
///           clientContext:
///             fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: '{"key1":"value1"}'
///               return: result
///           payload: '{"key1":"value1"}'
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
///       maxConcurrency: 2
///       maxErrors: 1
///       priority: 1
///       taskArn: ${exampleAwsLambdaFunction.arn}
///       taskType: LAMBDA
///       windowId: ${exampleAwsSsmMaintenanceWindow.id}
/// ```
///
///
/// ### Run Command Tasks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.MaintenanceWindowTask("example", {
///     taskInvocationParameters: {
///         runCommandParameters: {
///             notificationConfig: {
///                 notificationArn: exampleAwsSnsTopic.arn,
///                 notificationEvents: ["All"],
///                 notificationType: "Command",
///             },
///             parameters: [{
///                 name: "commands",
///                 values: ["date"],
///             }],
///             outputS3Bucket: exampleAwsS3Bucket.id,
///             outputS3KeyPrefix: "output",
///             serviceRoleArn: exampleAwsIamRole.arn,
///             timeoutSeconds: 600,
///         },
///     },
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
///     maxConcurrency: "2",
///     maxErrors: "1",
///     priority: 1,
///     taskArn: "AWS-RunShellScript",
///     taskType: "RUN_COMMAND",
///     windowId: exampleAwsSsmMaintenanceWindow.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.MaintenanceWindowTask("example",
///     task_invocation_parameters={
///         "run_command_parameters": {
///             "notification_config": {
///                 "notification_arn": example_aws_sns_topic["arn"],
///                 "notification_events": ["All"],
///                 "notification_type": "Command",
///             },
///             "parameters": [{
///                 "name": "commands",
///                 "values": ["date"],
///             }],
///             "output_s3_bucket": example_aws_s3_bucket["id"],
///             "output_s3_key_prefix": "output",
///             "service_role_arn": example_aws_iam_role["arn"],
///             "timeout_seconds": 600,
///         },
///     },
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }],
///     max_concurrency="2",
///     max_errors="1",
///     priority=1,
///     task_arn="AWS-RunShellScript",
///     task_type="RUN_COMMAND",
///     window_id=example_aws_ssm_maintenance_window["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.MaintenanceWindowTask("example", new()
///     {
///         TaskInvocationParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersArgs
///         {
///             RunCommandParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersArgs
///             {
///                 NotificationConfig = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigArgs
///                 {
///                     NotificationArn = exampleAwsSnsTopic.Arn,
///                     NotificationEvents = new[]
///                     {
///                         "All",
///                     },
///                     NotificationType = "Command",
///                 },
///                 Parameters = new[]
///                 {
///                     new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameterArgs
///                     {
///                         Name = "commands",
///                         Values = new[]
///                         {
///                             "date",
///                         },
///                     },
///                 },
///                 OutputS3Bucket = exampleAwsS3Bucket.Id,
///                 OutputS3KeyPrefix = "output",
///                 ServiceRoleArn = exampleAwsIamRole.Arn,
///                 TimeoutSeconds = 600,
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.MaintenanceWindowTaskTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///         MaxConcurrency = "2",
///         MaxErrors = "1",
///         Priority = 1,
///         TaskArn = "AWS-RunShellScript",
///         TaskType = "RUN_COMMAND",
///         WindowId = exampleAwsSsmMaintenanceWindow.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewMaintenanceWindowTask(ctx, "example", &ssm.MaintenanceWindowTaskArgs{
/// 			TaskInvocationParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersArgs{
/// 				RunCommandParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersArgs{
/// 					NotificationConfig: &ssm.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigArgs{
/// 						NotificationArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// 						NotificationEvents: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 						NotificationType: pulumi.String("Command"),
/// 					},
/// 					Parameters: ssm.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameterArray{
/// 						&ssm.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameterArgs{
/// 							Name: pulumi.String("commands"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("date"),
/// 							},
/// 						},
/// 					},
/// 					OutputS3Bucket:    pulumi.Any(exampleAwsS3Bucket.Id),
/// 					OutputS3KeyPrefix: pulumi.String("output"),
/// 					ServiceRoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// 					TimeoutSeconds:    pulumi.Int(600),
/// 				},
/// 			},
/// 			Targets: ssm.MaintenanceWindowTaskTargetArray{
/// 				&ssm.MaintenanceWindowTaskTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 			MaxConcurrency: pulumi.String("2"),
/// 			MaxErrors:      pulumi.String("1"),
/// 			Priority:       pulumi.Int(1),
/// 			TaskArn:        pulumi.String("AWS-RunShellScript"),
/// 			TaskType:       pulumi.String("RUN_COMMAND"),
/// 			WindowId:       pulumi.Any(exampleAwsSsmMaintenanceWindow.Id),
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
/// resource "aws_ssm_maintenancewindowtask" "example" {
///   task_invocation_parameters = {
///     run_command_parameters = {
///       notification_config = {
///         notification_arn    = exampleAwsSnsTopic.arn
///         notification_events = ["All"]
///         notification_type   = "Command"
///       }
///       parameters = [{
///         "name"   = "commands"
///         "values" = ["date"]
///       }]
///       output_s3_bucket     = exampleAwsS3Bucket.id
///       output_s3_key_prefix = "output"
///       service_role_arn     = exampleAwsIamRole.arn
///       timeout_seconds      = 600
///     }
///   }
///   targets {
///     key    = "InstanceIds"
///     values = [exampleAwsInstance.id]
///   }
///   max_concurrency = 2
///   max_errors      = 1
///   priority        = 1
///   task_arn        = "AWS-RunShellScript"
///   task_type       = "RUN_COMMAND"
///   window_id       = exampleAwsSsmMaintenanceWindow.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.MaintenanceWindowTask;
/// import com.pulumi.aws.ssm.MaintenanceWindowTaskArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameterArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTargetArgs;
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
///         var example = new MaintenanceWindowTask("example", MaintenanceWindowTaskArgs.builder()
///             .taskInvocationParameters(MaintenanceWindowTaskTaskInvocationParametersArgs.builder()
///                 .runCommandParameters(MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersArgs.builder()
///                     .notificationConfig(MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfigArgs.builder()
///                         .notificationArn(exampleAwsSnsTopic.arn())
///                         .notificationEvents("All")
///                         .notificationType("Command")
///                         .build())
///                     .parameters(MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameterArgs.builder()
///                         .name("commands")
///                         .values("date")
///                         .build())
///                     .outputS3Bucket(exampleAwsS3Bucket.id())
///                     .outputS3KeyPrefix("output")
///                     .serviceRoleArn(exampleAwsIamRole.arn())
///                     .timeoutSeconds(600)
///                     .build())
///                 .build())
///             .targets(MaintenanceWindowTaskTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .maxConcurrency("2")
///             .maxErrors("1")
///             .priority(1)
///             .taskArn("AWS-RunShellScript")
///             .taskType("RUN_COMMAND")
///             .windowId(exampleAwsSsmMaintenanceWindow.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:MaintenanceWindowTask
///     properties:
///       taskInvocationParameters:
///         runCommandParameters:
///           notificationConfig:
///             notificationArn: ${exampleAwsSnsTopic.arn}
///             notificationEvents:
///               - All
///             notificationType: Command
///           parameters:
///             - name: commands
///               values:
///                 - date
///           outputS3Bucket: ${exampleAwsS3Bucket.id}
///           outputS3KeyPrefix: output
///           serviceRoleArn: ${exampleAwsIamRole.arn}
///           timeoutSeconds: 600
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
///       maxConcurrency: 2
///       maxErrors: 1
///       priority: 1
///       taskArn: AWS-RunShellScript
///       taskType: RUN_COMMAND
///       windowId: ${exampleAwsSsmMaintenanceWindow.id}
/// ```
///
///
/// ### Step Function Tasks
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.MaintenanceWindowTask("example", {
///     taskInvocationParameters: {
///         stepFunctionsParameters: {
///             input: "{\"key1\":\"value1\"}",
///             name: "example",
///         },
///     },
///     targets: [{
///         key: "InstanceIds",
///         values: [exampleAwsInstance.id],
///     }],
///     maxConcurrency: "2",
///     maxErrors: "1",
///     priority: 1,
///     taskArn: exampleAwsSfnActivity.id,
///     taskType: "STEP_FUNCTIONS",
///     windowId: exampleAwsSsmMaintenanceWindow.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.MaintenanceWindowTask("example",
///     task_invocation_parameters={
///         "step_functions_parameters": {
///             "input": "{\"key1\":\"value1\"}",
///             "name": "example",
///         },
///     },
///     targets=[{
///         "key": "InstanceIds",
///         "values": [example_aws_instance["id"]],
///     }],
///     max_concurrency="2",
///     max_errors="1",
///     priority=1,
///     task_arn=example_aws_sfn_activity["id"],
///     task_type="STEP_FUNCTIONS",
///     window_id=example_aws_ssm_maintenance_window["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.MaintenanceWindowTask("example", new()
///     {
///         TaskInvocationParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersArgs
///         {
///             StepFunctionsParameters = new Aws.Ssm.Inputs.MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParametersArgs
///             {
///                 Input = "{\"key1\":\"value1\"}",
///                 Name = "example",
///             },
///         },
///         Targets = new[]
///         {
///             new Aws.Ssm.Inputs.MaintenanceWindowTaskTargetArgs
///             {
///                 Key = "InstanceIds",
///                 Values = new[]
///                 {
///                     exampleAwsInstance.Id,
///                 },
///             },
///         },
///         MaxConcurrency = "2",
///         MaxErrors = "1",
///         Priority = 1,
///         TaskArn = exampleAwsSfnActivity.Id,
///         TaskType = "STEP_FUNCTIONS",
///         WindowId = exampleAwsSsmMaintenanceWindow.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewMaintenanceWindowTask(ctx, "example", &ssm.MaintenanceWindowTaskArgs{
/// 			TaskInvocationParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersArgs{
/// 				StepFunctionsParameters: &ssm.MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParametersArgs{
/// 					Input: pulumi.String("{\"key1\":\"value1\"}"),
/// 					Name:  pulumi.String("example"),
/// 				},
/// 			},
/// 			Targets: ssm.MaintenanceWindowTaskTargetArray{
/// 				&ssm.MaintenanceWindowTaskTargetArgs{
/// 					Key: pulumi.String("InstanceIds"),
/// 					Values: pulumi.StringArray{
/// 						exampleAwsInstance.Id,
/// 					},
/// 				},
/// 			},
/// 			MaxConcurrency: pulumi.String("2"),
/// 			MaxErrors:      pulumi.String("1"),
/// 			Priority:       pulumi.Int(1),
/// 			TaskArn:        pulumi.Any(exampleAwsSfnActivity.Id),
/// 			TaskType:       pulumi.String("STEP_FUNCTIONS"),
/// 			WindowId:       pulumi.Any(exampleAwsSsmMaintenanceWindow.Id),
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
/// resource "aws_ssm_maintenancewindowtask" "example" {
///   task_invocation_parameters = {
///     step_functions_parameters = {
///       input = "{\"key1\":\"value1\"}"
///       name  = "example"
///     }
///   }
///   targets {
///     key    = "InstanceIds"
///     values = [exampleAwsInstance.id]
///   }
///   max_concurrency = 2
///   max_errors      = 1
///   priority        = 1
///   task_arn        = exampleAwsSfnActivity.id
///   task_type       = "STEP_FUNCTIONS"
///   window_id       = exampleAwsSsmMaintenanceWindow.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.MaintenanceWindowTask;
/// import com.pulumi.aws.ssm.MaintenanceWindowTaskArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParametersArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTaskTargetArgs;
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
///         var example = new MaintenanceWindowTask("example", MaintenanceWindowTaskArgs.builder()
///             .taskInvocationParameters(MaintenanceWindowTaskTaskInvocationParametersArgs.builder()
///                 .stepFunctionsParameters(MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParametersArgs.builder()
///                     .input("{\"key1\":\"value1\"}")
///                     .name("example")
///                     .build())
///                 .build())
///             .targets(MaintenanceWindowTaskTargetArgs.builder()
///                 .key("InstanceIds")
///                 .values(exampleAwsInstance.id())
///                 .build())
///             .maxConcurrency("2")
///             .maxErrors("1")
///             .priority(1)
///             .taskArn(exampleAwsSfnActivity.id())
///             .taskType("STEP_FUNCTIONS")
///             .windowId(exampleAwsSsmMaintenanceWindow.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:MaintenanceWindowTask
///     properties:
///       taskInvocationParameters:
///         stepFunctionsParameters:
///           input: '{"key1":"value1"}'
///           name: example
///       targets:
///         - key: InstanceIds
///           values:
///             - ${exampleAwsInstance.id}
///       maxConcurrency: 2
///       maxErrors: 1
///       priority: 1
///       taskArn: ${exampleAwsSfnActivity.id}
///       taskType: STEP_FUNCTIONS
///       windowId: ${exampleAwsSsmMaintenanceWindow.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `windowId` - (String) ID of the maintenance window.
/// * `id` - (String) ID of the maintenance window task.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AWS Maintenance Window Task using the `windowId` and `windowTaskId` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindowTask:MaintenanceWindowTask example <window_id>/<window_task_id>
/// ```
class MaintenanceWindowTask extends pulumi.CustomResource {
  /// The ARN of the maintenance window task.
  late final pulumi.Output<String> arn;
  /// Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are `CONTINUE_TASK` and `CANCEL_TASK`.
  late final pulumi.Output<String?> cutoffBehavior;
  /// The description of the maintenance window task.
  late final pulumi.Output<String?> description;
  /// The maximum number of targets this task can be run for in parallel.
  late final pulumi.Output<String> maxConcurrency;
  /// The maximum number of errors allowed before this task stops being scheduled.
  late final pulumi.Output<String> maxErrors;
  /// The name of the maintenance window task.
  late final pulumi.Output<String> name;
  /// The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.
  late final pulumi.Output<int?> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The role that should be assumed when executing the task. If a role is not provided, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created for you.
  late final pulumi.Output<String> serviceRoleArn;
  /// The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2.
  late final pulumi.Output<List<MaintenanceWindowTaskTarget>?> targets;
  /// The ARN of the task to execute.
  late final pulumi.Output<String> taskArn;
  /// Configuration block with parameters for task execution.
  late final pulumi.Output<MaintenanceWindowTaskTaskInvocationParameters?> taskInvocationParameters;
  /// The type of task being registered. Valid values: `AUTOMATION`, `LAMBDA`, `RUN_COMMAND` or `STEP_FUNCTIONS`.
  late final pulumi.Output<String> taskType;
  /// The Id of the maintenance window to register the task with.
  late final pulumi.Output<String> windowId;
  /// The ID of the maintenance window task.
  late final pulumi.Output<String> windowTaskId;

  /// Creates a new [MaintenanceWindowTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaintenanceWindowTask]. {@macro pulumi_ssm_maintenance_window_task_maintenance_window_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaintenanceWindowTask(
    String name, {
    MaintenanceWindowTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindowTask:MaintenanceWindowTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cutoffBehavior = registerOutput<String?>('cutoffBehavior');
    description = registerOutput<String?>('description');
    maxConcurrency = registerOutput<String>('maxConcurrency');
    maxErrors = registerOutput<String>('maxErrors');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    region = registerOutput<String>('region');
    serviceRoleArn = registerOutput<String>('serviceRoleArn');
    targets = registerOutput<List<MaintenanceWindowTaskTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(guardedValue, (value) => MaintenanceWindowTaskTarget.fromMap((value as Map).cast<String, dynamic>())); });
    taskArn = registerOutput<String>('taskArn');
    taskInvocationParameters = registerOutput<MaintenanceWindowTaskTaskInvocationParameters?>('taskInvocationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowTaskTaskInvocationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskType = registerOutput<String>('taskType');
    windowId = registerOutput<String>('windowId');
    windowTaskId = registerOutput<String>('windowTaskId');
  }

  /// Gets an existing [MaintenanceWindowTask] resource's state with the given [name] and [id].
  static MaintenanceWindowTask get(
    String name,
    pulumi.Input<String> id, {
    MaintenanceWindowTaskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MaintenanceWindowTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MaintenanceWindowTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindowTask:MaintenanceWindowTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cutoffBehavior = registerOutput<String?>('cutoffBehavior');
    description = registerOutput<String?>('description');
    maxConcurrency = registerOutput<String>('maxConcurrency');
    maxErrors = registerOutput<String>('maxErrors');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    region = registerOutput<String>('region');
    serviceRoleArn = registerOutput<String>('serviceRoleArn');
    targets = registerOutput<List<MaintenanceWindowTaskTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(guardedValue, (value) => MaintenanceWindowTaskTarget.fromMap((value as Map).cast<String, dynamic>())); });
    taskArn = registerOutput<String>('taskArn');
    taskInvocationParameters = registerOutput<MaintenanceWindowTaskTaskInvocationParameters?>('taskInvocationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowTaskTaskInvocationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskType = registerOutput<String>('taskType');
    windowId = registerOutput<String>('windowId');
    windowTaskId = registerOutput<String>('windowTaskId');
  }

  /// Creates a typed reference to an existing [MaintenanceWindowTask] resource.
  MaintenanceWindowTask.reference(String urn)
    : super(
        'aws:ssm/maintenanceWindowTask:MaintenanceWindowTask',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cutoffBehavior = registerOutput<String?>('cutoffBehavior');
    description = registerOutput<String?>('description');
    maxConcurrency = registerOutput<String>('maxConcurrency');
    maxErrors = registerOutput<String>('maxErrors');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    region = registerOutput<String>('region');
    serviceRoleArn = registerOutput<String>('serviceRoleArn');
    targets = registerOutput<List<MaintenanceWindowTaskTarget>?>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MaintenanceWindowTaskTarget>(guardedValue, (value) => MaintenanceWindowTaskTarget.fromMap((value as Map).cast<String, dynamic>())); });
    taskArn = registerOutput<String>('taskArn');
    taskInvocationParameters = registerOutput<MaintenanceWindowTaskTaskInvocationParameters?>('taskInvocationParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowTaskTaskInvocationParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    taskType = registerOutput<String>('taskType');
    windowId = registerOutput<String>('windowId');
    windowTaskId = registerOutput<String>('windowTaskId');
  }
}
