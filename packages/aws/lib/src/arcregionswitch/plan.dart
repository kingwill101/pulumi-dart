import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_args.dart';
import 'plan_associated_alarm.dart';
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
///     name: "example-plan",
///     executionRole: example.arn,
///     recoveryApproach: "activePassive",
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     primaryRegion: "us-east-1",
///     workflows: [
///         {
///             workflowTargetAction: "activate",
///             workflowTargetRegion: "us-west-2",
///             steps: [{
///                 name: "manual-approval",
///                 executionBlockType: "ManualApproval",
///                 executionApprovalConfigs: [{
///                     approvalRole: example.arn,
///                     timeoutMinutes: 60,
///                 }],
///             }],
///         },
///         {
///             workflowTargetAction: "deactivate",
///             workflowTargetRegion: "us-east-1",
///             steps: [{
///                 name: "manual-approval",
///                 executionBlockType: "ManualApproval",
///                 executionApprovalConfigs: [{
///                     approvalRole: example.arn,
///                     timeoutMinutes: 60,
///                 }],
///             }],
///         },
///     ],
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
///     name="example-plan",
///     execution_role=example.arn,
///     recovery_approach="activePassive",
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     primary_region="us-east-1",
///     workflows=[
///         {
///             "workflow_target_action": "activate",
///             "workflow_target_region": "us-west-2",
///             "steps": [{
///                 "name": "manual-approval",
///                 "execution_block_type": "ManualApproval",
///                 "execution_approval_configs": [{
///                     "approval_role": example.arn,
///                     "timeout_minutes": 60,
///                 }],
///             }],
///         },
///         {
///             "workflow_target_action": "deactivate",
///             "workflow_target_region": "us-east-1",
///             "steps": [{
///                 "name": "manual-approval",
///                 "execution_block_type": "ManualApproval",
///                 "execution_approval_configs": [{
///                     "approval_role": example.arn,
///                     "timeout_minutes": 60,
///                 }],
///             }],
///         },
///     ])
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
///         Name = "example-plan",
///         ExecutionRole = example.Arn,
///         RecoveryApproach = "activePassive",
///         Regions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///         },
///         PrimaryRegion = "us-east-1",
///         Workflows = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 WorkflowTargetAction = "activate",
///                 WorkflowTargetRegion = "us-west-2",
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Name = "manual-approval",
///                         ExecutionBlockType = "ManualApproval",
///                         ExecutionApprovalConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepExecutionApprovalConfigArgs
///                             {
///                                 ApprovalRole = example.Arn,
///                                 TimeoutMinutes = 60,
///                             },
///                         },
///                     },
///                 },
///             },
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 WorkflowTargetAction = "deactivate",
///                 WorkflowTargetRegion = "us-east-1",
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Name = "manual-approval",
///                         ExecutionBlockType = "ManualApproval",
///                         ExecutionApprovalConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepExecutionApprovalConfigArgs
///                             {
///                                 ApprovalRole = example.Arn,
///                                 TimeoutMinutes = 60,
///                             },
///                         },
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
/// 					"Principal": map[string]interface{}{
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
/// 			Name:             pulumi.String("example-plan"),
/// 			ExecutionRole:    example.Arn,
/// 			RecoveryApproach: pulumi.String("activePassive"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			PrimaryRegion: pulumi.String("us-east-1"),
/// 			Workflows: arcregionswitch.PlanWorkflowArray{
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					WorkflowTargetAction: pulumi.String("activate"),
/// 					WorkflowTargetRegion: pulumi.String("us-west-2"),
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Name:               pulumi.String("manual-approval"),
/// 							ExecutionBlockType: pulumi.String("ManualApproval"),
/// 							ExecutionApprovalConfigs: arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArgs{
/// 									ApprovalRole:   example.Arn,
/// 									TimeoutMinutes: pulumi.Int(60),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					WorkflowTargetAction: pulumi.String("deactivate"),
/// 					WorkflowTargetRegion: pulumi.String("us-east-1"),
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Name:               pulumi.String("manual-approval"),
/// 							ExecutionBlockType: pulumi.String("ManualApproval"),
/// 							ExecutionApprovalConfigs: arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepExecutionApprovalConfigArgs{
/// 									ApprovalRole:   example.Arn,
/// 									TimeoutMinutes: pulumi.Int(60),
/// 								},
/// 							},
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
///             .name("example-plan")
///             .executionRole(example.arn())
///             .recoveryApproach("activePassive")
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .primaryRegion("us-east-1")
///             .workflows(
///                 PlanWorkflowArgs.builder()
///                     .workflowTargetAction("activate")
///                     .workflowTargetRegion("us-west-2")
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .name("manual-approval")
///                         .executionBlockType("ManualApproval")
///                         .executionApprovalConfigs(PlanWorkflowStepExecutionApprovalConfigArgs.builder()
///                             .approvalRole(example.arn())
///                             .timeoutMinutes(60)
///                             .build())
///                         .build())
///                     .build(),
///                 PlanWorkflowArgs.builder()
///                     .workflowTargetAction("deactivate")
///                     .workflowTargetRegion("us-east-1")
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .name("manual-approval")
///                         .executionBlockType("ManualApproval")
///                         .executionApprovalConfigs(PlanWorkflowStepExecutionApprovalConfigArgs.builder()
///                             .approvalRole(example.arn())
///                             .timeoutMinutes(60)
///                             .build())
///                         .build())
///                     .build())
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
///       name: example-plan
///       executionRole: ${example.arn}
///       recoveryApproach: activePassive
///       regions:
///         - us-east-1
///         - us-west-2
///       primaryRegion: us-east-1
///       workflows:
///         - workflowTargetAction: activate
///           workflowTargetRegion: us-west-2
///           steps:
///             - name: manual-approval
///               executionBlockType: ManualApproval
///               executionApprovalConfigs:
///                 - approvalRole: ${example.arn}
///                   timeoutMinutes: 60
///         - workflowTargetAction: deactivate
///           workflowTargetRegion: us-east-1
///           steps:
///             - name: manual-approval
///               executionBlockType: ManualApproval
///               executionApprovalConfigs:
///                 - approvalRole: ${example.arn}
///                   timeoutMinutes: 60
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
///     name: "complex-plan",
///     executionRole: exampleAwsIamRole.arn,
///     recoveryApproach: "activeActive",
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     description: "Complex plan with multiple execution block types",
///     recoveryTimeObjectiveMinutes: 60,
///     associatedAlarms: [{
///         name: "application-health-alarm",
///         alarmType: "applicationHealth",
///         resourceIdentifier: "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///     }],
///     workflows: [
///         {
///             workflowTargetAction: "activate",
///             workflowTargetRegion: "us-west-2",
///             steps: [
///                 {
///                     name: "lambda-step",
///                     executionBlockType: "CustomActionLambda",
///                     customActionLambdaConfigs: [{
///                         regionToRun: "activatingRegion",
///                         retryIntervalMinutes: 5,
///                         timeoutMinutes: 30,
///                         lambdas: [{
///                             arn: example.arn,
///                         }],
///                     }],
///                 },
///                 {
///                     name: "parallel-step",
///                     executionBlockType: "Parallel",
///                     parallelConfigs: [{
///                         steps: [
///                             {
///                                 name: "asg-scaling",
///                                 executionBlockType: "EC2AutoScaling",
///                                 ec2AsgCapacityIncreaseConfigs: [{
///                                     asgs: [{
///                                         arn: exampleAwsAutoscalingGroup.arn,
///                                     }],
///                                     targetPercent: 150,
///                                 }],
///                             },
///                             {
///                                 name: "ecs-scaling",
///                                 executionBlockType: "ECSServiceScaling",
///                                 ecsCapacityIncreaseConfigs: [{
///                                     services: [{
///                                         clusterArn: exampleAwsEcsCluster.arn,
///                                         serviceArn: exampleAwsEcsService.arn,
///                                     }],
///                                     targetPercent: 200,
///                                 }],
///                             },
///                         ],
///                     }],
///                 },
///             ],
///         },
///         {
///             workflowTargetAction: "deactivate",
///             workflowTargetRegion: "us-east-1",
///             steps: [{
///                 name: "route53-health-check",
///                 executionBlockType: "Route53HealthCheck",
///                 route53HealthCheckConfigs: [{
///                     hostedZoneId: exampleAwsRoute53Zone.zoneId,
///                     recordName: "api.example.com",
///                 }],
///             }],
///         },
///     ],
///     triggers: [{
///         action: "activate",
///         targetRegion: "us-west-2",
///         minDelayMinutesBetweenExecutions: 30,
///         conditions: [{
///             associatedAlarmName: "application-health-alarm",
///             condition: "red",
///         }],
///     }],
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
///     name="complex-plan",
///     execution_role=example_aws_iam_role["arn"],
///     recovery_approach="activeActive",
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     description="Complex plan with multiple execution block types",
///     recovery_time_objective_minutes=60,
///     associated_alarms=[{
///         "name": "application-health-alarm",
///         "alarm_type": "applicationHealth",
///         "resource_identifier": "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///     }],
///     workflows=[
///         {
///             "workflow_target_action": "activate",
///             "workflow_target_region": "us-west-2",
///             "steps": [
///                 {
///                     "name": "lambda-step",
///                     "execution_block_type": "CustomActionLambda",
///                     "custom_action_lambda_configs": [{
///                         "region_to_run": "activatingRegion",
///                         "retry_interval_minutes": 5,
///                         "timeout_minutes": 30,
///                         "lambdas": [{
///                             "arn": example["arn"],
///                         }],
///                     }],
///                 },
///                 {
///                     "name": "parallel-step",
///                     "execution_block_type": "Parallel",
///                     "parallel_configs": [{
///                         "steps": [
///                             {
///                                 "name": "asg-scaling",
///                                 "execution_block_type": "EC2AutoScaling",
///                                 "ec2_asg_capacity_increase_configs": [{
///                                     "asgs": [{
///                                         "arn": example_aws_autoscaling_group["arn"],
///                                     }],
///                                     "target_percent": 150,
///                                 }],
///                             },
///                             {
///                                 "name": "ecs-scaling",
///                                 "execution_block_type": "ECSServiceScaling",
///                                 "ecs_capacity_increase_configs": [{
///                                     "services": [{
///                                         "cluster_arn": example_aws_ecs_cluster["arn"],
///                                         "service_arn": example_aws_ecs_service["arn"],
///                                     }],
///                                     "target_percent": 200,
///                                 }],
///                             },
///                         ],
///                     }],
///                 },
///             ],
///         },
///         {
///             "workflow_target_action": "deactivate",
///             "workflow_target_region": "us-east-1",
///             "steps": [{
///                 "name": "route53-health-check",
///                 "execution_block_type": "Route53HealthCheck",
///                 "route53_health_check_configs": [{
///                     "hosted_zone_id": example_aws_route53_zone["zoneId"],
///                     "record_name": "api.example.com",
///                 }],
///             }],
///         },
///     ],
///     triggers=[{
///         "action": "activate",
///         "target_region": "us-west-2",
///         "min_delay_minutes_between_executions": 30,
///         "conditions": [{
///             "associated_alarm_name": "application-health-alarm",
///             "condition": "red",
///         }],
///     }],
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
///         AssociatedAlarms = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanAssociatedAlarmArgs
///             {
///                 Name = "application-health-alarm",
///                 AlarmType = "applicationHealth",
///                 ResourceIdentifier = "arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm",
///             },
///         },
///         Workflows = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 WorkflowTargetAction = "activate",
///                 WorkflowTargetRegion = "us-west-2",
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Name = "lambda-step",
///                         ExecutionBlockType = "CustomActionLambda",
///                         CustomActionLambdaConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepCustomActionLambdaConfigArgs
///                             {
///                                 RegionToRun = "activatingRegion",
///                                 RetryIntervalMinutes = 5,
///                                 TimeoutMinutes = 30,
///                                 Lambdas = new[]
///                                 {
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepCustomActionLambdaConfigLambdaArgs
///                                     {
///                                         Arn = example.Arn,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Name = "parallel-step",
///                         ExecutionBlockType = "Parallel",
///                         ParallelConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigArgs
///                             {
///                                 Steps = new[]
///                                 {
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepArgs
///                                     {
///                                         Name = "asg-scaling",
///                                         ExecutionBlockType = "EC2AutoScaling",
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
///                                     },
///                                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepParallelConfigStepArgs
///                                     {
///                                         Name = "ecs-scaling",
///                                         ExecutionBlockType = "ECSServiceScaling",
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
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowArgs
///             {
///                 WorkflowTargetAction = "deactivate",
///                 WorkflowTargetRegion = "us-east-1",
///                 Steps = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepArgs
///                     {
///                         Name = "route53-health-check",
///                         ExecutionBlockType = "Route53HealthCheck",
///                         Route53HealthCheckConfigs = new[]
///                         {
///                             new Aws.ArcRegionSwitch.Inputs.PlanWorkflowStepRoute53HealthCheckConfigArgs
///                             {
///                                 HostedZoneId = exampleAwsRoute53Zone.ZoneId,
///                                 RecordName = "api.example.com",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Triggers = new[]
///         {
///             new Aws.ArcRegionSwitch.Inputs.PlanTriggerArgs
///             {
///                 Action = "activate",
///                 TargetRegion = "us-west-2",
///                 MinDelayMinutesBetweenExecutions = 30,
///                 Conditions = new[]
///                 {
///                     new Aws.ArcRegionSwitch.Inputs.PlanTriggerConditionArgs
///                     {
///                         AssociatedAlarmName = "application-health-alarm",
///                         Condition = "red",
///                     },
///                 },
///             },
///         },
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
/// 			Name:             pulumi.String("complex-plan"),
/// 			ExecutionRole:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			RecoveryApproach: pulumi.String("activeActive"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			Description:                  pulumi.String("Complex plan with multiple execution block types"),
/// 			RecoveryTimeObjectiveMinutes: pulumi.Int(60),
/// 			AssociatedAlarms: arcregionswitch.PlanAssociatedAlarmArray{
/// 				&arcregionswitch.PlanAssociatedAlarmArgs{
/// 					Name:               "application-health-alarm",
/// 					AlarmType:          pulumi.String("applicationHealth"),
/// 					ResourceIdentifier: pulumi.String("arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm"),
/// 				},
/// 			},
/// 			Workflows: arcregionswitch.PlanWorkflowArray{
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					WorkflowTargetAction: pulumi.String("activate"),
/// 					WorkflowTargetRegion: pulumi.String("us-west-2"),
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Name:               pulumi.String("lambda-step"),
/// 							ExecutionBlockType: pulumi.String("CustomActionLambda"),
/// 							CustomActionLambdaConfigs: arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigArgs{
/// 									RegionToRun:          pulumi.String("activatingRegion"),
/// 									RetryIntervalMinutes: pulumi.Float64(5),
/// 									TimeoutMinutes:       pulumi.Int(30),
/// 									Lambdas: arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigLambdaArray{
/// 										&arcregionswitch.PlanWorkflowStepCustomActionLambdaConfigLambdaArgs{
/// 											Arn: pulumi.Any(example.Arn),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Name:               pulumi.String("parallel-step"),
/// 							ExecutionBlockType: pulumi.String("Parallel"),
/// 							ParallelConfigs: arcregionswitch.PlanWorkflowStepParallelConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepParallelConfigArgs{
/// 									Steps: arcregionswitch.PlanWorkflowStepParallelConfigStepArray{
/// 										&arcregionswitch.PlanWorkflowStepParallelConfigStepArgs{
/// 											Name:               pulumi.String("asg-scaling"),
/// 											ExecutionBlockType: pulumi.String("EC2AutoScaling"),
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
/// 										},
/// 										&arcregionswitch.PlanWorkflowStepParallelConfigStepArgs{
/// 											Name:               pulumi.String("ecs-scaling"),
/// 											ExecutionBlockType: pulumi.String("ECSServiceScaling"),
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
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&arcregionswitch.PlanWorkflowArgs{
/// 					WorkflowTargetAction: pulumi.String("deactivate"),
/// 					WorkflowTargetRegion: pulumi.String("us-east-1"),
/// 					Steps: arcregionswitch.PlanWorkflowStepArray{
/// 						&arcregionswitch.PlanWorkflowStepArgs{
/// 							Name:               pulumi.String("route53-health-check"),
/// 							ExecutionBlockType: pulumi.String("Route53HealthCheck"),
/// 							Route53HealthCheckConfigs: arcregionswitch.PlanWorkflowStepRoute53HealthCheckConfigArray{
/// 								&arcregionswitch.PlanWorkflowStepRoute53HealthCheckConfigArgs{
/// 									HostedZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 									RecordName:   pulumi.String("api.example.com"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Triggers: arcregionswitch.PlanTriggerArray{
/// 				&arcregionswitch.PlanTriggerArgs{
/// 					Action:                           pulumi.String("activate"),
/// 					TargetRegion:                     pulumi.String("us-west-2"),
/// 					MinDelayMinutesBetweenExecutions: pulumi.Int(30),
/// 					Conditions: arcregionswitch.PlanTriggerConditionArray{
/// 						&arcregionswitch.PlanTriggerConditionArgs{
/// 							AssociatedAlarmName: pulumi.String("application-health-alarm"),
/// 							Condition:           pulumi.String("red"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.arcregionswitch.Plan;
/// import com.pulumi.aws.arcregionswitch.PlanArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanAssociatedAlarmArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanWorkflowArgs;
/// import com.pulumi.aws.arcregionswitch.inputs.PlanTriggerArgs;
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
///         var complex = new Plan("complex", PlanArgs.builder()
///             .name("complex-plan")
///             .executionRole(exampleAwsIamRole.arn())
///             .recoveryApproach("activeActive")
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .description("Complex plan with multiple execution block types")
///             .recoveryTimeObjectiveMinutes(60)
///             .associatedAlarms(PlanAssociatedAlarmArgs.builder()
///                 .name("application-health-alarm")
///                 .alarmType("applicationHealth")
///                 .resourceIdentifier("arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm")
///                 .build())
///             .workflows(
///                 PlanWorkflowArgs.builder()
///                     .workflowTargetAction("activate")
///                     .workflowTargetRegion("us-west-2")
///                     .steps(
///                         PlanWorkflowStepArgs.builder()
///                             .name("lambda-step")
///                             .executionBlockType("CustomActionLambda")
///                             .customActionLambdaConfigs(PlanWorkflowStepCustomActionLambdaConfigArgs.builder()
///                                 .regionToRun("activatingRegion")
///                                 .retryIntervalMinutes(5.0)
///                                 .timeoutMinutes(30)
///                                 .lambdas(PlanWorkflowStepCustomActionLambdaConfigLambdaArgs.builder()
///                                     .arn(example.arn())
///                                     .build())
///                                 .build())
///                             .build(),
///                         PlanWorkflowStepArgs.builder()
///                             .name("parallel-step")
///                             .executionBlockType("Parallel")
///                             .parallelConfigs(PlanWorkflowStepParallelConfigArgs.builder()
///                                 .steps(
///                                     PlanWorkflowStepParallelConfigStepArgs.builder()
///                                         .name("asg-scaling")
///                                         .executionBlockType("EC2AutoScaling")
///                                         .ec2AsgCapacityIncreaseConfigs(PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigArgs.builder()
///                                             .asgs(PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsgArgs.builder()
///                                                 .arn(exampleAwsAutoscalingGroup.arn())
///                                                 .build())
///                                             .targetPercent(150)
///                                             .build())
///                                         .build(),
///                                     PlanWorkflowStepParallelConfigStepArgs.builder()
///                                         .name("ecs-scaling")
///                                         .executionBlockType("ECSServiceScaling")
///                                         .ecsCapacityIncreaseConfigs(PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigArgs.builder()
///                                             .services(PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigServiceArgs.builder()
///                                                 .clusterArn(exampleAwsEcsCluster.arn())
///                                                 .serviceArn(exampleAwsEcsService.arn())
///                                                 .build())
///                                             .targetPercent(200)
///                                             .build())
///                                         .build())
///                                 .build())
///                             .build())
///                     .build(),
///                 PlanWorkflowArgs.builder()
///                     .workflowTargetAction("deactivate")
///                     .workflowTargetRegion("us-east-1")
///                     .steps(PlanWorkflowStepArgs.builder()
///                         .name("route53-health-check")
///                         .executionBlockType("Route53HealthCheck")
///                         .route53HealthCheckConfigs(PlanWorkflowStepRoute53HealthCheckConfigArgs.builder()
///                             .hostedZoneId(exampleAwsRoute53Zone.zoneId())
///                             .recordName("api.example.com")
///                             .build())
///                         .build())
///                     .build())
///             .triggers(PlanTriggerArgs.builder()
///                 .action("activate")
///                 .targetRegion("us-west-2")
///                 .minDelayMinutesBetweenExecutions(30)
///                 .conditions(PlanTriggerConditionArgs.builder()
///                     .associatedAlarmName("application-health-alarm")
///                     .condition("red")
///                     .build())
///                 .build())
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
///       name: complex-plan
///       executionRole: ${exampleAwsIamRole.arn}
///       recoveryApproach: activeActive
///       regions:
///         - us-east-1
///         - us-west-2
///       description: Complex plan with multiple execution block types
///       recoveryTimeObjectiveMinutes: 60
///       associatedAlarms:
///         - name: application-health-alarm
///           alarmType: applicationHealth
///           resourceIdentifier: arn:aws:cloudwatch:us-east-1:123456789012:alarm:MyAlarm
///       workflows:
///         - workflowTargetAction: activate
///           workflowTargetRegion: us-west-2
///           steps:
///             - name: lambda-step
///               executionBlockType: CustomActionLambda
///               customActionLambdaConfigs:
///                 - regionToRun: activatingRegion
///                   retryIntervalMinutes: 5
///                   timeoutMinutes: 30
///                   lambdas:
///                     - arn: ${example.arn}
///             - name: parallel-step
///               executionBlockType: Parallel
///               parallelConfigs:
///                 - steps:
///                     - name: asg-scaling
///                       executionBlockType: EC2AutoScaling
///                       ec2AsgCapacityIncreaseConfigs:
///                         - asgs:
///                             - arn: ${exampleAwsAutoscalingGroup.arn}
///                           targetPercent: 150
///                     - name: ecs-scaling
///                       executionBlockType: ECSServiceScaling
///                       ecsCapacityIncreaseConfigs:
///                         - services:
///                             - clusterArn: ${exampleAwsEcsCluster.arn}
///                               serviceArn: ${exampleAwsEcsService.arn}
///                           targetPercent: 200
///         - workflowTargetAction: deactivate
///           workflowTargetRegion: us-east-1
///           steps:
///             - name: route53-health-check
///               executionBlockType: Route53HealthCheck
///               route53HealthCheckConfigs:
///                 - hostedZoneId: ${exampleAwsRoute53Zone.zoneId}
///                   recordName: api.example.com
///       triggers:
///         - action: activate
///           targetRegion: us-west-2
///           minDelayMinutesBetweenExecutions: 30
///           conditions:
///             - associatedAlarmName: application-health-alarm
///               condition: red
///       tags:
///         Environment: production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Application Recovery Controller Region Switch Plan using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:arcregionswitch/plan:Plan example arn:aws:arcregionswitch:us-east-1:123456789012:plan/example-plan
/// ```
class Plan extends pulumi.CustomResource {
  /// ARN of the plan.
  late final pulumi.Output<String> arn;
  /// Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
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
  /// List of AWS regions involved in the plan.
  late final pulumi.Output<List<String>> regions;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PlanTimeouts?> timeouts;
  /// Set of triggers that can initiate the plan execution. See Triggers below.
  late final pulumi.Output<List<PlanTrigger>?> triggers;
  /// List of workflows that define the steps to execute. See Workflow below.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associatedAlarms = registerOutput<List<PlanAssociatedAlarm>?>('associatedAlarms');
    this.description = registerOutput<String?>('description');
    this.executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    this.primaryRegion = registerOutput<String?>('primaryRegion');
    this.recoveryApproach = registerOutput<String>('recoveryApproach');
    this.recoveryTimeObjectiveMinutes = registerOutput<int?>('recoveryTimeObjectiveMinutes');
    this.region = registerOutput<String>('region');
    this.regions = registerOutput<List<String>>('regions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PlanTimeouts?>('timeouts');
    this.triggers = registerOutput<List<PlanTrigger>?>('triggers');
    this.workflows = registerOutput<List<PlanWorkflow>?>('workflows');
  }
}
