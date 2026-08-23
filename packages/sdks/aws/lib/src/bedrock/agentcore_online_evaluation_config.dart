import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_args.dart';
import 'agentcore_online_evaluation_config_data_source_config.dart';
import 'agentcore_online_evaluation_config_rule.dart';
import 'agentcore_online_evaluation_config_state.dart';
import 'agentcore_online_evaluation_config_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Online Evaluation Configuration. Online evaluation configurations continuously monitor agent performance by sampling live traffic from CloudWatch logs and applying evaluators to assess agent quality in production.
///
/// &gt; **Note:** CloudWatch Transaction Serach must be [enabled](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Enable-TransactionSearch.html) before using this resource.
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
/// const example = new aws.iam.Role("example", {
///     name: "agentcore-eval-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: "sts:AssumeRole",
///             Principal: {
///                 Service: "bedrock-agentcore.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "/aws/agentcore/my-agent-traces"});
/// const exampleAgentcoreOnlineEvaluationConfig = new aws.bedrock.AgentcoreOnlineEvaluationConfig("example", {
///     onlineEvaluationConfigName: "my_evaluation_config",
///     description: "Continuous evaluation of agent performance",
///     enableOnCreate: true,
///     evaluationExecutionRoleArn: example.arn,
///     dataSourceConfig: {
///         cloudwatchLogs: {
///             logGroupNames: [exampleLogGroup.name],
///             serviceNames: ["my_agent_service"],
///         },
///     },
///     evaluators: [
///         {
///             evaluatorId: "Builtin.Helpfulness",
///         },
///         {
///             evaluatorId: "Builtin.GoalSuccessRate",
///         },
///     ],
///     rule: {
///         samplingConfig: {
///             samplingPercentage: 10,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="agentcore-eval-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": "sts:AssumeRole",
///             "Principal": {
///                 "Service": "bedrock-agentcore.amazonaws.com",
///             },
///         }],
///     }))
/// example_log_group = aws.cloudwatch.LogGroup("example", name="/aws/agentcore/my-agent-traces")
/// example_agentcore_online_evaluation_config = aws.bedrock.AgentcoreOnlineEvaluationConfig("example",
///     online_evaluation_config_name="my_evaluation_config",
///     description="Continuous evaluation of agent performance",
///     enable_on_create=True,
///     evaluation_execution_role_arn=example.arn,
///     data_source_config={
///         "cloudwatch_logs": {
///             "log_group_names": [example_log_group.name],
///             "service_names": ["my_agent_service"],
///         },
///     },
///     evaluators=[
///         {
///             "evaluator_id": "Builtin.Helpfulness",
///         },
///         {
///             "evaluator_id": "Builtin.GoalSuccessRate",
///         },
///     ],
///     rule={
///         "sampling_config": {
///             "sampling_percentage": float(10),
///         },
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "agentcore-eval-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "sts:AssumeRole",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "bedrock-agentcore.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/aws/agentcore/my-agent-traces",
///     });
///
///     var exampleAgentcoreOnlineEvaluationConfig = new Aws.Bedrock.AgentcoreOnlineEvaluationConfig("example", new()
///     {
///         OnlineEvaluationConfigName = "my_evaluation_config",
///         Description = "Continuous evaluation of agent performance",
///         EnableOnCreate = true,
///         EvaluationExecutionRoleArn = example.Arn,
///         DataSourceConfig = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs
///         {
///             CloudwatchLogs = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs
///             {
///                 LogGroupNames = new[]
///                 {
///                     exampleLogGroup.Name,
///                 },
///                 ServiceNames = new[]
///                 {
///                     "my_agent_service",
///                 },
///             },
///         },
///         Evaluators = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigEvaluatorArgs
///             {
///                 EvaluatorId = "Builtin.Helpfulness",
///             },
///             new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigEvaluatorArgs
///             {
///                 EvaluatorId = "Builtin.GoalSuccessRate",
///             },
///         },
///         Rule = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleArgs
///         {
///             SamplingConfig = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs
///             {
///                 SamplingPercentage = 10,
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": "sts:AssumeRole",
/// 					"Principal": map[string]string{
/// 						"Service": "bedrock-agentcore.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("agentcore-eval-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("/aws/agentcore/my-agent-traces"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreOnlineEvaluationConfig(ctx, "example", &bedrock.AgentcoreOnlineEvaluationConfigArgs{
/// 			OnlineEvaluationConfigName: pulumi.String("my_evaluation_config"),
/// 			Description:                pulumi.String("Continuous evaluation of agent performance"),
/// 			EnableOnCreate:             pulumi.Bool(true),
/// 			EvaluationExecutionRoleArn: example.Arn,
/// 			DataSourceConfig: &bedrock.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs{
/// 				CloudwatchLogs: &bedrock.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs{
/// 					LogGroupNames: pulumi.StringArray{
/// 						exampleLogGroup.Name,
/// 					},
/// 					ServiceNames: pulumi.StringArray{
/// 						pulumi.String("my_agent_service"),
/// 					},
/// 				},
/// 			},
/// 			Evaluators: bedrock.AgentcoreOnlineEvaluationConfigEvaluatorArray{
/// 				&bedrock.AgentcoreOnlineEvaluationConfigEvaluatorArgs{
/// 					EvaluatorId: pulumi.String("Builtin.Helpfulness"),
/// 				},
/// 				&bedrock.AgentcoreOnlineEvaluationConfigEvaluatorArgs{
/// 					EvaluatorId: pulumi.String("Builtin.GoalSuccessRate"),
/// 				},
/// 			},
/// 			Rule: &bedrock.AgentcoreOnlineEvaluationConfigRuleArgs{
/// 				SamplingConfig: &bedrock.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs{
/// 					SamplingPercentage: pulumi.Float64(10),
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
/// resource "aws_iam_role" "example" {
///   name = "agentcore-eval-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Action" = "sts:AssumeRole"
///       "Principal" = {
///         "Service" = "bedrock-agentcore.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "/aws/agentcore/my-agent-traces"
/// }
/// resource "aws_bedrock_agentcoreonlineevaluationconfig" "example" {
///   online_evaluation_config_name = "my_evaluation_config"
///   description                   = "Continuous evaluation of agent performance"
///   enable_on_create              = true
///   evaluation_execution_role_arn = aws_iam_role.example.arn
///   data_source_config = {
///     cloudwatch_logs = {
///       log_group_names = [aws_cloudwatch_loggroup.example.name]
///       service_names   = ["my_agent_service"]
///     }
///   }
///   evaluators {
///     evaluator_id = "Builtin.Helpfulness"
///   }
///   evaluators {
///     evaluator_id = "Builtin.GoalSuccessRate"
///   }
///   rule = {
///     sampling_config = {
///       sampling_percentage = 10
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.bedrock.AgentcoreOnlineEvaluationConfig;
/// import com.pulumi.aws.bedrock.AgentcoreOnlineEvaluationConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigEvaluatorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("agentcore-eval-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "bedrock-agentcore.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("/aws/agentcore/my-agent-traces")
///             .build());
///
///         var exampleAgentcoreOnlineEvaluationConfig = new AgentcoreOnlineEvaluationConfig("exampleAgentcoreOnlineEvaluationConfig", AgentcoreOnlineEvaluationConfigArgs.builder()
///             .onlineEvaluationConfigName("my_evaluation_config")
///             .description("Continuous evaluation of agent performance")
///             .enableOnCreate(true)
///             .evaluationExecutionRoleArn(example.arn())
///             .dataSourceConfig(AgentcoreOnlineEvaluationConfigDataSourceConfigArgs.builder()
///                 .cloudwatchLogs(AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs.builder()
///                     .logGroupNames(exampleLogGroup.name())
///                     .serviceNames("my_agent_service")
///                     .build())
///                 .build())
///             .evaluators(
///                 AgentcoreOnlineEvaluationConfigEvaluatorArgs.builder()
///                     .evaluatorId("Builtin.Helpfulness")
///                     .build(),
///                 AgentcoreOnlineEvaluationConfigEvaluatorArgs.builder()
///                     .evaluatorId("Builtin.GoalSuccessRate")
///                     .build())
///             .rule(AgentcoreOnlineEvaluationConfigRuleArgs.builder()
///                 .samplingConfig(AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs.builder()
///                     .samplingPercentage(10.0)
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
///     type: aws:iam:Role
///     properties:
///       name: agentcore-eval-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action: sts:AssumeRole
///               Principal:
///                 Service: bedrock-agentcore.amazonaws.com
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: /aws/agentcore/my-agent-traces
///   exampleAgentcoreOnlineEvaluationConfig:
///     type: aws:bedrock:AgentcoreOnlineEvaluationConfig
///     name: example
///     properties:
///       onlineEvaluationConfigName: my_evaluation_config
///       description: Continuous evaluation of agent performance
///       enableOnCreate: true
///       evaluationExecutionRoleArn: ${example.arn}
///       dataSourceConfig:
///         cloudwatchLogs:
///           logGroupNames:
///             - ${exampleLogGroup.name}
///           serviceNames:
///             - my_agent_service
///       evaluators:
///         - evaluatorId: Builtin.Helpfulness
///         - evaluatorId: Builtin.GoalSuccessRate
///       rule:
///         samplingConfig:
///           samplingPercentage: 10
/// ```
///
///
/// ### With Filters and Session Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = new aws.bedrock.AgentcoreOnlineEvaluationConfig("filtered", {
///     onlineEvaluationConfigName: "filtered_evaluation",
///     enableOnCreate: true,
///     evaluationExecutionRoleArn: exampleAwsIamRole.arn,
///     dataSourceConfig: {
///         cloudwatchLogs: {
///             logGroupNames: [example.name],
///             serviceNames: ["my_agent_service"],
///         },
///     },
///     evaluators: [{
///         evaluatorId: "Builtin.Helpfulness",
///     }],
///     rule: {
///         samplingConfig: {
///             samplingPercentage: 50,
///         },
///         filters: [{
///             key: "environment",
///             operator: "Equals",
///             value: {
///                 stringValue: "production",
///             },
///         }],
///         sessionConfig: {
///             sessionTimeoutMinutes: 30,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.bedrock.AgentcoreOnlineEvaluationConfig("filtered",
///     online_evaluation_config_name="filtered_evaluation",
///     enable_on_create=True,
///     evaluation_execution_role_arn=example_aws_iam_role["arn"],
///     data_source_config={
///         "cloudwatch_logs": {
///             "log_group_names": [example["name"]],
///             "service_names": ["my_agent_service"],
///         },
///     },
///     evaluators=[{
///         "evaluator_id": "Builtin.Helpfulness",
///     }],
///     rule={
///         "sampling_config": {
///             "sampling_percentage": float(50),
///         },
///         "filters": [{
///             "key": "environment",
///             "operator": "Equals",
///             "value": {
///                 "string_value": "production",
///             },
///         }],
///         "session_config": {
///             "session_timeout_minutes": 30,
///         },
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
///     var filtered = new Aws.Bedrock.AgentcoreOnlineEvaluationConfig("filtered", new()
///     {
///         OnlineEvaluationConfigName = "filtered_evaluation",
///         EnableOnCreate = true,
///         EvaluationExecutionRoleArn = exampleAwsIamRole.Arn,
///         DataSourceConfig = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs
///         {
///             CloudwatchLogs = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs
///             {
///                 LogGroupNames = new[]
///                 {
///                     example.Name,
///                 },
///                 ServiceNames = new[]
///                 {
///                     "my_agent_service",
///                 },
///             },
///         },
///         Evaluators = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigEvaluatorArgs
///             {
///                 EvaluatorId = "Builtin.Helpfulness",
///             },
///         },
///         Rule = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleArgs
///         {
///             SamplingConfig = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs
///             {
///                 SamplingPercentage = 50,
///             },
///             Filters = new[]
///             {
///                 new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleFilterArgs
///                 {
///                     Key = "environment",
///                     Operator = "Equals",
///                     Value = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleFilterValueArgs
///                     {
///                         StringValue = "production",
///                     },
///                 },
///             },
///             SessionConfig = new Aws.Bedrock.Inputs.AgentcoreOnlineEvaluationConfigRuleSessionConfigArgs
///             {
///                 SessionTimeoutMinutes = 30,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreOnlineEvaluationConfig(ctx, "filtered", &bedrock.AgentcoreOnlineEvaluationConfigArgs{
/// 			OnlineEvaluationConfigName: pulumi.String("filtered_evaluation"),
/// 			EnableOnCreate:             pulumi.Bool(true),
/// 			EvaluationExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			DataSourceConfig: &bedrock.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs{
/// 				CloudwatchLogs: &bedrock.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs{
/// 					LogGroupNames: pulumi.StringArray{
/// 						example.Name,
/// 					},
/// 					ServiceNames: pulumi.StringArray{
/// 						pulumi.String("my_agent_service"),
/// 					},
/// 				},
/// 			},
/// 			Evaluators: bedrock.AgentcoreOnlineEvaluationConfigEvaluatorArray{
/// 				&bedrock.AgentcoreOnlineEvaluationConfigEvaluatorArgs{
/// 					EvaluatorId: pulumi.String("Builtin.Helpfulness"),
/// 				},
/// 			},
/// 			Rule: &bedrock.AgentcoreOnlineEvaluationConfigRuleArgs{
/// 				SamplingConfig: &bedrock.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs{
/// 					SamplingPercentage: pulumi.Float64(50),
/// 				},
/// 				Filters: bedrock.AgentcoreOnlineEvaluationConfigRuleFilterArray{
/// 					&bedrock.AgentcoreOnlineEvaluationConfigRuleFilterArgs{
/// 						Key:      pulumi.String("environment"),
/// 						Operator: pulumi.String("Equals"),
/// 						Value: &bedrock.AgentcoreOnlineEvaluationConfigRuleFilterValueArgs{
/// 							StringValue: pulumi.String("production"),
/// 						},
/// 					},
/// 				},
/// 				SessionConfig: &bedrock.AgentcoreOnlineEvaluationConfigRuleSessionConfigArgs{
/// 					SessionTimeoutMinutes: pulumi.Int(30),
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
/// resource "aws_bedrock_agentcoreonlineevaluationconfig" "filtered" {
///   online_evaluation_config_name = "filtered_evaluation"
///   enable_on_create              = true
///   evaluation_execution_role_arn = exampleAwsIamRole.arn
///   data_source_config = {
///     cloudwatch_logs = {
///       log_group_names = [example.name]
///       service_names   = ["my_agent_service"]
///     }
///   }
///   evaluators {
///     evaluator_id = "Builtin.Helpfulness"
///   }
///   rule = {
///     sampling_config = {
///       sampling_percentage = 50
///     }
///     filters = [{
///       "key"      = "environment"
///       "operator" = "Equals"
///       "value" = {
///         "stringValue" = "production"
///       }
///     }]
///     session_config = {
///       session_timeout_minutes = 30
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
/// import com.pulumi.aws.bedrock.AgentcoreOnlineEvaluationConfig;
/// import com.pulumi.aws.bedrock.AgentcoreOnlineEvaluationConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigEvaluatorArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleFilterArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleFilterValueArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOnlineEvaluationConfigRuleSessionConfigArgs;
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
///         var filtered = new AgentcoreOnlineEvaluationConfig("filtered", AgentcoreOnlineEvaluationConfigArgs.builder()
///             .onlineEvaluationConfigName("filtered_evaluation")
///             .enableOnCreate(true)
///             .evaluationExecutionRoleArn(exampleAwsIamRole.arn())
///             .dataSourceConfig(AgentcoreOnlineEvaluationConfigDataSourceConfigArgs.builder()
///                 .cloudwatchLogs(AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogsArgs.builder()
///                     .logGroupNames(example.name())
///                     .serviceNames("my_agent_service")
///                     .build())
///                 .build())
///             .evaluators(AgentcoreOnlineEvaluationConfigEvaluatorArgs.builder()
///                 .evaluatorId("Builtin.Helpfulness")
///                 .build())
///             .rule(AgentcoreOnlineEvaluationConfigRuleArgs.builder()
///                 .samplingConfig(AgentcoreOnlineEvaluationConfigRuleSamplingConfigArgs.builder()
///                     .samplingPercentage(50.0)
///                     .build())
///                 .filters(AgentcoreOnlineEvaluationConfigRuleFilterArgs.builder()
///                     .key("environment")
///                     .operator("Equals")
///                     .value(AgentcoreOnlineEvaluationConfigRuleFilterValueArgs.builder()
///                         .stringValue("production")
///                         .build())
///                     .build())
///                 .sessionConfig(AgentcoreOnlineEvaluationConfigRuleSessionConfigArgs.builder()
///                     .sessionTimeoutMinutes(30)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   filtered:
///     type: aws:bedrock:AgentcoreOnlineEvaluationConfig
///     properties:
///       onlineEvaluationConfigName: filtered_evaluation
///       enableOnCreate: true
///       evaluationExecutionRoleArn: ${exampleAwsIamRole.arn}
///       dataSourceConfig:
///         cloudwatchLogs:
///           logGroupNames:
///             - ${example.name}
///           serviceNames:
///             - my_agent_service
///       evaluators:
///         - evaluatorId: Builtin.Helpfulness
///       rule:
///         samplingConfig:
///           samplingPercentage: 50
///         filters:
///           - key: environment
///             operator: Equals
///             value:
///               stringValue: production
///         sessionConfig:
///           sessionTimeoutMinutes: 30
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `onlineEvaluationConfigId` (String) ID of the online evaluation config.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock AgentCore Online Evaluation Configs using `onlineEvaluationConfigId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreOnlineEvaluationConfig:AgentcoreOnlineEvaluationConfig example my_evaluation_config-aBcDeFgHiJ
/// ```
class AgentcoreOnlineEvaluationConfig extends pulumi.CustomResource {
  /// Data source configuration specifying where to read agent traces. See `dataSourceConfig` Block below.
  late final pulumi.Output<AgentcoreOnlineEvaluationConfigDataSourceConfig> dataSourceConfig;
  /// Description of the online evaluation configuration.
  late final pulumi.Output<String?> description;
  /// Whether to enable the online evaluation configuration immediately upon creation.
  late final pulumi.Output<bool> enableOnCreate;
  /// ARN of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation.
  late final pulumi.Output<String> evaluationExecutionRoleArn;
  /// List of evaluators to apply during online evaluation. Minimum 1, maximum 10. See `evaluator` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> evaluators;
  /// Execution status to enable or disable the online evaluation. Valid values: `ENABLED`, `DISABLED`. Computed on create based on `enableOnCreate`.
  late final pulumi.Output<String> executionStatus;
  /// ARN of the online evaluation configuration.
  late final pulumi.Output<String> onlineEvaluationConfigArn;
  /// Unique identifier of the online evaluation configuration.
  late final pulumi.Output<String> onlineEvaluationConfigId;
  /// Name of the online evaluation configuration. Must start with a letter and contain only alphanumeric characters and underscores, up to 48 characters.
  late final pulumi.Output<String> onlineEvaluationConfigName;
  /// Configuration specifying where evaluation results are written. See `outputConfig` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> outputConfigs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Evaluation rule defining sampling configuration, filters, and session detection settings. See `rule` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreOnlineEvaluationConfigRule> rule;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreOnlineEvaluationConfigTimeouts?> timeouts;

  /// Creates a new [AgentcoreOnlineEvaluationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreOnlineEvaluationConfig]. {@macro pulumi_bedrock_agentcore_online_evaluation_config_agentcore_online_evaluation_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreOnlineEvaluationConfig(
    String name, {
    AgentcoreOnlineEvaluationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreOnlineEvaluationConfig:AgentcoreOnlineEvaluationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceConfig = registerOutput<AgentcoreOnlineEvaluationConfigDataSourceConfig>('dataSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigDataSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enableOnCreate = registerOutput<bool>('enableOnCreate');
    evaluationExecutionRoleArn = registerOutput<String>('evaluationExecutionRoleArn');
    evaluators = registerOutput<List<Map<String, dynamic>>>('evaluators');
    executionStatus = registerOutput<String>('executionStatus');
    onlineEvaluationConfigArn = registerOutput<String>('onlineEvaluationConfigArn');
    onlineEvaluationConfigId = registerOutput<String>('onlineEvaluationConfigId');
    onlineEvaluationConfigName = registerOutput<String>('onlineEvaluationConfigName');
    outputConfigs = registerOutput<List<Map<String, dynamic>>>('outputConfigs');
    region = registerOutput<String>('region');
    rule = registerOutput<AgentcoreOnlineEvaluationConfigRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreOnlineEvaluationConfigTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreOnlineEvaluationConfig] resource's state with the given [name] and [id].
  static AgentcoreOnlineEvaluationConfig get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreOnlineEvaluationConfigState? state,
  }) {
    return AgentcoreOnlineEvaluationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreOnlineEvaluationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreOnlineEvaluationConfig:AgentcoreOnlineEvaluationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceConfig = registerOutput<AgentcoreOnlineEvaluationConfigDataSourceConfig>('dataSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigDataSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enableOnCreate = registerOutput<bool>('enableOnCreate');
    evaluationExecutionRoleArn = registerOutput<String>('evaluationExecutionRoleArn');
    evaluators = registerOutput<List<Map<String, dynamic>>>('evaluators');
    executionStatus = registerOutput<String>('executionStatus');
    onlineEvaluationConfigArn = registerOutput<String>('onlineEvaluationConfigArn');
    onlineEvaluationConfigId = registerOutput<String>('onlineEvaluationConfigId');
    onlineEvaluationConfigName = registerOutput<String>('onlineEvaluationConfigName');
    outputConfigs = registerOutput<List<Map<String, dynamic>>>('outputConfigs');
    region = registerOutput<String>('region');
    rule = registerOutput<AgentcoreOnlineEvaluationConfigRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<AgentcoreOnlineEvaluationConfigTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOnlineEvaluationConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
