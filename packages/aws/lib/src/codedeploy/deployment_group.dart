import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_alarm_configuration.dart';
import 'deployment_group_args.dart';
import 'deployment_group_auto_rollback_configuration.dart';
import 'deployment_group_blue_green_deployment_config.dart';
import 'deployment_group_deployment_style.dart';
import 'deployment_group_ec2_tag_filter.dart';
import 'deployment_group_ec2_tag_set.dart';
import 'deployment_group_ecs_service.dart';
import 'deployment_group_load_balancer_info.dart';
import 'deployment_group_on_premises_instance_tag_filter.dart';
import 'deployment_group_trigger_configuration.dart';

/// Provides a CodeDeploy Deployment Group for a CodeDeploy Application
///
/// > **NOTE on blue/green deployments:** When using `green_fleet_provisioning_option` with the `COPY_AUTO_SCALING_GROUP` action, CodeDeploy will create a new ASG with a different name. This ASG is _not_ managed by this provider and will conflict with existing configuration and state. You may want to use a different approach to managing deployments that involve multiple ASG, such as `DISCOVER_EXISTING` with separate blue and green ASG.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["codedeploy.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "example-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const aWSCodeDeployRole = new aws.iam.RolePolicyAttachment("AWSCodeDeployRole", {
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole",
///     role: example.name,
/// });
/// const exampleApplication = new aws.codedeploy.Application("example", {name: "example-app"});
/// const exampleTopic = new aws.sns.Topic("example", {name: "example-topic"});
/// const exampleDeploymentGroup = new aws.codedeploy.DeploymentGroup("example", {
///     appName: exampleApplication.name,
///     deploymentGroupName: "example-group",
///     serviceRoleArn: example.arn,
///     ec2TagSets: [{
///         ec2TagFilters: [
///             {
///                 key: "filterkey1",
///                 type: "KEY_AND_VALUE",
///                 value: "filtervalue",
///             },
///             {
///                 key: "filterkey2",
///                 type: "KEY_AND_VALUE",
///                 value: "filtervalue",
///             },
///         ],
///     }],
///     triggerConfigurations: [{
///         triggerEvents: ["DeploymentFailure"],
///         triggerName: "example-trigger",
///         triggerTargetArn: exampleTopic.arn,
///     }],
///     autoRollbackConfiguration: {
///         enabled: true,
///         events: ["DEPLOYMENT_FAILURE"],
///     },
///     alarmConfiguration: {
///         alarms: ["my-alarm-name"],
///         enabled: true,
///     },
///     outdatedInstancesStrategy: "UPDATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["codedeploy.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     name="example-role",
///     assume_role_policy=assume_role.json)
/// a_ws_code_deploy_role = aws.iam.RolePolicyAttachment("AWSCodeDeployRole",
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole",
///     role=example.name)
/// example_application = aws.codedeploy.Application("example", name="example-app")
/// example_topic = aws.sns.Topic("example", name="example-topic")
/// example_deployment_group = aws.codedeploy.DeploymentGroup("example",
///     app_name=example_application.name,
///     deployment_group_name="example-group",
///     service_role_arn=example.arn,
///     ec2_tag_sets=[{
///         "ec2_tag_filters": [
///             {
///                 "key": "filterkey1",
///                 "type": "KEY_AND_VALUE",
///                 "value": "filtervalue",
///             },
///             {
///                 "key": "filterkey2",
///                 "type": "KEY_AND_VALUE",
///                 "value": "filtervalue",
///             },
///         ],
///     }],
///     trigger_configurations=[{
///         "trigger_events": ["DeploymentFailure"],
///         "trigger_name": "example-trigger",
///         "trigger_target_arn": example_topic.arn,
///     }],
///     auto_rollback_configuration={
///         "enabled": True,
///         "events": ["DEPLOYMENT_FAILURE"],
///     },
///     alarm_configuration={
///         "alarms": ["my-alarm-name"],
///         "enabled": True,
///     },
///     outdated_instances_strategy="UPDATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "codedeploy.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var aWSCodeDeployRole = new Aws.Iam.RolePolicyAttachment("AWSCodeDeployRole", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole",
///         Role = example.Name,
///     });
///
///     var exampleApplication = new Aws.CodeDeploy.Application("example", new()
///     {
///         Name = "example-app",
///     });
///
///     var exampleTopic = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("example", new()
///     {
///         AppName = exampleApplication.Name,
///         DeploymentGroupName = "example-group",
///         ServiceRoleArn = example.Arn,
///         Ec2TagSets = new[]
///         {
///             new Aws.CodeDeploy.Inputs.DeploymentGroupEc2TagSetArgs
///             {
///                 Ec2TagFilters = new[]
///                 {
///                     new Aws.CodeDeploy.Inputs.DeploymentGroupEc2TagSetEc2TagFilterArgs
///                     {
///                         Key = "filterkey1",
///                         Type = "KEY_AND_VALUE",
///                         Value = "filtervalue",
///                     },
///                     new Aws.CodeDeploy.Inputs.DeploymentGroupEc2TagSetEc2TagFilterArgs
///                     {
///                         Key = "filterkey2",
///                         Type = "KEY_AND_VALUE",
///                         Value = "filtervalue",
///                     },
///                 },
///             },
///         },
///         TriggerConfigurations = new[]
///         {
///             new Aws.CodeDeploy.Inputs.DeploymentGroupTriggerConfigurationArgs
///             {
///                 TriggerEvents = new[]
///                 {
///                     "DeploymentFailure",
///                 },
///                 TriggerName = "example-trigger",
///                 TriggerTargetArn = exampleTopic.Arn,
///             },
///         },
///         AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
///         {
///             Enabled = true,
///             Events = new[]
///             {
///                 "DEPLOYMENT_FAILURE",
///             },
///         },
///         AlarmConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAlarmConfigurationArgs
///         {
///             Alarms = new[]
///             {
///                 "my-alarm-name",
///             },
///             Enabled = true,
///         },
///         OutdatedInstancesStrategy = "UPDATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"codedeploy.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "AWSCodeDeployRole", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := codedeploy.NewApplication(ctx, "example", &codedeploy.ApplicationArgs{
/// 			Name: pulumi.String("example-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codedeploy.NewDeploymentGroup(ctx, "example", &codedeploy.DeploymentGroupArgs{
/// 			AppName:             exampleApplication.Name,
/// 			DeploymentGroupName: pulumi.String("example-group"),
/// 			ServiceRoleArn:      example.Arn,
/// 			Ec2TagSets: codedeploy.DeploymentGroupEc2TagSetArray{
/// 				&codedeploy.DeploymentGroupEc2TagSetArgs{
/// 					Ec2TagFilters: codedeploy.DeploymentGroupEc2TagSetEc2TagFilterArray{
/// 						&codedeploy.DeploymentGroupEc2TagSetEc2TagFilterArgs{
/// 							Key:   pulumi.String("filterkey1"),
/// 							Type:  pulumi.String("KEY_AND_VALUE"),
/// 							Value: pulumi.String("filtervalue"),
/// 						},
/// 						&codedeploy.DeploymentGroupEc2TagSetEc2TagFilterArgs{
/// 							Key:   pulumi.String("filterkey2"),
/// 							Type:  pulumi.String("KEY_AND_VALUE"),
/// 							Value: pulumi.String("filtervalue"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TriggerConfigurations: codedeploy.DeploymentGroupTriggerConfigurationArray{
/// 				&codedeploy.DeploymentGroupTriggerConfigurationArgs{
/// 					TriggerEvents: pulumi.StringArray{
/// 						pulumi.String("DeploymentFailure"),
/// 					},
/// 					TriggerName:      pulumi.String("example-trigger"),
/// 					TriggerTargetArn: exampleTopic.Arn,
/// 				},
/// 			},
/// 			AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("DEPLOYMENT_FAILURE"),
/// 				},
/// 			},
/// 			AlarmConfiguration: &codedeploy.DeploymentGroupAlarmConfigurationArgs{
/// 				Alarms: pulumi.StringArray{
/// 					pulumi.String("my-alarm-name"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			OutdatedInstancesStrategy: pulumi.String("UPDATE"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.codedeploy.Application;
/// import com.pulumi.aws.codedeploy.ApplicationArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.codedeploy.DeploymentGroup;
/// import com.pulumi.aws.codedeploy.DeploymentGroupArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupEc2TagSetArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupTriggerConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAlarmConfigurationArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("codedeploy.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var aWSCodeDeployRole = new RolePolicyAttachment("aWSCodeDeployRole", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole")
///             .role(example.name())
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-app")
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleDeploymentGroup = new DeploymentGroup("exampleDeploymentGroup", DeploymentGroupArgs.builder()
///             .appName(exampleApplication.name())
///             .deploymentGroupName("example-group")
///             .serviceRoleArn(example.arn())
///             .ec2TagSets(DeploymentGroupEc2TagSetArgs.builder()
///                 .ec2TagFilters(
///                     DeploymentGroupEc2TagSetEc2TagFilterArgs.builder()
///                         .key("filterkey1")
///                         .type("KEY_AND_VALUE")
///                         .value("filtervalue")
///                         .build(),
///                     DeploymentGroupEc2TagSetEc2TagFilterArgs.builder()
///                         .key("filterkey2")
///                         .type("KEY_AND_VALUE")
///                         .value("filtervalue")
///                         .build())
///                 .build())
///             .triggerConfigurations(DeploymentGroupTriggerConfigurationArgs.builder()
///                 .triggerEvents("DeploymentFailure")
///                 .triggerName("example-trigger")
///                 .triggerTargetArn(exampleTopic.arn())
///                 .build())
///             .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
///                 .enabled(true)
///                 .events("DEPLOYMENT_FAILURE")
///                 .build())
///             .alarmConfiguration(DeploymentGroupAlarmConfigurationArgs.builder()
///                 .alarms("my-alarm-name")
///                 .enabled(true)
///                 .build())
///             .outdatedInstancesStrategy("UPDATE")
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
///       name: example-role
///       assumeRolePolicy: ${assumeRole.json}
///   aWSCodeDeployRole:
///     type: aws:iam:RolePolicyAttachment
///     name: AWSCodeDeployRole
///     properties:
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole
///       role: ${example.name}
///   exampleApplication:
///     type: aws:codedeploy:Application
///     name: example
///     properties:
///       name: example-app
///   exampleTopic:
///     type: aws:sns:Topic
///     name: example
///     properties:
///       name: example-topic
///   exampleDeploymentGroup:
///     type: aws:codedeploy:DeploymentGroup
///     name: example
///     properties:
///       appName: ${exampleApplication.name}
///       deploymentGroupName: example-group
///       serviceRoleArn: ${example.arn}
///       ec2TagSets:
///         - ec2TagFilters:
///             - key: filterkey1
///               type: KEY_AND_VALUE
///               value: filtervalue
///             - key: filterkey2
///               type: KEY_AND_VALUE
///               value: filtervalue
///       triggerConfigurations:
///         - triggerEvents:
///             - DeploymentFailure
///           triggerName: example-trigger
///           triggerTargetArn: ${exampleTopic.arn}
///       autoRollbackConfiguration:
///         enabled: true
///         events:
///           - DEPLOYMENT_FAILURE
///       alarmConfiguration:
///         alarms:
///           - my-alarm-name
///         enabled: true
///       outdatedInstancesStrategy: UPDATE
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - codedeploy.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Blue Green Deployments with ECS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codedeploy.Application("example", {
///     computePlatform: "ECS",
///     name: "example",
/// });
/// const exampleDeploymentGroup = new aws.codedeploy.DeploymentGroup("example", {
///     appName: example.name,
///     deploymentConfigName: "CodeDeployDefault.ECSAllAtOnce",
///     deploymentGroupName: "example",
///     serviceRoleArn: exampleAwsIamRole.arn,
///     autoRollbackConfiguration: {
///         enabled: true,
///         events: ["DEPLOYMENT_FAILURE"],
///     },
///     blueGreenDeploymentConfig: {
///         deploymentReadyOption: {
///             actionOnTimeout: "CONTINUE_DEPLOYMENT",
///         },
///         terminateBlueInstancesOnDeploymentSuccess: {
///             action: "TERMINATE",
///             terminationWaitTimeInMinutes: 5,
///         },
///     },
///     deploymentStyle: {
///         deploymentOption: "WITH_TRAFFIC_CONTROL",
///         deploymentType: "BLUE_GREEN",
///     },
///     ecsService: {
///         clusterName: exampleAwsEcsCluster.name,
///         serviceName: exampleAwsEcsService.name,
///     },
///     loadBalancerInfo: {
///         targetGroupPairInfo: {
///             prodTrafficRoute: {
///                 listenerArns: [exampleAwsLbListener.arn],
///             },
///             targetGroups: [
///                 {
///                     name: blue.name,
///                 },
///                 {
///                     name: green.name,
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codedeploy.Application("example",
///     compute_platform="ECS",
///     name="example")
/// example_deployment_group = aws.codedeploy.DeploymentGroup("example",
///     app_name=example.name,
///     deployment_config_name="CodeDeployDefault.ECSAllAtOnce",
///     deployment_group_name="example",
///     service_role_arn=example_aws_iam_role["arn"],
///     auto_rollback_configuration={
///         "enabled": True,
///         "events": ["DEPLOYMENT_FAILURE"],
///     },
///     blue_green_deployment_config={
///         "deployment_ready_option": {
///             "action_on_timeout": "CONTINUE_DEPLOYMENT",
///         },
///         "terminate_blue_instances_on_deployment_success": {
///             "action": "TERMINATE",
///             "termination_wait_time_in_minutes": 5,
///         },
///     },
///     deployment_style={
///         "deployment_option": "WITH_TRAFFIC_CONTROL",
///         "deployment_type": "BLUE_GREEN",
///     },
///     ecs_service={
///         "cluster_name": example_aws_ecs_cluster["name"],
///         "service_name": example_aws_ecs_service["name"],
///     },
///     load_balancer_info={
///         "target_group_pair_info": {
///             "prod_traffic_route": {
///                 "listener_arns": [example_aws_lb_listener["arn"]],
///             },
///             "target_groups": [
///                 {
///                     "name": blue["name"],
///                 },
///                 {
///                     "name": green["name"],
///                 },
///             ],
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
///     var example = new Aws.CodeDeploy.Application("example", new()
///     {
///         ComputePlatform = "ECS",
///         Name = "example",
///     });
///
///     var exampleDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("example", new()
///     {
///         AppName = example.Name,
///         DeploymentConfigName = "CodeDeployDefault.ECSAllAtOnce",
///         DeploymentGroupName = "example",
///         ServiceRoleArn = exampleAwsIamRole.Arn,
///         AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
///         {
///             Enabled = true,
///             Events = new[]
///             {
///                 "DEPLOYMENT_FAILURE",
///             },
///         },
///         BlueGreenDeploymentConfig = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigArgs
///         {
///             DeploymentReadyOption = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs
///             {
///                 ActionOnTimeout = "CONTINUE_DEPLOYMENT",
///             },
///             TerminateBlueInstancesOnDeploymentSuccess = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs
///             {
///                 Action = "TERMINATE",
///                 TerminationWaitTimeInMinutes = 5,
///             },
///         },
///         DeploymentStyle = new Aws.CodeDeploy.Inputs.DeploymentGroupDeploymentStyleArgs
///         {
///             DeploymentOption = "WITH_TRAFFIC_CONTROL",
///             DeploymentType = "BLUE_GREEN",
///         },
///         EcsService = new Aws.CodeDeploy.Inputs.DeploymentGroupEcsServiceArgs
///         {
///             ClusterName = exampleAwsEcsCluster.Name,
///             ServiceName = exampleAwsEcsService.Name,
///         },
///         LoadBalancerInfo = new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoArgs
///         {
///             TargetGroupPairInfo = new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoArgs
///             {
///                 ProdTrafficRoute = new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRouteArgs
///                 {
///                     ListenerArns = new[]
///                     {
///                         exampleAwsLbListener.Arn,
///                     },
///                 },
///                 TargetGroups = new[]
///                 {
///                     new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs
///                     {
///                         Name = blue.Name,
///                     },
///                     new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs
///                     {
///                         Name = green.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codedeploy.NewApplication(ctx, "example", &codedeploy.ApplicationArgs{
/// 			ComputePlatform: pulumi.String("ECS"),
/// 			Name:            pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codedeploy.NewDeploymentGroup(ctx, "example", &codedeploy.DeploymentGroupArgs{
/// 			AppName:              example.Name,
/// 			DeploymentConfigName: pulumi.String("CodeDeployDefault.ECSAllAtOnce"),
/// 			DeploymentGroupName:  pulumi.String("example"),
/// 			ServiceRoleArn:       pulumi.Any(exampleAwsIamRole.Arn),
/// 			AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("DEPLOYMENT_FAILURE"),
/// 				},
/// 			},
/// 			BlueGreenDeploymentConfig: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigArgs{
/// 				DeploymentReadyOption: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs{
/// 					ActionOnTimeout: pulumi.String("CONTINUE_DEPLOYMENT"),
/// 				},
/// 				TerminateBlueInstancesOnDeploymentSuccess: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs{
/// 					Action:                       pulumi.String("TERMINATE"),
/// 					TerminationWaitTimeInMinutes: pulumi.Int(5),
/// 				},
/// 			},
/// 			DeploymentStyle: &codedeploy.DeploymentGroupDeploymentStyleArgs{
/// 				DeploymentOption: pulumi.String("WITH_TRAFFIC_CONTROL"),
/// 				DeploymentType:   pulumi.String("BLUE_GREEN"),
/// 			},
/// 			EcsService: &codedeploy.DeploymentGroupEcsServiceArgs{
/// 				ClusterName: pulumi.Any(exampleAwsEcsCluster.Name),
/// 				ServiceName: pulumi.Any(exampleAwsEcsService.Name),
/// 			},
/// 			LoadBalancerInfo: &codedeploy.DeploymentGroupLoadBalancerInfoArgs{
/// 				TargetGroupPairInfo: &codedeploy.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoArgs{
/// 					ProdTrafficRoute: &codedeploy.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRouteArgs{
/// 						ListenerArns: pulumi.StringArray{
/// 							exampleAwsLbListener.Arn,
/// 						},
/// 					},
/// 					TargetGroups: codedeploy.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArray{
/// 						&codedeploy.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs{
/// 							Name: pulumi.Any(blue.Name),
/// 						},
/// 						&codedeploy.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs{
/// 							Name: pulumi.Any(green.Name),
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
/// import com.pulumi.aws.codedeploy.Application;
/// import com.pulumi.aws.codedeploy.ApplicationArgs;
/// import com.pulumi.aws.codedeploy.DeploymentGroup;
/// import com.pulumi.aws.codedeploy.DeploymentGroupArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupDeploymentStyleArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupEcsServiceArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupLoadBalancerInfoArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRouteArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .computePlatform("ECS")
///             .name("example")
///             .build());
///
///         var exampleDeploymentGroup = new DeploymentGroup("exampleDeploymentGroup", DeploymentGroupArgs.builder()
///             .appName(example.name())
///             .deploymentConfigName("CodeDeployDefault.ECSAllAtOnce")
///             .deploymentGroupName("example")
///             .serviceRoleArn(exampleAwsIamRole.arn())
///             .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
///                 .enabled(true)
///                 .events("DEPLOYMENT_FAILURE")
///                 .build())
///             .blueGreenDeploymentConfig(DeploymentGroupBlueGreenDeploymentConfigArgs.builder()
///                 .deploymentReadyOption(DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs.builder()
///                     .actionOnTimeout("CONTINUE_DEPLOYMENT")
///                     .build())
///                 .terminateBlueInstancesOnDeploymentSuccess(DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs.builder()
///                     .action("TERMINATE")
///                     .terminationWaitTimeInMinutes(5)
///                     .build())
///                 .build())
///             .deploymentStyle(DeploymentGroupDeploymentStyleArgs.builder()
///                 .deploymentOption("WITH_TRAFFIC_CONTROL")
///                 .deploymentType("BLUE_GREEN")
///                 .build())
///             .ecsService(DeploymentGroupEcsServiceArgs.builder()
///                 .clusterName(exampleAwsEcsCluster.name())
///                 .serviceName(exampleAwsEcsService.name())
///                 .build())
///             .loadBalancerInfo(DeploymentGroupLoadBalancerInfoArgs.builder()
///                 .targetGroupPairInfo(DeploymentGroupLoadBalancerInfoTargetGroupPairInfoArgs.builder()
///                     .prodTrafficRoute(DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRouteArgs.builder()
///                         .listenerArns(exampleAwsLbListener.arn())
///                         .build())
///                     .targetGroups(
///                         DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs.builder()
///                             .name(blue.name())
///                             .build(),
///                         DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroupArgs.builder()
///                             .name(green.name())
///                             .build())
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
///     type: aws:codedeploy:Application
///     properties:
///       computePlatform: ECS
///       name: example
///   exampleDeploymentGroup:
///     type: aws:codedeploy:DeploymentGroup
///     name: example
///     properties:
///       appName: ${example.name}
///       deploymentConfigName: CodeDeployDefault.ECSAllAtOnce
///       deploymentGroupName: example
///       serviceRoleArn: ${exampleAwsIamRole.arn}
///       autoRollbackConfiguration:
///         enabled: true
///         events:
///           - DEPLOYMENT_FAILURE
///       blueGreenDeploymentConfig:
///         deploymentReadyOption:
///           actionOnTimeout: CONTINUE_DEPLOYMENT
///         terminateBlueInstancesOnDeploymentSuccess:
///           action: TERMINATE
///           terminationWaitTimeInMinutes: 5
///       deploymentStyle:
///         deploymentOption: WITH_TRAFFIC_CONTROL
///         deploymentType: BLUE_GREEN
///       ecsService:
///         clusterName: ${exampleAwsEcsCluster.name}
///         serviceName: ${exampleAwsEcsService.name}
///       loadBalancerInfo:
///         targetGroupPairInfo:
///           prodTrafficRoute:
///             listenerArns:
///               - ${exampleAwsLbListener.arn}
///           targetGroups:
///             - name: ${blue.name}
///             - name: ${green.name}
/// ```
///
///
/// ### Blue Green Deployments with Servers and Classic ELB
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codedeploy.Application("example", {name: "example-app"});
/// const exampleDeploymentGroup = new aws.codedeploy.DeploymentGroup("example", {
///     appName: example.name,
///     deploymentGroupName: "example-group",
///     serviceRoleArn: exampleAwsIamRole.arn,
///     deploymentStyle: {
///         deploymentOption: "WITH_TRAFFIC_CONTROL",
///         deploymentType: "BLUE_GREEN",
///     },
///     loadBalancerInfo: {
///         elbInfos: [{
///             name: exampleAwsElb.name,
///         }],
///     },
///     blueGreenDeploymentConfig: {
///         deploymentReadyOption: {
///             actionOnTimeout: "STOP_DEPLOYMENT",
///             waitTimeInMinutes: 60,
///         },
///         greenFleetProvisioningOption: {
///             action: "DISCOVER_EXISTING",
///         },
///         terminateBlueInstancesOnDeploymentSuccess: {
///             action: "KEEP_ALIVE",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codedeploy.Application("example", name="example-app")
/// example_deployment_group = aws.codedeploy.DeploymentGroup("example",
///     app_name=example.name,
///     deployment_group_name="example-group",
///     service_role_arn=example_aws_iam_role["arn"],
///     deployment_style={
///         "deployment_option": "WITH_TRAFFIC_CONTROL",
///         "deployment_type": "BLUE_GREEN",
///     },
///     load_balancer_info={
///         "elb_infos": [{
///             "name": example_aws_elb["name"],
///         }],
///     },
///     blue_green_deployment_config={
///         "deployment_ready_option": {
///             "action_on_timeout": "STOP_DEPLOYMENT",
///             "wait_time_in_minutes": 60,
///         },
///         "green_fleet_provisioning_option": {
///             "action": "DISCOVER_EXISTING",
///         },
///         "terminate_blue_instances_on_deployment_success": {
///             "action": "KEEP_ALIVE",
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
///     var example = new Aws.CodeDeploy.Application("example", new()
///     {
///         Name = "example-app",
///     });
///
///     var exampleDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("example", new()
///     {
///         AppName = example.Name,
///         DeploymentGroupName = "example-group",
///         ServiceRoleArn = exampleAwsIamRole.Arn,
///         DeploymentStyle = new Aws.CodeDeploy.Inputs.DeploymentGroupDeploymentStyleArgs
///         {
///             DeploymentOption = "WITH_TRAFFIC_CONTROL",
///             DeploymentType = "BLUE_GREEN",
///         },
///         LoadBalancerInfo = new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoArgs
///         {
///             ElbInfos = new[]
///             {
///                 new Aws.CodeDeploy.Inputs.DeploymentGroupLoadBalancerInfoElbInfoArgs
///                 {
///                     Name = exampleAwsElb.Name,
///                 },
///             },
///         },
///         BlueGreenDeploymentConfig = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigArgs
///         {
///             DeploymentReadyOption = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs
///             {
///                 ActionOnTimeout = "STOP_DEPLOYMENT",
///                 WaitTimeInMinutes = 60,
///             },
///             GreenFleetProvisioningOption = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOptionArgs
///             {
///                 Action = "DISCOVER_EXISTING",
///             },
///             TerminateBlueInstancesOnDeploymentSuccess = new Aws.CodeDeploy.Inputs.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs
///             {
///                 Action = "KEEP_ALIVE",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codedeploy.NewApplication(ctx, "example", &codedeploy.ApplicationArgs{
/// 			Name: pulumi.String("example-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codedeploy.NewDeploymentGroup(ctx, "example", &codedeploy.DeploymentGroupArgs{
/// 			AppName:             example.Name,
/// 			DeploymentGroupName: pulumi.String("example-group"),
/// 			ServiceRoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
/// 			DeploymentStyle: &codedeploy.DeploymentGroupDeploymentStyleArgs{
/// 				DeploymentOption: pulumi.String("WITH_TRAFFIC_CONTROL"),
/// 				DeploymentType:   pulumi.String("BLUE_GREEN"),
/// 			},
/// 			LoadBalancerInfo: &codedeploy.DeploymentGroupLoadBalancerInfoArgs{
/// 				ElbInfos: codedeploy.DeploymentGroupLoadBalancerInfoElbInfoArray{
/// 					&codedeploy.DeploymentGroupLoadBalancerInfoElbInfoArgs{
/// 						Name: pulumi.Any(exampleAwsElb.Name),
/// 					},
/// 				},
/// 			},
/// 			BlueGreenDeploymentConfig: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigArgs{
/// 				DeploymentReadyOption: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs{
/// 					ActionOnTimeout:   pulumi.String("STOP_DEPLOYMENT"),
/// 					WaitTimeInMinutes: pulumi.Int(60),
/// 				},
/// 				GreenFleetProvisioningOption: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOptionArgs{
/// 					Action: pulumi.String("DISCOVER_EXISTING"),
/// 				},
/// 				TerminateBlueInstancesOnDeploymentSuccess: &codedeploy.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs{
/// 					Action: pulumi.String("KEEP_ALIVE"),
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
/// import com.pulumi.aws.codedeploy.Application;
/// import com.pulumi.aws.codedeploy.ApplicationArgs;
/// import com.pulumi.aws.codedeploy.DeploymentGroup;
/// import com.pulumi.aws.codedeploy.DeploymentGroupArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupDeploymentStyleArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupLoadBalancerInfoArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOptionArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("example-app")
///             .build());
///
///         var exampleDeploymentGroup = new DeploymentGroup("exampleDeploymentGroup", DeploymentGroupArgs.builder()
///             .appName(example.name())
///             .deploymentGroupName("example-group")
///             .serviceRoleArn(exampleAwsIamRole.arn())
///             .deploymentStyle(DeploymentGroupDeploymentStyleArgs.builder()
///                 .deploymentOption("WITH_TRAFFIC_CONTROL")
///                 .deploymentType("BLUE_GREEN")
///                 .build())
///             .loadBalancerInfo(DeploymentGroupLoadBalancerInfoArgs.builder()
///                 .elbInfos(DeploymentGroupLoadBalancerInfoElbInfoArgs.builder()
///                     .name(exampleAwsElb.name())
///                     .build())
///                 .build())
///             .blueGreenDeploymentConfig(DeploymentGroupBlueGreenDeploymentConfigArgs.builder()
///                 .deploymentReadyOption(DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOptionArgs.builder()
///                     .actionOnTimeout("STOP_DEPLOYMENT")
///                     .waitTimeInMinutes(60)
///                     .build())
///                 .greenFleetProvisioningOption(DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOptionArgs.builder()
///                     .action("DISCOVER_EXISTING")
///                     .build())
///                 .terminateBlueInstancesOnDeploymentSuccess(DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccessArgs.builder()
///                     .action("KEEP_ALIVE")
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
///     type: aws:codedeploy:Application
///     properties:
///       name: example-app
///   exampleDeploymentGroup:
///     type: aws:codedeploy:DeploymentGroup
///     name: example
///     properties:
///       appName: ${example.name}
///       deploymentGroupName: example-group
///       serviceRoleArn: ${exampleAwsIamRole.arn}
///       deploymentStyle:
///         deploymentOption: WITH_TRAFFIC_CONTROL
///         deploymentType: BLUE_GREEN
///       loadBalancerInfo:
///         elbInfos:
///           - name: ${exampleAwsElb.name}
///       blueGreenDeploymentConfig:
///         deploymentReadyOption:
///           actionOnTimeout: STOP_DEPLOYMENT
///           waitTimeInMinutes: 60
///         greenFleetProvisioningOption:
///           action: DISCOVER_EXISTING
///         terminateBlueInstancesOnDeploymentSuccess:
///           action: KEEP_ALIVE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Deployment Groups using `app_name`, a colon, and `deployment_group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/deploymentGroup:DeploymentGroup example my-application:my-deployment-group
/// ```
///
/// [1]: http://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html
class DeploymentGroup extends pulumi.CustomResource {
  /// Configuration block of alarms associated with the deployment group (documented below).
  late final pulumi.Output<DeploymentGroupAlarmConfiguration?>
  alarmConfiguration;

  /// The name of the application.
  late final pulumi.Output<String> appName;

  /// The ARN of the CodeDeploy deployment group.
  late final pulumi.Output<String> arn;

  /// Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  late final pulumi.Output<DeploymentGroupAutoRollbackConfiguration?>
  autoRollbackConfiguration;

  /// Autoscaling groups associated with the deployment group.
  late final pulumi.Output<List<String>?> autoscalingGroups;

  /// Configuration block of the blue/green deployment options for a deployment group (documented below).
  late final pulumi.Output<DeploymentGroupBlueGreenDeploymentConfig>
  blueGreenDeploymentConfig;

  /// The destination platform type for the deployment.
  late final pulumi.Output<String> computePlatform;

  /// The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
  late final pulumi.Output<String?> deploymentConfigName;

  /// The ID of the CodeDeploy deployment group.
  late final pulumi.Output<String> deploymentGroupId;

  /// The name of the deployment group.
  late final pulumi.Output<String> deploymentGroupName;

  /// Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below).
  late final pulumi.Output<DeploymentGroupDeploymentStyle?> deploymentStyle;

  /// Tag filters associated with the deployment group. See the AWS docs for details.
  late final pulumi.Output<List<DeploymentGroupEc2TagFilter>?> ec2TagFilters;

  /// Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details.
  late final pulumi.Output<List<DeploymentGroupEc2TagSet>?> ec2TagSets;

  /// Configuration block(s) of the ECS services for a deployment group (documented below).
  late final pulumi.Output<DeploymentGroupEcsService?> ecsService;

  /// Single configuration block of the load balancer to use in a blue/green deployment (documented below).
  late final pulumi.Output<DeploymentGroupLoadBalancerInfo?> loadBalancerInfo;

  /// On premise tag filters associated with the group. See the AWS docs for details.
  late final pulumi.Output<List<DeploymentGroupOnPremisesInstanceTagFilter>?>
  onPremisesInstanceTagFilters;

  /// Configuration block of Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. Valid values are `UPDATE` and `IGNORE`. Defaults to `UPDATE`.
  late final pulumi.Output<String?> outdatedInstancesStrategy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The service role ARN that allows deployments.
  late final pulumi.Output<String> serviceRoleArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  late final pulumi.Output<bool?> terminationHookEnabled;

  /// Configuration block(s) of the triggers for the deployment group (documented below).
  late final pulumi.Output<List<DeploymentGroupTriggerConfiguration>?>
  triggerConfigurations;

  /// Creates a new [DeploymentGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentGroup]. {@macro pulumi_codedeploy_deployment_group_deployment_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentGroup(
    String name, {
    DeploymentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codedeploy/deploymentGroup:DeploymentGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.alarmConfiguration =
        registerOutput<DeploymentGroupAlarmConfiguration?>(
          'alarmConfiguration',
        );
    this.appName = registerOutput<String>('appName');
    this.arn = registerOutput<String>('arn');
    this.autoRollbackConfiguration =
        registerOutput<DeploymentGroupAutoRollbackConfiguration?>(
          'autoRollbackConfiguration',
        );
    this.autoscalingGroups = registerOutput<List<String>?>('autoscalingGroups');
    this.blueGreenDeploymentConfig =
        registerOutput<DeploymentGroupBlueGreenDeploymentConfig>(
          'blueGreenDeploymentConfig',
        );
    this.computePlatform = registerOutput<String>('computePlatform');
    this.deploymentConfigName = registerOutput<String?>('deploymentConfigName');
    this.deploymentGroupId = registerOutput<String>('deploymentGroupId');
    this.deploymentGroupName = registerOutput<String>('deploymentGroupName');
    this.deploymentStyle = registerOutput<DeploymentGroupDeploymentStyle?>(
      'deploymentStyle',
    );
    this.ec2TagFilters = registerOutput<List<DeploymentGroupEc2TagFilter>?>(
      'ec2TagFilters',
    );
    this.ec2TagSets = registerOutput<List<DeploymentGroupEc2TagSet>?>(
      'ec2TagSets',
    );
    this.ecsService = registerOutput<DeploymentGroupEcsService?>('ecsService');
    this.loadBalancerInfo = registerOutput<DeploymentGroupLoadBalancerInfo?>(
      'loadBalancerInfo',
    );
    this.onPremisesInstanceTagFilters =
        registerOutput<List<DeploymentGroupOnPremisesInstanceTagFilter>?>(
          'onPremisesInstanceTagFilters',
        );
    this.outdatedInstancesStrategy = registerOutput<String?>(
      'outdatedInstancesStrategy',
    );
    this.region = registerOutput<String>('region');
    this.serviceRoleArn = registerOutput<String>('serviceRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminationHookEnabled = registerOutput<bool?>(
      'terminationHookEnabled',
    );
    this.triggerConfigurations =
        registerOutput<List<DeploymentGroupTriggerConfiguration>?>(
          'triggerConfigurations',
        );
  }
}
