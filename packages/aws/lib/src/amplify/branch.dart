import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_args.dart';

/// Provides an Amplify Branch resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {name: "app"});
/// const master = new aws.amplify.Branch("master", {
///     appId: example.id,
///     branchName: "master",
///     framework: "React",
///     stage: "PRODUCTION",
///     environmentVariables: {
///         REACT_APP_API_SERVER: "https://api.example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example", name="app")
/// master = aws.amplify.Branch("master",
///     app_id=example.id,
///     branch_name="master",
///     framework="React",
///     stage="PRODUCTION",
///     environment_variables={
///         "REACT_APP_API_SERVER": "https://api.example.com",
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "app",
///     });
///
///     var master = new Aws.Amplify.Branch("master", new()
///     {
///         AppId = example.Id,
///         BranchName = "master",
///         Framework = "React",
///         Stage = "PRODUCTION",
///         EnvironmentVariables =
///         {
///             { "REACT_APP_API_SERVER", "https://api.example.com" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// 			AppId:      example.ID(),
/// 			BranchName: pulumi.String("master"),
/// 			Framework:  pulumi.String("React"),
/// 			Stage:      pulumi.String("PRODUCTION"),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"REACT_APP_API_SERVER": pulumi.String("https://api.example.com"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.Branch;
/// import com.pulumi.aws.amplify.BranchArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .name("app")
///             .build());
///
///         var master = new Branch("master", BranchArgs.builder()
///             .appId(example.id())
///             .branchName("master")
///             .framework("React")
///             .stage("PRODUCTION")
///             .environmentVariables(Map.of("REACT_APP_API_SERVER", "https://api.example.com"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: app
///   master:
///     type: aws:amplify:Branch
///     properties:
///       appId: ${example.id}
///       branchName: master
///       framework: React
///       stage: PRODUCTION
///       environmentVariables:
///         REACT_APP_API_SERVER: https://api.example.com
/// ```
///
///
/// ### Basic Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.amplify.App("example", {name: "app"});
/// const master = new aws.amplify.Branch("master", {
///     appId: example.id,
///     branchName: "master",
///     enableBasicAuth: true,
///     basicAuthCredentials: std.base64encode({
///         input: "username:password",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.amplify.App("example", name="app")
/// master = aws.amplify.Branch("master",
///     app_id=example.id,
///     branch_name="master",
///     enable_basic_auth=True,
///     basic_auth_credentials=std.base64encode(input="username:password").result)
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "app",
///     });
///
///     var master = new Aws.Amplify.Branch("master", new()
///     {
///         AppId = example.Id,
///         BranchName = "master",
///         EnableBasicAuth = true,
///         BasicAuthCredentials = Std.Base64encode.Invoke(new()
///         {
///             Input = "username:password",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "username:password",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// 			AppId:                example.ID(),
/// 			BranchName:           pulumi.String("master"),
/// 			EnableBasicAuth:      pulumi.Bool(true),
/// 			BasicAuthCredentials: pulumi.String(invokeBase64encode.Result),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.Branch;
/// import com.pulumi.aws.amplify.BranchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .name("app")
///             .build());
///
///         var master = new Branch("master", BranchArgs.builder()
///             .appId(example.id())
///             .branchName("master")
///             .enableBasicAuth(true)
///             .basicAuthCredentials(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input("username:password")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: app
///   master:
///     type: aws:amplify:Branch
///     properties:
///       appId: ${example.id}
///       branchName: master
///       enableBasicAuth: true
///       basicAuthCredentials:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: username:password
///           return: result
/// ```
///
///
/// ### Notifications
///
/// Amplify Console uses EventBridge (formerly known as CloudWatch Events) and SNS for email notifications.  To implement the same functionality, you need to set `enable_notification` in a `aws.amplify.Branch` resource, as well as creating an EventBridge Rule, an SNS topic, and SNS subscriptions.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {name: "app"});
/// const master = new aws.amplify.Branch("master", {
///     appId: example.id,
///     branchName: "master",
///     enableNotification: true,
/// });
/// // EventBridge Rule for Amplify notifications
/// const amplifyAppMasterEventRule = new aws.cloudwatch.EventRule("amplify_app_master", {
///     name: pulumi.interpolate`amplify-${app.id}-${master.branchName}-branch-notification`,
///     description: pulumi.interpolate`AWS Amplify build notifications for :  App: ${app.id} Branch: ${master.branchName}`,
///     eventPattern: pulumi.jsonStringify({
///         detail: {
///             appId: [example.id],
///             branchName: [master.branchName],
///             jobStatus: [
///                 "SUCCEED",
///                 "FAILED",
///                 "STARTED",
///             ],
///         },
///         "detail-type": ["Amplify Deployment Status Change"],
///         source: ["aws.amplify"],
///     }),
/// });
/// // SNS Topic for Amplify notifications
/// const amplifyAppMasterTopic = new aws.sns.Topic("amplify_app_master", {name: pulumi.interpolate`amplify-${app.id}_${master.branchName}`});
/// const amplifyAppMasterEventTarget = new aws.cloudwatch.EventTarget("amplify_app_master", {
///     rule: amplifyAppMasterEventRule.name,
///     targetId: master.branchName,
///     arn: amplifyAppMasterTopic.arn,
///     inputTransformer: {
///         inputPaths: {
///             jobId: "$.detail.jobId",
///             appId: "$.detail.appId",
///             region: "$.region",
///             branch: "$.detail.branchName",
///             status: "$.detail.jobStatus",
///         },
///         inputTemplate: "\"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. \"",
///     },
/// });
/// const amplifyAppMaster = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         sid: pulumi.interpolate`Allow_Publish_Events ${master.arn}`,
///         effect: "Allow",
///         actions: ["SNS:Publish"],
///         principals: [{
///             type: "Service",
///             identifiers: ["events.amazonaws.com"],
///         }],
///         resources: [amplifyAppMasterTopic.arn],
///     }],
/// });
/// const amplifyAppMasterTopicPolicy = new aws.sns.TopicPolicy("amplify_app_master", {
///     arn: amplifyAppMasterTopic.arn,
///     policy: amplifyAppMaster.apply(amplifyAppMaster => amplifyAppMaster.json),
/// });
/// const _this = new aws.sns.TopicSubscription("this", {
///     topic: amplifyAppMasterTopic.arn,
///     protocol: "email",
///     endpoint: "user@acme.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example", name="app")
/// master = aws.amplify.Branch("master",
///     app_id=example.id,
///     branch_name="master",
///     enable_notification=True)
/// # EventBridge Rule for Amplify notifications
/// amplify_app_master_event_rule = aws.cloudwatch.EventRule("amplify_app_master",
///     name=master.branch_name.apply(lambda branch_name: f"amplify-{app['id']}-{branch_name}-branch-notification"),
///     description=master.branch_name.apply(lambda branch_name: f"AWS Amplify build notifications for :  App: {app['id']} Branch: {branch_name}"),
///     event_pattern=pulumi.Output.json_dumps({
///         "detail": {
///             "appId": [example.id],
///             "branchName": [master.branch_name],
///             "jobStatus": [
///                 "SUCCEED",
///                 "FAILED",
///                 "STARTED",
///             ],
///         },
///         "detail-type": ["Amplify Deployment Status Change"],
///         "source": ["aws.amplify"],
///     }))
/// # SNS Topic for Amplify notifications
/// amplify_app_master_topic = aws.sns.Topic("amplify_app_master", name=master.branch_name.apply(lambda branch_name: f"amplify-{app['id']}_{branch_name}"))
/// amplify_app_master_event_target = aws.cloudwatch.EventTarget("amplify_app_master",
///     rule=amplify_app_master_event_rule.name,
///     target_id=master.branch_name,
///     arn=amplify_app_master_topic.arn,
///     input_transformer={
///         "input_paths": {
///             "jobId": "$.detail.jobId",
///             "appId": "$.detail.appId",
///             "region": "$.region",
///             "branch": "$.detail.branchName",
///             "status": "$.detail.jobStatus",
///         },
///         "input_template": "\"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. \"",
///     })
/// amplify_app_master = aws.iam.get_policy_document_output(statements=[{
///     "sid": master.arn.apply(lambda arn: f"Allow_Publish_Events {arn}"),
///     "effect": "Allow",
///     "actions": ["SNS:Publish"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["events.amazonaws.com"],
///     }],
///     "resources": [amplify_app_master_topic.arn],
/// }])
/// amplify_app_master_topic_policy = aws.sns.TopicPolicy("amplify_app_master",
///     arn=amplify_app_master_topic.arn,
///     policy=amplify_app_master.json)
/// this = aws.sns.TopicSubscription("this",
///     topic=amplify_app_master_topic.arn,
///     protocol="email",
///     endpoint="user@acme.com")
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
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "app",
///     });
///
///     var master = new Aws.Amplify.Branch("master", new()
///     {
///         AppId = example.Id,
///         BranchName = "master",
///         EnableNotification = true,
///     });
///
///     // EventBridge Rule for Amplify notifications
///     var amplifyAppMasterEventRule = new Aws.CloudWatch.EventRule("amplify_app_master", new()
///     {
///         Name = master.BranchName.Apply(branchName => $"amplify-{app.Id}-{branchName}-branch-notification"),
///         Description = master.BranchName.Apply(branchName => $"AWS Amplify build notifications for :  App: {app.Id} Branch: {branchName}"),
///         EventPattern = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["detail"] = new Dictionary<string, object?>
///             {
///                 ["appId"] = new[]
///                 {
///                     example.Id,
///                 },
///                 ["branchName"] = new[]
///                 {
///                     master.BranchName,
///                 },
///                 ["jobStatus"] = new[]
///                 {
///                     "SUCCEED",
///                     "FAILED",
///                     "STARTED",
///                 },
///             },
///             ["detail-type"] = new[]
///             {
///                 "Amplify Deployment Status Change",
///             },
///             ["source"] = new[]
///             {
///                 "aws.amplify",
///             },
///         })),
///     });
///
///     // SNS Topic for Amplify notifications
///     var amplifyAppMasterTopic = new Aws.Sns.Topic("amplify_app_master", new()
///     {
///         Name = master.BranchName.Apply(branchName => $"amplify-{app.Id}_{branchName}"),
///     });
///
///     var amplifyAppMasterEventTarget = new Aws.CloudWatch.EventTarget("amplify_app_master", new()
///     {
///         Rule = amplifyAppMasterEventRule.Name,
///         TargetId = master.BranchName,
///         Arn = amplifyAppMasterTopic.Arn,
///         InputTransformer = new Aws.CloudWatch.Inputs.EventTargetInputTransformerArgs
///         {
///             InputPaths =
///             {
///                 { "jobId", "$.detail.jobId" },
///                 { "appId", "$.detail.appId" },
///                 { "region", "$.region" },
///                 { "branch", "$.detail.branchName" },
///                 { "status", "$.detail.jobStatus" },
///             },
///             InputTemplate = "\"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. \"",
///         },
///     });
///
///     var amplifyAppMaster = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = $"Allow_Publish_Events {master.Arn}",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "events.amazonaws.com",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     amplifyAppMasterTopic.Arn,
///                 },
///             },
///         },
///     });
///
///     var amplifyAppMasterTopicPolicy = new Aws.Sns.TopicPolicy("amplify_app_master", new()
///     {
///         Arn = amplifyAppMasterTopic.Arn,
///         Policy = amplifyAppMaster.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var @this = new Aws.Sns.TopicSubscription("this", new()
///     {
///         Topic = amplifyAppMasterTopic.Arn,
///         Protocol = "email",
///         Endpoint = "user@acme.com",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		master, err := amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// 			AppId:              example.ID(),
/// 			BranchName:         pulumi.String("master"),
/// 			EnableNotification: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// EventBridge Rule for Amplify notifications
/// 		amplifyAppMasterEventRule, err := cloudwatch.NewEventRule(ctx, "amplify_app_master", &cloudwatch.EventRuleArgs{
/// 			Name: master.BranchName.ApplyT(func(branchName string) (string, error) {
/// 				return fmt.Sprintf("amplify-%v-%v-branch-notification", app.Id, branchName), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: master.BranchName.ApplyT(func(branchName string) (string, error) {
/// 				return fmt.Sprintf("AWS Amplify build notifications for :  App: %v Branch: %v", app.Id, branchName), nil
/// 			}).(pulumi.StringOutput),
/// 			EventPattern: pulumi.All(example.ID(), master.BranchName).ApplyT(func(_args []interface{}) (string, error) {
/// 				id := _args[0].(string)
/// 				branchName := _args[1].(string)
/// 				var _zero string
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"detail": map[string]interface{}{
/// 						"appId": []string{
/// 							id,
/// 						},
/// 						"branchName": []string{
/// 							branchName,
/// 						},
/// 						"jobStatus": []string{
/// 							"SUCCEED",
/// 							"FAILED",
/// 							"STARTED",
/// 						},
/// 					},
/// 					"detail-type": []string{
/// 						"Amplify Deployment Status Change",
/// 					},
/// 					"source": []string{
/// 						"aws.amplify",
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return json0, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// SNS Topic for Amplify notifications
/// 		amplifyAppMasterTopic, err := sns.NewTopic(ctx, "amplify_app_master", &sns.TopicArgs{
/// 			Name: master.BranchName.ApplyT(func(branchName string) (string, error) {
/// 				return fmt.Sprintf("amplify-%v_%v", app.Id, branchName), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventTarget(ctx, "amplify_app_master", &cloudwatch.EventTargetArgs{
/// 			Rule:     amplifyAppMasterEventRule.Name,
/// 			TargetId: master.BranchName,
/// 			Arn:      amplifyAppMasterTopic.Arn,
/// 			InputTransformer: &cloudwatch.EventTargetInputTransformerArgs{
/// 				InputPaths: pulumi.StringMap{
/// 					"jobId":  pulumi.String("$.detail.jobId"),
/// 					"appId":  pulumi.String("$.detail.appId"),
/// 					"region": pulumi.String("$.region"),
/// 					"branch": pulumi.String("$.detail.branchName"),
/// 					"status": pulumi.String("$.detail.jobStatus"),
/// 				},
/// 				InputTemplate: pulumi.String("\"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. \""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		amplifyAppMaster := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid: master.Arn.ApplyT(func(arn string) (string, error) {
/// 						return fmt.Sprintf("Allow_Publish_Events %v", arn), nil
/// 					}).(pulumi.StringOutput),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("events.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						amplifyAppMasterTopic.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sns.NewTopicPolicy(ctx, "amplify_app_master", &sns.TopicPolicyArgs{
/// 			Arn: amplifyAppMasterTopic.Arn,
/// 			Policy: pulumi.String(amplifyAppMaster.ApplyT(func(amplifyAppMaster iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &amplifyAppMaster.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sns.NewTopicSubscription(ctx, "this", &sns.TopicSubscriptionArgs{
/// 			Topic:    amplifyAppMasterTopic.Arn,
/// 			Protocol: pulumi.String("email"),
/// 			Endpoint: pulumi.String("user@acme.com"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.Branch;
/// import com.pulumi.aws.amplify.BranchArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetInputTransformerArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .name("app")
///             .build());
///
///         var master = new Branch("master", BranchArgs.builder()
///             .appId(example.id())
///             .branchName("master")
///             .enableNotification(true)
///             .build());
///
///         // EventBridge Rule for Amplify notifications
///         var amplifyAppMasterEventRule = new EventRule("amplifyAppMasterEventRule", EventRuleArgs.builder()
///             .name(master.branchName().applyValue(_branchName -> String.format("amplify-%s-%s-branch-notification", app.id(),_branchName)))
///             .description(master.branchName().applyValue(_branchName -> String.format("AWS Amplify build notifications for :  App: %s Branch: %s", app.id(),_branchName)))
///             .eventPattern(Output.tuple(example.id(), master.branchName()).applyValue(values -> {
///                 var id = values.t1;
///                 var branchName = values.t2;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("detail", jsonObject(
///                             jsonProperty("appId", jsonArray(id)),
///                             jsonProperty("branchName", jsonArray(branchName)),
///                             jsonProperty("jobStatus", jsonArray(
///                                 "SUCCEED",
///                                 "FAILED",
///                                 "STARTED"
///                             ))
///                         )),
///                         jsonProperty("detail-type", jsonArray("Amplify Deployment Status Change")),
///                         jsonProperty("source", jsonArray("aws.amplify"))
///                     ));
///             }))
///             .build());
///
///         // SNS Topic for Amplify notifications
///         var amplifyAppMasterTopic = new Topic("amplifyAppMasterTopic", TopicArgs.builder()
///             .name(master.branchName().applyValue(_branchName -> String.format("amplify-%s_%s", app.id(),_branchName)))
///             .build());
///
///         var amplifyAppMasterEventTarget = new EventTarget("amplifyAppMasterEventTarget", EventTargetArgs.builder()
///             .rule(amplifyAppMasterEventRule.name())
///             .targetId(master.branchName())
///             .arn(amplifyAppMasterTopic.arn())
///             .inputTransformer(EventTargetInputTransformerArgs.builder()
///                 .inputPaths(Map.ofEntries(
///                     Map.entry("jobId", "$.detail.jobId"),
///                     Map.entry("appId", "$.detail.appId"),
///                     Map.entry("region", "$.region"),
///                     Map.entry("branch", "$.detail.branchName"),
///                     Map.entry("status", "$.detail.jobStatus")
///                 ))
///                 .inputTemplate("\"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. \"")
///                 .build())
///             .build());
///
///         final var amplifyAppMaster = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid(master.arn().applyValue(_arn -> String.format("Allow_Publish_Events %s", _arn)))
///                 .effect("Allow")
///                 .actions("SNS:Publish")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("events.amazonaws.com")
///                     .build())
///                 .resources(amplifyAppMasterTopic.arn())
///                 .build())
///             .build());
///
///         var amplifyAppMasterTopicPolicy = new TopicPolicy("amplifyAppMasterTopicPolicy", TopicPolicyArgs.builder()
///             .arn(amplifyAppMasterTopic.arn())
///             .policy(amplifyAppMaster.applyValue(_amplifyAppMaster -> _amplifyAppMaster.json()))
///             .build());
///
///         var this_ = new TopicSubscription("this", TopicSubscriptionArgs.builder()
///             .topic(amplifyAppMasterTopic.arn())
///             .protocol("email")
///             .endpoint("user@acme.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: app
///   master:
///     type: aws:amplify:Branch
///     properties:
///       appId: ${example.id}
///       branchName: master
///       enableNotification: true
///   # EventBridge Rule for Amplify notifications
///   amplifyAppMasterEventRule:
///     type: aws:cloudwatch:EventRule
///     name: amplify_app_master
///     properties:
///       name: amplify-${app.id}-${master.branchName}-branch-notification
///       description: 'AWS Amplify build notifications for :  App: ${app.id} Branch: ${master.branchName}'
///       eventPattern:
///         fn::toJSON:
///           detail:
///             appId:
///               - ${example.id}
///             branchName:
///               - ${master.branchName}
///             jobStatus:
///               - SUCCEED
///               - FAILED
///               - STARTED
///           detail-type:
///             - Amplify Deployment Status Change
///           source:
///             - aws.amplify
///   amplifyAppMasterEventTarget:
///     type: aws:cloudwatch:EventTarget
///     name: amplify_app_master
///     properties:
///       rule: ${amplifyAppMasterEventRule.name}
///       targetId: ${master.branchName}
///       arn: ${amplifyAppMasterTopic.arn}
///       inputTransformer:
///         inputPaths:
///           jobId: $.detail.jobId
///           appId: $.detail.appId
///           region: $.region
///           branch: $.detail.branchName
///           status: $.detail.jobStatus
///         inputTemplate: '"Build notification from the AWS Amplify Console for app: https://<branch>.<appId>.amplifyapp.com/. Your build status is <status>. Go to https://console.aws.amazon.com/amplify/home?region=<region>#<appId>/<branch>/<jobId> to view details on your build. "'
///   # SNS Topic for Amplify notifications
///   amplifyAppMasterTopic:
///     type: aws:sns:Topic
///     name: amplify_app_master
///     properties:
///       name: amplify-${app.id}_${master.branchName}
///   amplifyAppMasterTopicPolicy:
///     type: aws:sns:TopicPolicy
///     name: amplify_app_master
///     properties:
///       arn: ${amplifyAppMasterTopic.arn}
///       policy: ${amplifyAppMaster.json}
///   this:
///     type: aws:sns:TopicSubscription
///     properties:
///       topic: ${amplifyAppMasterTopic.arn}
///       protocol: email
///       endpoint: user@acme.com
/// variables:
///   amplifyAppMaster:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: Allow_Publish_Events ${master.arn}
///             effect: Allow
///             actions:
///               - SNS:Publish
///             principals:
///               - type: Service
///                 identifiers:
///                   - events.amazonaws.com
///             resources:
///               - ${amplifyAppMasterTopic.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify branch using `app_id` and `branch_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/branch:Branch master d2ypk4k47z8u6/master
/// ```
class Branch extends pulumi.CustomResource {
  /// Unique ID for an Amplify app.
  late final pulumi.Output<String> appId;

  /// ARN for the branch.
  late final pulumi.Output<String> arn;

  /// A list of custom resources that are linked to this branch.
  late final pulumi.Output<List<String>> associatedResources;

  /// ARN for a backend environment that is part of an Amplify app.
  late final pulumi.Output<String?> backendEnvironmentArn;

  /// Basic authorization credentials for the branch.
  late final pulumi.Output<String?> basicAuthCredentials;

  /// Name for the branch.
  late final pulumi.Output<String> branchName;

  /// Custom domains for the branch.
  late final pulumi.Output<List<String>> customDomains;

  /// Description for the branch.
  late final pulumi.Output<String?> description;

  /// Destination branch if the branch is a pull request branch.
  late final pulumi.Output<String> destinationBranch;

  /// Display name for a branch. This is used as the default domain prefix.
  late final pulumi.Output<String> displayName;

  /// Enables auto building for the branch.
  late final pulumi.Output<bool?> enableAutoBuild;

  /// Enables basic authorization for the branch.
  late final pulumi.Output<bool?> enableBasicAuth;

  /// Enables notifications for the branch.
  late final pulumi.Output<bool?> enableNotification;

  /// Enables performance mode for the branch.
  late final pulumi.Output<bool?> enablePerformanceMode;

  /// Enables pull request previews for this branch.
  late final pulumi.Output<bool?> enablePullRequestPreview;

  /// Enables skew protection for the branch.
  late final pulumi.Output<bool?> enableSkewProtection;

  /// Environment variables for the branch.
  late final pulumi.Output<Map<String, String>?> environmentVariables;

  /// Framework for the branch.
  late final pulumi.Output<String?> framework;

  /// Amplify environment name for the pull request.
  late final pulumi.Output<String?> pullRequestEnvironmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Source branch if the branch is a pull request branch.
  late final pulumi.Output<String> sourceBranch;

  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  late final pulumi.Output<String?> stage;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Content Time To Live (TTL) for the website in seconds.
  late final pulumi.Output<String?> ttl;

  /// Creates a new [Branch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Branch]. {@macro pulumi_amplify_branch_branch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Branch(String name, {BranchArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:amplify/branch:Branch',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.associatedResources = registerOutput<List<String>>(
      'associatedResources',
    );
    this.backendEnvironmentArn = registerOutput<String?>(
      'backendEnvironmentArn',
    );
    this.basicAuthCredentials = registerOutput<String?>('basicAuthCredentials');
    this.branchName = registerOutput<String>('branchName');
    this.customDomains = registerOutput<List<String>>('customDomains');
    this.description = registerOutput<String?>('description');
    this.destinationBranch = registerOutput<String>('destinationBranch');
    this.displayName = registerOutput<String>('displayName');
    this.enableAutoBuild = registerOutput<bool?>('enableAutoBuild');
    this.enableBasicAuth = registerOutput<bool?>('enableBasicAuth');
    this.enableNotification = registerOutput<bool?>('enableNotification');
    this.enablePerformanceMode = registerOutput<bool?>('enablePerformanceMode');
    this.enablePullRequestPreview = registerOutput<bool?>(
      'enablePullRequestPreview',
    );
    this.enableSkewProtection = registerOutput<bool?>('enableSkewProtection');
    this.environmentVariables = registerOutput<Map<String, String>?>(
      'environmentVariables',
    );
    this.framework = registerOutput<String?>('framework');
    this.pullRequestEnvironmentName = registerOutput<String?>(
      'pullRequestEnvironmentName',
    );
    this.region = registerOutput<String>('region');
    this.sourceBranch = registerOutput<String>('sourceBranch');
    this.stage = registerOutput<String?>('stage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<String?>('ttl');
  }
}
