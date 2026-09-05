import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_plan_action.dart';
import 'response_plan_args.dart';
import 'response_plan_incident_template.dart';
import 'response_plan_integration.dart';
import 'response_plan_state.dart';

/// Provides a resource to manage response plans in AWS Systems Manager Incident Manager.
///
/// &gt; NOTE: A response plan implicitly depends on a replication set. If you configured your replication set in Pulumi, we recommend you add it to the `dependsOn` argument for the ResponsePlan Resource.
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
/// const example = new aws.ssmincidents.ResponsePlan("example", {
///     incidentTemplate: {
///         title: "title",
///         impact: 3,
///     },
///     name: "name",
///     tags: {
///         key: "value",
///     },
/// }, {
///     dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.ResponsePlan("example",
///     incident_template={
///         "title": "title",
///         "impact": 3,
///     },
///     name="name",
///     tags={
///         "key": "value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsmIncidents.ResponsePlan("example", new()
///     {
///         IncidentTemplate = new Aws.SsmIncidents.Inputs.ResponsePlanIncidentTemplateArgs
///         {
///             Title = "title",
///             Impact = 3,
///         },
///         Name = "name",
///         Tags =
///         {
///             { "key", "value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSsmincidentsReplicationSet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewResponsePlan(ctx, "example", &ssmincidents.ResponsePlanArgs{
/// 			IncidentTemplate: &ssmincidents.ResponsePlanIncidentTemplateArgs{
/// 				Title:  pulumi.String("title"),
/// 				Impact: pulumi.Int(3),
/// 			},
/// 			Name: pulumi.String("name"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSsmincidentsReplicationSet,
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
/// resource "aws_ssmincidents_responseplan" "example" {
///   depends_on = [exampleAwsSsmincidentsReplicationSet]
///   incident_template = {
///     title  = "title"
///     impact = "3"
///   }
///   name = "name"
///   tags = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.ResponsePlan;
/// import com.pulumi.aws.ssmincidents.ResponsePlanArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanIncidentTemplateArgs;
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
///         var example = new ResponsePlan("example", ResponsePlanArgs.builder()
///             .incidentTemplate(ResponsePlanIncidentTemplateArgs.builder()
///                 .title("title")
///                 .impact(3)
///                 .build())
///             .name("name")
///             .tags(Map.of("key", "value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSsmincidentsReplicationSet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssmincidents:ResponsePlan
///     properties:
///       incidentTemplate:
///         title: title
///         impact: '3'
///       name: name
///       tags:
///         key: value
///     options:
///       dependsOn:
///         - ${exampleAwsSsmincidentsReplicationSet}
/// ```
///
///
/// ### Usage With All Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssmincidents.ResponsePlan("example", {
///     incidentTemplate: {
///         notificationTargets: [
///             {
///                 snsTopicArn: example1.arn,
///             },
///             {
///                 snsTopicArn: example2.arn,
///             },
///         ],
///         title: "title",
///         impact: 3,
///         dedupeString: "dedupe",
///         incidentTags: {
///             key: "value",
///         },
///         summary: "summary",
///     },
///     action: {
///         ssmAutomations: [{
///             parameters: [
///                 {
///                     name: "key",
///                     values: [
///                         "value1",
///                         "value2",
///                     ],
///                 },
///                 {
///                     name: "foo",
///                     values: ["bar"],
///                 },
///             ],
///             documentName: document1.name,
///             roleArn: role1.arn,
///             documentVersion: "version1",
///             targetAccount: "RESPONSE_PLAN_OWNER_ACCOUNT",
///             dynamicParameters: {
///                 someKey: "INVOLVED_RESOURCES",
///                 anotherKey: "INCIDENT_RECORD_ARN",
///             },
///         }],
///     },
///     integration: {
///         pagerduties: [{
///             name: "pagerdutyIntergration",
///             serviceId: "example",
///             secretId: "example",
///         }],
///     },
///     name: "name",
///     displayName: "display name",
///     chatChannels: [topic.arn],
///     engagements: ["arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1"],
///     tags: {
///         key: "value",
///     },
/// }, {
///     dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.ResponsePlan("example",
///     incident_template={
///         "notification_targets": [
///             {
///                 "sns_topic_arn": example1["arn"],
///             },
///             {
///                 "sns_topic_arn": example2["arn"],
///             },
///         ],
///         "title": "title",
///         "impact": 3,
///         "dedupe_string": "dedupe",
///         "incident_tags": {
///             "key": "value",
///         },
///         "summary": "summary",
///     },
///     action={
///         "ssm_automations": [{
///             "parameters": [
///                 {
///                     "name": "key",
///                     "values": [
///                         "value1",
///                         "value2",
///                     ],
///                 },
///                 {
///                     "name": "foo",
///                     "values": ["bar"],
///                 },
///             ],
///             "document_name": document1["name"],
///             "role_arn": role1["arn"],
///             "document_version": "version1",
///             "target_account": "RESPONSE_PLAN_OWNER_ACCOUNT",
///             "dynamic_parameters": {
///                 "someKey": "INVOLVED_RESOURCES",
///                 "anotherKey": "INCIDENT_RECORD_ARN",
///             },
///         }],
///     },
///     integration={
///         "pagerduties": [{
///             "name": "pagerdutyIntergration",
///             "service_id": "example",
///             "secret_id": "example",
///         }],
///     },
///     name="name",
///     display_name="display name",
///     chat_channels=[topic["arn"]],
///     engagements=["arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1"],
///     tags={
///         "key": "value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsmIncidents.ResponsePlan("example", new()
///     {
///         IncidentTemplate = new Aws.SsmIncidents.Inputs.ResponsePlanIncidentTemplateArgs
///         {
///             NotificationTargets = new[]
///             {
///                 new Aws.SsmIncidents.Inputs.ResponsePlanIncidentTemplateNotificationTargetArgs
///                 {
///                     SnsTopicArn = example1.Arn,
///                 },
///                 new Aws.SsmIncidents.Inputs.ResponsePlanIncidentTemplateNotificationTargetArgs
///                 {
///                     SnsTopicArn = example2.Arn,
///                 },
///             },
///             Title = "title",
///             Impact = 3,
///             DedupeString = "dedupe",
///             IncidentTags =
///             {
///                 { "key", "value" },
///             },
///             Summary = "summary",
///         },
///         Action = new Aws.SsmIncidents.Inputs.ResponsePlanActionArgs
///         {
///             SsmAutomations = new[]
///             {
///                 new Aws.SsmIncidents.Inputs.ResponsePlanActionSsmAutomationArgs
///                 {
///                     Parameters = new[]
///                     {
///                         new Aws.SsmIncidents.Inputs.ResponsePlanActionSsmAutomationParameterArgs
///                         {
///                             Name = "key",
///                             Values = new[]
///                             {
///                                 "value1",
///                                 "value2",
///                             },
///                         },
///                         new Aws.SsmIncidents.Inputs.ResponsePlanActionSsmAutomationParameterArgs
///                         {
///                             Name = "foo",
///                             Values = new[]
///                             {
///                                 "bar",
///                             },
///                         },
///                     },
///                     DocumentName = document1.Name,
///                     RoleArn = role1.Arn,
///                     DocumentVersion = "version1",
///                     TargetAccount = "RESPONSE_PLAN_OWNER_ACCOUNT",
///                     DynamicParameters =
///                     {
///                         { "someKey", "INVOLVED_RESOURCES" },
///                         { "anotherKey", "INCIDENT_RECORD_ARN" },
///                     },
///                 },
///             },
///         },
///         Integration = new Aws.SsmIncidents.Inputs.ResponsePlanIntegrationArgs
///         {
///             Pagerduties = new[]
///             {
///                 new Aws.SsmIncidents.Inputs.ResponsePlanIntegrationPagerdutyArgs
///                 {
///                     Name = "pagerdutyIntergration",
///                     ServiceId = "example",
///                     SecretId = "example",
///                 },
///             },
///         },
///         Name = "name",
///         DisplayName = "display name",
///         ChatChannels = new[]
///         {
///             topic.Arn,
///         },
///         Engagements = new[]
///         {
///             "arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1",
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSsmincidentsReplicationSet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewResponsePlan(ctx, "example", &ssmincidents.ResponsePlanArgs{
/// 			IncidentTemplate: &ssmincidents.ResponsePlanIncidentTemplateArgs{
/// 				NotificationTargets: ssmincidents.ResponsePlanIncidentTemplateNotificationTargetArray{
/// 					&ssmincidents.ResponsePlanIncidentTemplateNotificationTargetArgs{
/// 						SnsTopicArn: pulumi.Any(example1.Arn),
/// 					},
/// 					&ssmincidents.ResponsePlanIncidentTemplateNotificationTargetArgs{
/// 						SnsTopicArn: pulumi.Any(example2.Arn),
/// 					},
/// 				},
/// 				Title:        pulumi.String("title"),
/// 				Impact:       pulumi.Int(3),
/// 				DedupeString: pulumi.String("dedupe"),
/// 				IncidentTags: pulumi.StringMap{
/// 					"key": pulumi.String("value"),
/// 				},
/// 				Summary: pulumi.String("summary"),
/// 			},
/// 			Action: &ssmincidents.ResponsePlanActionArgs{
/// 				SsmAutomations: ssmincidents.ResponsePlanActionSsmAutomationArray{
/// 					&ssmincidents.ResponsePlanActionSsmAutomationArgs{
/// 						Parameters: ssmincidents.ResponsePlanActionSsmAutomationParameterArray{
/// 							&ssmincidents.ResponsePlanActionSsmAutomationParameterArgs{
/// 								Name: pulumi.String("key"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("value1"),
/// 									pulumi.String("value2"),
/// 								},
/// 							},
/// 							&ssmincidents.ResponsePlanActionSsmAutomationParameterArgs{
/// 								Name: pulumi.String("foo"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("bar"),
/// 								},
/// 							},
/// 						},
/// 						DocumentName:    pulumi.Any(document1.Name),
/// 						RoleArn:         pulumi.Any(role1.Arn),
/// 						DocumentVersion: pulumi.String("version1"),
/// 						TargetAccount:   pulumi.String("RESPONSE_PLAN_OWNER_ACCOUNT"),
/// 						DynamicParameters: pulumi.StringMap{
/// 							"someKey":    pulumi.String("INVOLVED_RESOURCES"),
/// 							"anotherKey": pulumi.String("INCIDENT_RECORD_ARN"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Integration: &ssmincidents.ResponsePlanIntegrationArgs{
/// 				Pagerduties: ssmincidents.ResponsePlanIntegrationPagerdutyArray{
/// 					&ssmincidents.ResponsePlanIntegrationPagerdutyArgs{
/// 						Name:      pulumi.String("pagerdutyIntergration"),
/// 						ServiceId: pulumi.String("example"),
/// 						SecretId:  pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("name"),
/// 			DisplayName: pulumi.String("display name"),
/// 			ChatChannels: pulumi.StringArray{
/// 				topic.Arn,
/// 			},
/// 			Engagements: pulumi.StringArray{
/// 				pulumi.String("arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSsmincidentsReplicationSet,
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
/// resource "aws_ssmincidents_responseplan" "example" {
///   depends_on = [exampleAwsSsmincidentsReplicationSet]
///   incident_template = {
///     notification_targets = [{
///       "snsTopicArn" = example1.arn
///       }, {
///       "snsTopicArn" = example2.arn
///     }]
///     title         = "title"
///     impact        = "3"
///     dedupe_string = "dedupe"
///     incident_tags = {
///       "key" = "value"
///     }
///     summary = "summary"
///   }
///   action = {
///     ssm_automations = [{
///       "parameters" = [{
///         "name"   = "key"
///         "values" = ["value1", "value2"]
///         }, {
///         "name"   = "foo"
///         "values" = ["bar"]
///       }]
///       "documentName"    = document1.name
///       "roleArn"         = role1.arn
///       "documentVersion" = "version1"
///       "targetAccount"   = "RESPONSE_PLAN_OWNER_ACCOUNT"
///       "dynamicParameters" = {
///         "someKey"    = "INVOLVED_RESOURCES"
///         "anotherKey" = "INCIDENT_RECORD_ARN"
///       }
///     }]
///   }
///   integration = {
///     pagerduties = [{
///       "name"      = "pagerdutyIntergration"
///       "serviceId" = "example"
///       "secretId"  = "example"
///     }]
///   }
///   name          = "name"
///   display_name  = "display name"
///   chat_channels = [topic.arn]
///   engagements   = ["arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1"]
///   tags = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.ResponsePlan;
/// import com.pulumi.aws.ssmincidents.ResponsePlanArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanIncidentTemplateArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanIncidentTemplateNotificationTargetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanActionArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanActionSsmAutomationArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanActionSsmAutomationParameterArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanIntegrationArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ResponsePlanIntegrationPagerdutyArgs;
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
///         var example = new ResponsePlan("example", ResponsePlanArgs.builder()
///             .incidentTemplate(ResponsePlanIncidentTemplateArgs.builder()
///                 .notificationTargets(
///                     ResponsePlanIncidentTemplateNotificationTargetArgs.builder()
///                         .snsTopicArn(example1.arn())
///                         .build(),
///                     ResponsePlanIncidentTemplateNotificationTargetArgs.builder()
///                         .snsTopicArn(example2.arn())
///                         .build())
///                 .title("title")
///                 .impact(3)
///                 .dedupeString("dedupe")
///                 .incidentTags(Map.of("key", "value"))
///                 .summary("summary")
///                 .build())
///             .action(ResponsePlanActionArgs.builder()
///                 .ssmAutomations(ResponsePlanActionSsmAutomationArgs.builder()
///                     .parameters(
///                         ResponsePlanActionSsmAutomationParameterArgs.builder()
///                             .name("key")
///                             .values(
///                                 "value1",
///                                 "value2")
///                             .build(),
///                         ResponsePlanActionSsmAutomationParameterArgs.builder()
///                             .name("foo")
///                             .values("bar")
///                             .build())
///                     .documentName(document1.name())
///                     .roleArn(role1.arn())
///                     .documentVersion("version1")
///                     .targetAccount("RESPONSE_PLAN_OWNER_ACCOUNT")
///                     .dynamicParameters(Map.ofEntries(
///                         Map.entry("someKey", "INVOLVED_RESOURCES"),
///                         Map.entry("anotherKey", "INCIDENT_RECORD_ARN")
///                     ))
///                     .build())
///                 .build())
///             .integration(ResponsePlanIntegrationArgs.builder()
///                 .pagerduties(ResponsePlanIntegrationPagerdutyArgs.builder()
///                     .name("pagerdutyIntergration")
///                     .serviceId("example")
///                     .secretId("example")
///                     .build())
///                 .build())
///             .name("name")
///             .displayName("display name")
///             .chatChannels(topic.arn())
///             .engagements("arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1")
///             .tags(Map.of("key", "value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSsmincidentsReplicationSet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssmincidents:ResponsePlan
///     properties:
///       incidentTemplate:
///         notificationTargets:
///           - snsTopicArn: ${example1.arn}
///           - snsTopicArn: ${example2.arn}
///         title: title
///         impact: '3'
///         dedupeString: dedupe
///         incidentTags:
///           key: value
///         summary: summary
///       action:
///         ssmAutomations:
///           - parameters:
///               - name: key
///                 values:
///                   - value1
///                   - value2
///               - name: foo
///                 values:
///                   - bar
///             documentName: ${document1.name}
///             roleArn: ${role1.arn}
///             documentVersion: version1
///             targetAccount: RESPONSE_PLAN_OWNER_ACCOUNT
///             dynamicParameters:
///               someKey: INVOLVED_RESOURCES
///               anotherKey: INCIDENT_RECORD_ARN
///       integration:
///         pagerduties:
///           - name: pagerdutyIntergration
///             serviceId: example
///             secretId: example
///       name: name
///       displayName: display name
///       chatChannels:
///         - ${topic.arn}
///       engagements:
///         - arn:aws:ssm-contacts:us-east-2:111122223333:contact/test1
///       tags:
///         key: value
///     options:
///       dependsOn:
///         - ${exampleAwsSsmincidentsReplicationSet}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an Incident Manager response plan using the response plan ARN. You can find the response plan ARN in the AWS Management Console. For example:
///
/// ```sh
/// $ pulumi import aws:ssmincidents/responsePlan:ResponsePlan responsePlanName ARNValue
/// ```
class ResponsePlan extends pulumi.CustomResource {
  /// The actions that the response plan starts at the beginning of an incident.
  late final pulumi.Output<ResponsePlanAction?> action;
  /// The ARN of the response plan.
  late final pulumi.Output<String> arn;
  /// The Chatbot chat channel used for collaboration during an incident.
  late final pulumi.Output<List<String>?> chatChannels;
  /// The long format of the response plan name. This field can contain spaces.
  late final pulumi.Output<String?> displayName;
  /// ARN for the contacts and escalation plans that the response plan engages during an incident.
  late final pulumi.Output<List<String>?> engagements;
  /// The `incidentTemplate` configuration block is required and supports the following arguments:
  late final pulumi.Output<ResponsePlanIncidentTemplate> incidentTemplate;
  /// Information about third-party services integrated into the response plan. The following values are supported:
  late final pulumi.Output<ResponsePlanIntegration?> integration;
  /// The name of the response plan.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The tags applied to the response plan.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResponsePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResponsePlan]. {@macro pulumi_ssmincidents_response_plan_response_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResponsePlan(
    String name, {
    ResponsePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/responsePlan:ResponsePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    action = registerOutput<ResponsePlanAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    chatChannels = registerOutput<List<String>?>('chatChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    engagements = registerOutput<List<String>?>('engagements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    incidentTemplate = registerOutput<ResponsePlanIncidentTemplate>('incidentTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIncidentTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integration = registerOutput<ResponsePlanIntegration?>('integration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIntegration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ResponsePlan] resource's state with the given [name] and [id].
  static ResponsePlan get(
    String name,
    pulumi.Input<String> id, {
    ResponsePlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResponsePlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResponsePlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/responsePlan:ResponsePlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<ResponsePlanAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    chatChannels = registerOutput<List<String>?>('chatChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    engagements = registerOutput<List<String>?>('engagements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    incidentTemplate = registerOutput<ResponsePlanIncidentTemplate>('incidentTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIncidentTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integration = registerOutput<ResponsePlanIntegration?>('integration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIntegration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ResponsePlan] resource.
  ResponsePlan.reference(String urn)
    : super(
        'aws:ssmincidents/responsePlan:ResponsePlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<ResponsePlanAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    chatChannels = registerOutput<List<String>?>('chatChannels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String?>('displayName');
    engagements = registerOutput<List<String>?>('engagements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    incidentTemplate = registerOutput<ResponsePlanIncidentTemplate>('incidentTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIncidentTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integration = registerOutput<ResponsePlanIntegration?>('integration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResponsePlanIntegration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
