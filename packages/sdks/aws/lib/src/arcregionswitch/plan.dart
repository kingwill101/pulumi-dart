import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_args.dart';
import 'plan_associated_alarm.dart';
import 'plan_report_configuration.dart';
import 'plan_state.dart';
import 'plan_timeouts.dart';
import 'plan_trigger.dart';
import 'plan_workflow.dart';

/// Resource for managing an Amazon ARC Region Switch plan.
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
///     name: "arc-region-switch-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "arc-region-switch.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const examplePlan = new aws.arcregionswitch.Plan("example", {
///     workflows: [
///         {
///             steps: [{
///                 executionApprovalConfigs: [{
///                     approvalRole: example.arn,
///                     timeoutMinutes: 60,
///                 }],
///                 name: "manual-approval",
///                 executionBlockType: "ManualApproval",
///             }],
///             workflowTargetAction: "activate",
///             workflowTargetRegion: "us-west-2",
///         },
///         {
///             steps: [{
///                 executionApprovalConfigs: [{
///                     approvalRole: example.arn,
///                     timeoutMinutes: 60,
///                 }],
///                 name: "manual-approval",
///                 executionBlockType: "ManualApproval",
///             }],
///             workflowTargetAction: "deactivate",
///             workflowTargetRegion: "us-east-1",
///         },
///     ],
///     name: "example-plan",
///     executionRole: example.arn,
///     recoveryApproach: "activePassive",
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     primaryRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="arc-region-switch-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "arc-region-switch.amazonaws.com",
///             },
///         }],
///     }))
/// example_plan = aws.arcregionswitch.Plan("example",
///     workflows=[
///         {
///             "steps": [{
///                 "execution_approval_configs": [{
///                     "approval_role": example.arn,
///                     "timeout_minutes": 60,
///                 }],
///                 "name": "manual-approval",
///                 "execution_block_type": "ManualApproval",
///             }],
///             "workflow_target_action": "activate",
///             "workflow_target_region": "us-west-2",
///         },
///         {
///             "steps": [{
///                 "execution_approval_configs": [{
///                     "approval_role": example.arn,
///                     "timeout_minutes": 60,
///                 }],
///                 "name": "manual-approval",
///                 "execution_block_type": "ManualApproval",
///             }],
///             "workflow_target_action": "deactivate",
///             "workflow_target_region": "us-east-1",
///         },
///     ],
///     name="example-plan",
///     execution_role=example.arn,
///     recovery_approach="activePassive",
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     primary_region="us-east-1")
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
///         Name = "arc-region-switch-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "arc-region-switch.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var examplePlan = new Aws.ArcRegionSwitch.Plan("example", new()
///     {
///         Workflows = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         ExecutionApprovalConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepExecutionApprovalConfigArgs
///                             {
///                                 ApprovalRole = example.Arn,
///                                 TimeoutMinutes = 60,
///                             },
///                         },
///                         Name = "manual-approval",
///                         ExecutionBlockType = "ManualApproval",
///                     },
///                 },
///                 WorkflowTargetAction = "activate",
///                 WorkflowTargetRegion = "us-west-2",
///             },
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         ExecutionApprovalConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepExecutionApprovalConfigArgs
///                             {
///                                 ApprovalRole = example.Arn,
///                                 TimeoutMinutes = 60,
///                             },
///                         },
///                         Name = "manual-approval",
///                         ExecutionBlockType = "ManualApproval",
///                     },
///                 },
///                 WorkflowTargetAction = "deactivate",
///                 WorkflowTargetRegion = "us-east-1",
///             },
///         },
///         Name = "example-plan",
///         ExecutionRole = example.Arn,
///         RecoveryApproach = "activePassive",
///         Regions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///         },
///         PrimaryRegion = "us-east-1",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arcregionswitch"
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
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "arc-region-switch.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("arc-region-switch-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arcregionswitch.NewPlan(ctx, "example", &arcregionswitch.PlanArgs{
/// 			Workflows: arcregionswitch.PlanWorkflowArray{
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							ExecutionApprovalConfigs: arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArgs{
/// 									ApprovalRole:   example.Arn,
/// 									TimeoutMinutes: pulumi.Int(60),
/// 								},
/// 							},
/// 							Name:               pulumi.String("manual-approval"),
/// 							ExecutionBlockType: pulumi.String("ManualApproval"),
/// 						},
/// 					},
/// 					WorkflowTargetAction: pulumi.String("activate"),
/// 					WorkflowTargetRegion: pulumi.String("us-west-2"),
/// 				},
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							ExecutionApprovalConfigs: arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArgs{
/// 									ApprovalRole:   example.Arn,
/// 									TimeoutMinutes: pulumi.Int(60),
/// 								},
/// 							},
/// 							Name:               pulumi.String("manual-approval"),
/// 							ExecutionBlockType: pulumi.String("ManualApproval"),
/// 						},
/// 					},
/// 					WorkflowTargetAction: pulumi.String("deactivate"),
/// 					WorkflowTargetRegion: pulumi.String("us-east-1"),
/// 				},
/// 			},
/// 			Name:             pulumi.String("example-plan"),
/// 			ExecutionRole:    example.Arn,
/// 			RecoveryApproach: pulumi.String("activePassive"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			PrimaryRegion: pulumi.String("us-east-1"),
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
///   name = "arc-region-switch-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "arc-region-switch.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_arcregionswitch_plan" "example" {
///   workflows {
///     steps {
///       execution_approval_configs {
///         approval_role   = aws_iam_role.example.arn
///         timeout_minutes = 60
///       }
///       name                 = "manual-approval"
///       execution_block_type = "ManualApproval"
///     }
///     workflow_target_action = "activate"
///     workflow_target_region = "us-west-2"
///   }
///   workflows {
///     steps {
///       execution_approval_configs {
///         approval_role   = aws_iam_role.example.arn
///         timeout_minutes = 60
///       }
///       name                 = "manual-approval"
///       execution_block_type = "ManualApproval"
///     }
///     workflow_target_action = "deactivate"
///     workflow_target_region = "us-east-1"
///   }
///   name              = "example-plan"
///   execution_role    = aws_iam_role.example.arn
///   recovery_approach = "activePassive"
///   regions           = ["us-east-1", "us-west-2"]
///   primary_region    = "us-east-1"
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
/// import com.pulumi.aws.arcregionswitch.Plan;
/// import com.pulumi.aws.arcregionswitch.PlanArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepExecutionApprovalConfigArgs;
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
///             .name("arc-region-switch-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "arc-region-switch.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .workflows(
///                 PlanWorkflowArgs.builder()
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .executionApprovalConfigs(PlanWorkflowStepExecutionApprovalConfigArgs.builder()
///                             .approvalRole(example.arn())
///                             .timeoutMinutes(60)
///                             .build())
///                         .name("manual-approval")
///                         .executionBlockType("ManualApproval")
///                         .build())
///                     .workflowTargetAction("activate")
///                     .workflowTargetRegion("us-west-2")
///                     .build(),
///                 PlanWorkflowArgs.builder()
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .executionApprovalConfigs(PlanWorkflowStepExecutionApprovalConfigArgs.builder()
///                             .approvalRole(example.arn())
///                             .timeoutMinutes(60)
///                             .build())
///                         .name("manual-approval")
///                         .executionBlockType("ManualApproval")
///                         .build())
///                     .workflowTargetAction("deactivate")
///                     .workflowTargetRegion("us-east-1")
///                     .build())
///             .name("example-plan")
///             .executionRole(example.arn())
///             .recoveryApproach("activePassive")
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .primaryRegion("us-east-1")
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
///       name: arc-region-switch-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: arc-region-switch.amazonaws.com
///   examplePlan:
///     type: aws:arcregionswitch:Plan
///     name: example
///     properties:
///       workflows:
///         - steps:
///             - executionApprovalConfigs:
///                 - approvalRole: ${example.arn}
///                   timeoutMinutes: 60
///               name: manual-approval
///               executionBlockType: ManualApproval
///           workflowTargetAction: activate
///           workflowTargetRegion: us-west-2
///         - steps:
///             - executionApprovalConfigs:
///                 - approvalRole: ${example.arn}
///                   timeoutMinutes: 60
///               name: manual-approval
///               executionBlockType: ManualApproval
///           workflowTargetAction: deactivate
///           workflowTargetRegion: us-east-1
///       name: example-plan
///       executionRole: ${example.arn}
///       recoveryApproach: activePassive
///       regions:
///         - us-east-1
///         - us-west-2
///       primaryRegion: us-east-1
/// ```
///
///
/// ### Complex Usage with Multiple Step Types
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const complex = new aws.arcregionswitch.Plan("complex", {
///     associatedAlarms: [{
///         name: "application-health-alarm",
///         alarmType: "applicationHealth",
///         resourceIdentifier: "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///     }],
///     triggers: [{
///         conditions: [{
///             associatedAlarmName: "application-health-alarm",
///             condition: "red",
///         }],
///         action: "activate",
///         targetRegion: "us-west-2",
///         minDelayMinutesBetweenExecutions: 30,
///     }],
///     workflows: [
///         {
///             steps: [
///                 {
///                     customActionLambdaConfigs: [{
///                         lambdas: [{
///                             arn: example.arn,
///                         }],
///                         regionToRun: "activatingRegion",
///                         retryIntervalMinutes: 5,
///                         timeoutMinutes: 30,
///                     }],
///                     name: "lambda-step",
///                     executionBlockType: "CustomActionLambda",
///                 },
///                 {
///                     parallelConfigs: [{
///                         steps: [
///                             {
///                                 ec2AsgCapacityIncreaseConfigs: [{
///                                     asgs: [{
///                                         arn: exampleAwsAutoscalingGroup.arn,
///                                     }],
///                                     targetPercent: 150,
///                                 }],
///                                 name: "asg-scaling",
///                                 executionBlockType: "EC2AutoScaling",
///                             },
///                             {
///                                 ecsCapacityIncreaseConfigs: [{
///                                     services: [{
///                                         clusterArn: exampleAwsEcsCluster.arn,
///                                         serviceArn: exampleAwsEcsService.arn,
///                                     }],
///                                     targetPercent: 200,
///                                 }],
///                                 name: "ecs-scaling",
///                                 executionBlockType: "ECSServiceScaling",
///                             },
///                         ],
///                     }],
///                     name: "parallel-step",
///                     executionBlockType: "Parallel",
///                 },
///             ],
///             workflowTargetAction: "activate",
///             workflowTargetRegion: "us-west-2",
///         },
///         {
///             steps: [{
///                 route53HealthCheckConfigs: [{
///                     hostedZoneId: exampleAwsRoute53Zone.zoneId,
///                     recordName: "api.example.com",
///                 }],
///                 name: "route53-health-check",
///                 executionBlockType: "Route53HealthCheck",
///             }],
///             workflowTargetAction: "deactivate",
///             workflowTargetRegion: "us-east-1",
///         },
///     ],
///     name: "complex-plan",
///     executionRole: exampleAwsIamRole.arn,
///     recoveryApproach: "activeActive",
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     description: "Complex plan with multiple execution block types",
///     recoveryTimeObjectiveMinutes: 60,
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// complex = aws.arcregionswitch.Plan("complex",
///     associated_alarms=[{
///         "name": "application-health-alarm",
///         "alarm_type": "applicationHealth",
///         "resource_identifier": "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///     }],
///     triggers=[{
///         "conditions": [{
///             "associated_alarm_name": "application-health-alarm",
///             "condition": "red",
///         }],
///         "action": "activate",
///         "target_region": "us-west-2",
///         "min_delay_minutes_between_executions": 30,
///     }],
///     workflows=[
///         {
///             "steps": [
///                 {
///                     "custom_action_lambda_configs": [{
///                         "lambdas": [{
///                             "arn": example["arn"],
///                         }],
///                         "region_to_run": "activatingRegion",
///                         "retry_interval_minutes": float(5),
///                         "timeout_minutes": 30,
///                     }],
///                     "name": "lambda-step",
///                     "execution_block_type": "CustomActionLambda",
///                 },
///                 {
///                     "parallel_configs": [{
///                         "steps": [
///                             {
///                                 "ec2_asg_capacity_increase_configs": [{
///                                     "asgs": [{
///                                         "arn": example_aws_autoscaling_group["arn"],
///                                     }],
///                                     "target_percent": 150,
///                                 }],
///                                 "name": "asg-scaling",
///                                 "execution_block_type": "EC2AutoScaling",
///                             },
///                             {
///                                 "ecs_capacity_increase_configs": [{
///                                     "services": [{
///                                         "cluster_arn": example_aws_ecs_cluster["arn"],
///                                         "service_arn": example_aws_ecs_service["arn"],
///                                     }],
///                                     "target_percent": 200,
///                                 }],
///                                 "name": "ecs-scaling",
///                                 "execution_block_type": "ECSServiceScaling",
///                             },
///                         ],
///                     }],
///                     "name": "parallel-step",
///                     "execution_block_type": "Parallel",
///                 },
///             ],
///             "workflow_target_action": "activate",
///             "workflow_target_region": "us-west-2",
///         },
///         {
///             "steps": [{
///                 "route53_health_check_configs": [{
///                     "hosted_zone_id": example_aws_route53_zone["zoneId"],
///                     "record_name": "api.example.com",
///                 }],
///                 "name": "route53-health-check",
///                 "execution_block_type": "Route53HealthCheck",
///             }],
///             "workflow_target_action": "deactivate",
///             "workflow_target_region": "us-east-1",
///         },
///     ],
///     name="complex-plan",
///     execution_role=example_aws_iam_role["arn"],
///     recovery_approach="activeActive",
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     description="Complex plan with multiple execution block types",
///     recovery_time_objective_minutes=60,
///     tags={
///         "Environment": "production",
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
///     var complex = new Aws.ArcRegionSwitch.Plan("complex", new()
///     {
///         AssociatedAlarms = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanAssociatedAlarmArgs
///             {
///                 Name = "application-health-alarm",
///                 AlarmType = "applicationHealth",
///                 ResourceIdentifier = "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///             },
///         },
///         Triggers = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanTriggerArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanTriggerConditionArgs
///                     {
///                         AssociatedAlarmName = "application-health-alarm",
///                         Condition = "red",
///                     },
///                 },
///                 Action = "activate",
///                 TargetRegion = "us-west-2",
///                 MinDelayMinutesBetweenExecutions = 30,
///             },
///         },
///         Workflows = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         CustomActionLambdaConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepCustomActionLambdaConfigArgs
///                             {
///                                 Lambdas = new[]
///                                 {
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepCustomActionLambdaConfigLambdaArgs
///                                     {
///                                         Arn = example.Arn,
///                                     },
///                                 },
///                                 RegionToRun = "activatingRegion",
///                                 RetryIntervalMinutes = 5,
///                                 TimeoutMinutes = 30,
///                             },
///                         },
///                         Name = "lambda-step",
///                         ExecutionBlockType = "CustomActionLambda",
///                     },
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         ParallelConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigArgs
///                             {
///                                 Steps = new[]
///                                 {
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepArgs
///                                     {
///                                         Ec2AsgCapacityIncreaseConfigs = new[]
///                                         {
///                                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArgs
///                                             {
///                                                 Asgs = new[]
///                                                 {
///                                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArgs
///                                                     {
///                                                         Arn = exampleAwsAutoscalingGroup.Arn,
///                                                     },
///                                                 },
///                                                 TargetPercent = 150,
///                                             },
///                                         },
///                                         Name = "asg-scaling",
///                                         ExecutionBlockType = "EC2AutoScaling",
///                                     },
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepArgs
///                                     {
///                                         EcsCapacityIncreaseConfigs = new[]
///                                         {
///                                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArgs
///                                             {
///                                                 Services = new[]
///                                                 {
///                                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArgs
///                                                     {
///                                                         ClusterArn = exampleAwsEcsCluster.Arn,
///                                                         ServiceArn = exampleAwsEcsService.Arn,
///                                                     },
///                                                 },
///                                                 TargetPercent = 200,
///                                             },
///                                         },
///                                         Name = "ecs-scaling",
///                                         ExecutionBlockType = "ECSServiceScaling",
///                                     },
///                                 },
///                             },
///                         },
///                         Name = "parallel-step",
///                         ExecutionBlockType = "Parallel",
///                     },
///                 },
///                 WorkflowTargetAction = "activate",
///                 WorkflowTargetRegion = "us-west-2",
///             },
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Route53HealthCheckConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepRoute53HealthCheckConfigArgs
///                             {
///                                 HostedZoneId = exampleAwsRoute53Zone.ZoneId,
///                                 RecordName = "api.example.com",
///                             },
///                         },
///                         Name = "route53-health-check",
///                         ExecutionBlockType = "Route53HealthCheck",
///                     },
///                 },
///                 WorkflowTargetAction = "deactivate",
///                 WorkflowTargetRegion = "us-east-1",
///             },
///         },
///         Name = "complex-plan",
///         ExecutionRole = exampleAwsIamRole.Arn,
///         RecoveryApproach = "activeActive",
///         Regions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///         },
///         Description = "Complex plan with multiple execution block types",
///         RecoveryTimeObjectiveMinutes = 60,
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arcregionswitch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arcregionswitch.NewPlan(ctx, "complex", &arcregionswitch.PlanArgs{
/// 			AssociatedAlarms: arcregionswitch.PlanAssociatedAlarmArray{
/// 				&arcregionswitch.PlanAssociatedAlarmArgs{
/// 					Name:               "application-health-alarm",
/// 					AlarmType:          pulumi.String("applicationHealth"),
/// 					ResourceIdentifier: pulumi.String("arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm"),
/// 				},
/// 			},
/// 			Triggers: arcregionswitch.PlanTriggerArray{
/// 				&arcregionswitch.PlanTriggerArgs{
/// 					Conditions: arcregionswitch.PlanTriggerConditionArray{
/// 						&arcregionswitch.PlanTriggerConditionArgs{
/// 							AssociatedAlarmName: pulumi.String("application-health-alarm"),
/// 							Condition:           pulumi.String("red"),
/// 						},
/// 					},
/// 					Action:                           pulumi.String("activate"),
/// 					TargetRegion:                     pulumi.String("us-west-2"),
/// 					MinDelayMinutesBetweenExecutions: pulumi.Int(30),
/// 				},
/// 			},
/// 			Workflows: arcregionswitch.PlanWorkflowArray{
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							CustomActionLambdaConfigs: arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigArgs{
/// 									Lambdas: arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigLambdaArray{
/// 										&arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigLambdaArgs{
/// 											Arn: pulumi.Any(example.Arn),
/// 										},
/// 									},
/// 									RegionToRun:          pulumi.String("activatingRegion"),
/// 									RetryIntervalMinutes: pulumi.Float64(5),
/// 									TimeoutMinutes:       pulumi.Int(30),
/// 								},
/// 							},
/// 							Name:               pulumi.String("lambda-step"),
/// 							ExecutionBlockType: pulumi.String("CustomActionLambda"),
/// 						},
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							ParallelConfigs: arcregionswitch.PlanWorkflowStepParallelConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepParallelConfigArgs{
/// 									Steps: arcregionswitch.PlanWorkflowStepParallelConfigStepArray{
/// 										&arcregionswitch.PlanWorkflowStepParallelConfigStepArgs{
/// 											Ec2AsgCapacityIncreaseConfigs: arcregionswitch.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArray{
/// 												&arcregionswitch.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArgs{
/// 													Asgs: arcregionswitch.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArray{
/// 														&arcregionswitch.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArgs{
/// 															Arn: pulumi.Any(exampleAwsAutoscalingGroup.Arn),
/// 														},
/// 													},
/// 													TargetPercent: pulumi.Int(150),
/// 												},
/// 											},
/// 											Name:               pulumi.String("asg-scaling"),
/// 											ExecutionBlockType: pulumi.String("EC2AutoScaling"),
/// 										},
/// 										&arcregionswitch.PlanWorkflowStepParallelConfigStepArgs{
/// 											EcsCapacityIncreaseConfigs: arcregionswitch.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArray{
/// 												&arcregionswitch.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArgs{
/// 													Services: arcregionswitch.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArray{
/// 														&arcregionswitch.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArgs{
/// 															ClusterArn: pulumi.Any(exampleAwsEcsCluster.Arn),
/// 															ServiceArn: pulumi.Any(exampleAwsEcsService.Arn),
/// 														},
/// 													},
/// 													TargetPercent: pulumi.Int(200),
/// 												},
/// 											},
/// 											Name:               pulumi.String("ecs-scaling"),
/// 											ExecutionBlockType: pulumi.String("ECSServiceScaling"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							Name:               pulumi.String("parallel-step"),
/// 							ExecutionBlockType: pulumi.String("Parallel"),
/// 						},
/// 					},
/// 					WorkflowTargetAction: pulumi.String("activate"),
/// 					WorkflowTargetRegion: pulumi.String("us-west-2"),
/// 				},
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Route53HealthCheckConfigs: arcregionswitch.PlanWorkflowStepRoute53HealthCheckConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepRoute53HealthCheckConfigArgs{
/// 									HostedZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 									RecordName:   pulumi.String("api.example.com"),
/// 								},
/// 							},
/// 							Name:               pulumi.String("route53-health-check"),
/// 							ExecutionBlockType: pulumi.String("Route53HealthCheck"),
/// 						},
/// 					},
/// 					WorkflowTargetAction: pulumi.String("deactivate"),
/// 					WorkflowTargetRegion: pulumi.String("us-east-1"),
/// 				},
/// 			},
/// 			Name:             pulumi.String("complex-plan"),
/// 			ExecutionRole:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			RecoveryApproach: pulumi.String("activeActive"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			Description:                  pulumi.String("Complex plan with multiple execution block types"),
/// 			RecoveryTimeObjectiveMinutes: pulumi.Int(60),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// resource "aws_arcregionswitch_plan" "complex" {
///   associated_alarms {
///     name                = "application-health-alarm"
///     alarm_type          = "applicationHealth"
///     resource_identifier = "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm"
///   }
///   triggers {
///     conditions {
///       associated_alarm_name = "application-health-alarm"
///       condition             = "red"
///     }
///     action                               = "activate"
///     target_region                        = "us-west-2"
///     min_delay_minutes_between_executions = 30
///   }
///   workflows {
///     steps {
///       custom_action_lambda_configs {
///         lambdas {
///           arn = example.arn
///         }
///         region_to_run          = "activatingRegion"
///         retry_interval_minutes = 5
///         timeout_minutes        = 30
///       }
///       name                 = "lambda-step"
///       execution_block_type = "CustomActionLambda"
///     }
///     steps {
///       parallel_configs {
///         steps {
///           ec2_asg_capacity_increase_configs {
///             asgs {
///               arn = exampleAwsAutoscalingGroup.arn
///             }
///             target_percent = 150
///           }
///           name                 = "asg-scaling"
///           execution_block_type = "EC2AutoScaling"
///         }
///         steps {
///           ecs_capacity_increase_configs {
///             services {
///               cluster_arn = exampleAwsEcsCluster.arn
///               service_arn = exampleAwsEcsService.arn
///             }
///             target_percent = 200
///           }
///           name                 = "ecs-scaling"
///           execution_block_type = "ECSServiceScaling"
///         }
///       }
///       name                 = "parallel-step"
///       execution_block_type = "Parallel"
///     }
///     workflow_target_action = "activate"
///     workflow_target_region = "us-west-2"
///   }
///   workflows {
///     steps {
///       route53_health_check_configs {
///         hosted_zone_id = exampleAwsRoute53Zone.zoneId
///         record_name    = "api.example.com"
///       }
///       name                 = "route53-health-check"
///       execution_block_type = "Route53HealthCheck"
///     }
///     workflow_target_action = "deactivate"
///     workflow_target_region = "us-east-1"
///   }
///   name                            = "complex-plan"
///   execution_role                  = exampleAwsIamRole.arn
///   recovery_approach               = "activeActive"
///   regions                         = ["us-east-1", "us-west-2"]
///   description                     = "Complex plan with multiple execution block types"
///   recovery_time_objective_minutes = 60
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.arcregionswitch.Plan;
/// import com.pulumi.aws.arcregionswitch.PlanArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanAssociatedAlarmArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanTriggerArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanTriggerConditionArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepCustomActionLambdaConfigArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepCustomActionLambdaConfigLambdaArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigStepArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowStepRoute53HealthCheckConfigArgs;
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
///         var complex = new Plan("complex", PlanArgs.builder()
///             .associatedAlarms(PlanAssociatedAlarmArgs.builder()
///                 .name("application-health-alarm")
///                 .alarmType("applicationHealth")
///                 .resourceIdentifier("arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm")
///                 .build())
///             .triggers(PlanTriggerArgs.builder()
///                 .conditions(PlanTriggerConditionArgs.builder()
///                     .associatedAlarmName("application-health-alarm")
///                     .condition("red")
///                     .build())
///                 .action("activate")
///                 .targetRegion("us-west-2")
///                 .minDelayMinutesBetweenExecutions(30)
///                 .build())
///             .workflows(
///                 PlanWorkflowArgs.builder()
///                     .steps(
///                         PlanWorkflowStepArgs.builder()
///                             .customActionLambdaConfigs(PlanWorkflowStepCustomActionLambdaConfigArgs.builder()
///                                 .lambdas(PlanWorkflowStepCustomActionLambdaConfigLambdaArgs.builder()
///                                     .arn(example.arn())
///                                     .build())
///                                 .regionToRun("activatingRegion")
///                                 .retryIntervalMinutes(5.0)
///                                 .timeoutMinutes(30)
///                                 .build())
///                             .name("lambda-step")
///                             .executionBlockType("CustomActionLambda")
///                             .build(),
///                         PlanWorkflowStepArgs.builder()
///                             .parallelConfigs(PlanWorkflowStepParallelConfigArgs.builder()
///                                 .steps(
///                                     PlanWorkflowStepParallelConfigStepArgs.builder()
///                                         .ec2AsgCapacityIncreaseConfigs(PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArgs.builder()
///                                             .asgs(PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArgs.builder()
///                                                 .arn(exampleAwsAutoscalingGroup.arn())
///                                                 .build())
///                                             .targetPercent(150)
///                                             .build())
///                                         .name("asg-scaling")
///                                         .executionBlockType("EC2AutoScaling")
///                                         .build(),
///                                     PlanWorkflowStepParallelConfigStepArgs.builder()
///                                         .ecsCapacityIncreaseConfigs(PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArgs.builder()
///                                             .services(PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArgs.builder()
///                                                 .clusterArn(exampleAwsEcsCluster.arn())
///                                                 .serviceArn(exampleAwsEcsService.arn())
///                                                 .build())
///                                             .targetPercent(200)
///                                             .build())
///                                         .name("ecs-scaling")
///                                         .executionBlockType("ECSServiceScaling")
///                                         .build())
///                                 .build())
///                             .name("parallel-step")
///                             .executionBlockType("Parallel")
///                             .build())
///                     .workflowTargetAction("activate")
///                     .workflowTargetRegion("us-west-2")
///                     .build(),
///                 PlanWorkflowArgs.builder()
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .route53HealthCheckConfigs(PlanWorkflowStepRoute53HealthCheckConfigArgs.builder()
///                             .hostedZoneId(exampleAwsRoute53Zone.zoneId())
///                             .recordName("api.example.com")
///                             .build())
///                         .name("route53-health-check")
///                         .executionBlockType("Route53HealthCheck")
///                         .build())
///                     .workflowTargetAction("deactivate")
///                     .workflowTargetRegion("us-east-1")
///                     .build())
///             .name("complex-plan")
///             .executionRole(exampleAwsIamRole.arn())
///             .recoveryApproach("activeActive")
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .description("Complex plan with multiple execution block types")
///             .recoveryTimeObjectiveMinutes(60)
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   complex:
///     type: aws:arcregionswitch:Plan
///     properties:
///       associatedAlarms:
///         - name: application-health-alarm
///           alarmType: applicationHealth
///           resourceIdentifier: arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm
///       triggers:
///         - conditions:
///             - associatedAlarmName: application-health-alarm
///               condition: red
///           action: activate
///           targetRegion: us-west-2
///           minDelayMinutesBetweenExecutions: 30
///       workflows:
///         - steps:
///             - customActionLambdaConfigs:
///                 - lambdas:
///                     - arn: ${example.arn}
///                   regionToRun: activatingRegion
///                   retryIntervalMinutes: 5
///                   timeoutMinutes: 30
///               name: lambda-step
///               executionBlockType: CustomActionLambda
///             - parallelConfigs:
///                 - steps:
///                     - ec2AsgCapacityIncreaseConfigs:
///                         - asgs:
///                             - arn: ${exampleAwsAutoscalingGroup.arn}
///                           targetPercent: 150
///                       name: asg-scaling
///                       executionBlockType: EC2AutoScaling
///                     - ecsCapacityIncreaseConfigs:
///                         - services:
///                             - clusterArn: ${exampleAwsEcsCluster.arn}
///                               serviceArn: ${exampleAwsEcsService.arn}
///                           targetPercent: 200
///                       name: ecs-scaling
///                       executionBlockType: ECSServiceScaling
///               name: parallel-step
///               executionBlockType: Parallel
///           workflowTargetAction: activate
///           workflowTargetRegion: us-west-2
///         - steps:
///             - route53HealthCheckConfigs:
///                 - hostedZoneId: ${exampleAwsRoute53Zone.zoneId}
///                   recordName: api.example.com
///               name: route53-health-check
///               executionBlockType: Route53HealthCheck
///           workflowTargetAction: deactivate
///           workflowTargetRegion: us-east-1
///       name: complex-plan
///       executionRole: ${exampleAwsIamRole.arn}
///       recoveryApproach: activeActive
///       regions:
///         - us-east-1
///         - us-west-2
///       description: Complex plan with multiple execution block types
///       recoveryTimeObjectiveMinutes: 60
///       tags:
///         Environment: production
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the ARC Region Switch Plan.
///
///
/// Using `pulumi import`, import Application Recovery Controller Region Switch Plan using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:arcregionswitch/plan:Plan example arn:aws:arcregionswitch:us-east-1:123456789012:plan/example-plan
/// ```
class Plan extends pulumi.CustomResource {
  /// ARN of the plan.
  late final pulumi.Output<String> arn;
  /// CloudWatch alarms associated with the plan. See `associatedAlarms` Block for details.
  late final pulumi.Output<List<PlanAssociatedAlarm>?> associatedAlarms;
  /// Description of the plan.
  late final pulumi.Output<String?> description;
  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  late final pulumi.Output<String> executionRole;
  /// Name of the plan. Must be unique within the account.
  late final pulumi.Output<String> name;
  /// Primary region for the plan.
  late final pulumi.Output<String?> primaryRegion;
  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  late final pulumi.Output<String> recoveryApproach;
  /// Recovery time objective in minutes.
  late final pulumi.Output<int?> recoveryTimeObjectiveMinutes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS regions involved in the plan. Must contain at least 2 regions.
  late final pulumi.Output<List<String>> regions;
  /// Configuration for automated execution reports. See `reportConfiguration` Block for details.
  late final pulumi.Output<List<PlanReportConfiguration>?> reportConfigurations;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PlanTimeouts?> timeouts;
  /// Triggers that can initiate the plan execution. See `triggers` Block for details.
  late final pulumi.Output<List<PlanTrigger>?> triggers;
  /// Workflows that define the steps to execute. See `workflow` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<PlanWorkflow>?> workflows;

  /// Creates a new [Plan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plan]. {@macro pulumi_arcregionswitch_plan_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arcregionswitch/plan:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    associatedAlarms = registerOutput<List<PlanAssociatedAlarm>?>('associatedAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAssociatedAlarm>(guardedValue, (value) => PlanAssociatedAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    primaryRegion = registerOutput<String?>('primaryRegion');
    recoveryApproach = registerOutput<String>('recoveryApproach');
    recoveryTimeObjectiveMinutes = registerOutput<int?>('recoveryTimeObjectiveMinutes');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reportConfigurations = registerOutput<List<PlanReportConfiguration>?>('reportConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanReportConfiguration>(guardedValue, (value) => PlanReportConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<PlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggers = registerOutput<List<PlanTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanTrigger>(guardedValue, (value) => PlanTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    workflows = registerOutput<List<PlanWorkflow>?>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanWorkflow>(guardedValue, (value) => PlanWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Plan] resource's state with the given [name] and [id].
  static Plan get(
    String name,
    pulumi.Input<String> id, {
    PlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Plan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Plan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arcregionswitch/plan:Plan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    associatedAlarms = registerOutput<List<PlanAssociatedAlarm>?>('associatedAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAssociatedAlarm>(guardedValue, (value) => PlanAssociatedAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    primaryRegion = registerOutput<String?>('primaryRegion');
    recoveryApproach = registerOutput<String>('recoveryApproach');
    recoveryTimeObjectiveMinutes = registerOutput<int?>('recoveryTimeObjectiveMinutes');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reportConfigurations = registerOutput<List<PlanReportConfiguration>?>('reportConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanReportConfiguration>(guardedValue, (value) => PlanReportConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<PlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggers = registerOutput<List<PlanTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanTrigger>(guardedValue, (value) => PlanTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    workflows = registerOutput<List<PlanWorkflow>?>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanWorkflow>(guardedValue, (value) => PlanWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Plan] resource.
  Plan.reference(String urn)
    : super(
        'aws:arcregionswitch/plan:Plan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    associatedAlarms = registerOutput<List<PlanAssociatedAlarm>?>('associatedAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanAssociatedAlarm>(guardedValue, (value) => PlanAssociatedAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    primaryRegion = registerOutput<String?>('primaryRegion');
    recoveryApproach = registerOutput<String>('recoveryApproach');
    recoveryTimeObjectiveMinutes = registerOutput<int?>('recoveryTimeObjectiveMinutes');
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reportConfigurations = registerOutput<List<PlanReportConfiguration>?>('reportConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanReportConfiguration>(guardedValue, (value) => PlanReportConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<PlanTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    triggers = registerOutput<List<PlanTrigger>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanTrigger>(guardedValue, (value) => PlanTrigger.fromMap((value as Map).cast<String, dynamic>())); });
    workflows = registerOutput<List<PlanWorkflow>?>('workflows', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanWorkflow>(guardedValue, (value) => PlanWorkflow.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
