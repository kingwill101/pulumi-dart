import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_bot_args.dart';
import 'v2models_bot_state.dart';
import 'v2models_bot_timeouts.dart';

/// Resource for managing an AWS Lex V2 Models Bot.
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
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Sid: "",
///             Principal: {
///                 Service: "lexv2.amazonaws.com",
///             },
///         }],
///     }),
///     tags: {
///         created_by: "aws",
///     },
/// });
/// const example = new aws.lex.V2modelsBot("example", {
///     name: "example",
///     description: "Example description",
///     dataPrivacies: [{
///         childDirected: false,
///     }],
///     idleSessionTtlInSeconds: 60,
///     roleArn: exampleRole.arn,
///     type: "Bot",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Sid": "",
///             "Principal": {
///                 "Service": "lexv2.amazonaws.com",
///             },
///         }],
///     }),
///     tags={
///         "created_by": "aws",
///     })
/// example = aws.lex.V2modelsBot("example",
///     name="example",
///     description="Example description",
///     data_privacies=[{
///         "child_directed": False,
///     }],
///     idle_session_ttl_in_seconds=60,
///     role_arn=example_role.arn,
///     type="Bot",
///     tags={
///         "foo": "bar",
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
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "lexv2.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "created_by", "aws" },
///         },
///     });
///
///     var example = new Aws.Lex.V2modelsBot("example", new()
///     {
///         Name = "example",
///         Description = "Example description",
///         DataPrivacies = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsBotDataPrivacyArgs
///             {
///                 ChildDirected = false,
///             },
///         },
///         IdleSessionTtlInSeconds = 60,
///         RoleArn = exampleRole.Arn,
///         Type = "Bot",
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
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
/// 					"Sid":    "",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "lexv2.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"created_by": pulumi.String("aws"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lex.NewV2modelsBot(ctx, "example", &lex.V2modelsBotArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example description"),
/// 			DataPrivacies: lex.V2modelsBotDataPrivacyArray{
/// 				&lex.V2modelsBotDataPrivacyArgs{
/// 					ChildDirected: pulumi.Bool(false),
/// 				},
/// 			},
/// 			IdleSessionTtlInSeconds: pulumi.Int(60),
/// 			RoleArn:                 exampleRole.Arn,
/// 			Type:                    pulumi.String("Bot"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.lex.V2modelsBot;
/// import com.pulumi.aws.lex.V2modelsBotArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotDataPrivacyArgs;
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
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "lexv2.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .tags(Map.of("created_by", "aws"))
///             .build());
///
///         var example = new V2modelsBot("example", V2modelsBotArgs.builder()
///             .name("example")
///             .description("Example description")
///             .dataPrivacies(V2modelsBotDataPrivacyArgs.builder()
///                 .childDirected(false)
///                 .build())
///             .idleSessionTtlInSeconds(60)
///             .roleArn(exampleRole.arn())
///             .type("Bot")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:V2modelsBot
///     properties:
///       name: example
///       description: Example description
///       dataPrivacies:
///         - childDirected: false
///       idleSessionTtlInSeconds: 60
///       roleArn: ${exampleRole.arn}
///       type: Bot
///       tags:
///         foo: bar
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: lexv2.amazonaws.com
///       tags:
///         created_by: aws
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBot:V2modelsBot example bot-id-12345678
/// ```
class V2modelsBot extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See `data_privacy`
  late final pulumi.Output<List<Map<String, dynamic>>> dataPrivacies;
  /// Description of the bot. It appears in lists to help you identify a particular bot.
  late final pulumi.Output<String?> description;
  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  late final pulumi.Output<int> idleSessionTtlInSeconds;
  /// List of bot members in a network to be created. See `bot_members`.
  late final pulumi.Output<List<Map<String, dynamic>>?> members;
  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// List of tags to add to the bot. You can only add tags when you create a bot.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  late final pulumi.Output<Map<String, String>?> testBotAliasTags;
  late final pulumi.Output<V2modelsBotTimeouts?> timeouts;
  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  late final pulumi.Output<String> type;

  /// Creates a new [V2modelsBot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2modelsBot]. {@macro pulumi_lex_v2models_bot_v2models_bot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2modelsBot(
    String name, {
    V2modelsBotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBot:V2modelsBot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dataPrivacies = registerOutput<List<Map<String, dynamic>>>('dataPrivacies');
    description = registerOutput<String?>('description');
    idleSessionTtlInSeconds = registerOutput<int>('idleSessionTtlInSeconds');
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    testBotAliasTags = registerOutput<Map<String, String>?>('testBotAliasTags');
    timeouts = registerOutput<V2modelsBotTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsBotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [V2modelsBot] resource's state with the given [name] and [id].
  static V2modelsBot get(
    String name,
    pulumi.Input<String> id, {
    V2modelsBotState? state,
  }) {
    return V2modelsBot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2modelsBot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBot:V2modelsBot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dataPrivacies = registerOutput<List<Map<String, dynamic>>>('dataPrivacies');
    description = registerOutput<String?>('description');
    idleSessionTtlInSeconds = registerOutput<int>('idleSessionTtlInSeconds');
    members = registerOutput<List<Map<String, dynamic>>?>('members');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    testBotAliasTags = registerOutput<Map<String, String>?>('testBotAliasTags');
    timeouts = registerOutput<V2modelsBotTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsBotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
