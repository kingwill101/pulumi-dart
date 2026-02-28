import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_channel_configuration_args.dart';
import 'teams_channel_configuration_timeouts.dart';

/// Resource for managing an AWS Chatbot Microsoft Teams Channel Configuration.
///
/// > **NOTE:** We provide this resource on a best-effort basis. If you are able to test it and find it useful, we welcome your input at GitHub.
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
/// const test = new aws.chatbot.TeamsChannelConfiguration("test", {
///     channelId: "C07EZ1ABC23",
///     configurationName: "mitt-lags-kanal",
///     iamRoleArn: testAwsIamRole.arn,
///     teamId: "74361522-da01-538d-aa2e-ac7918c6bb92",
///     tenantId: "1234",
///     tags: {
///         Name: "mitt-lags-kanal",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.chatbot.TeamsChannelConfiguration("test",
///     channel_id="C07EZ1ABC23",
///     configuration_name="mitt-lags-kanal",
///     iam_role_arn=test_aws_iam_role["arn"],
///     team_id="74361522-da01-538d-aa2e-ac7918c6bb92",
///     tenant_id="1234",
///     tags={
///         "Name": "mitt-lags-kanal",
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
///     var test = new Aws.Chatbot.TeamsChannelConfiguration("test", new()
///     {
///         ChannelId = "C07EZ1ABC23",
///         ConfigurationName = "mitt-lags-kanal",
///         IamRoleArn = testAwsIamRole.Arn,
///         TeamId = "74361522-da01-538d-aa2e-ac7918c6bb92",
///         TenantId = "1234",
///         Tags =
///         {
///             { "Name", "mitt-lags-kanal" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chatbot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chatbot.NewTeamsChannelConfiguration(ctx, "test", &chatbot.TeamsChannelConfigurationArgs{
/// 			ChannelId:         pulumi.String("C07EZ1ABC23"),
/// 			ConfigurationName: pulumi.String("mitt-lags-kanal"),
/// 			IamRoleArn:        pulumi.Any(testAwsIamRole.Arn),
/// 			TeamId:            pulumi.String("74361522-da01-538d-aa2e-ac7918c6bb92"),
/// 			TenantId:          pulumi.String("1234"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("mitt-lags-kanal"),
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
/// import com.pulumi.aws.chatbot.TeamsChannelConfiguration;
/// import com.pulumi.aws.chatbot.TeamsChannelConfigurationArgs;
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
///         var test = new TeamsChannelConfiguration("test", TeamsChannelConfigurationArgs.builder()
///             .channelId("C07EZ1ABC23")
///             .configurationName("mitt-lags-kanal")
///             .iamRoleArn(testAwsIamRole.arn())
///             .teamId("74361522-da01-538d-aa2e-ac7918c6bb92")
///             .tenantId("1234")
///             .tags(Map.of("Name", "mitt-lags-kanal"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:chatbot:TeamsChannelConfiguration
///     properties:
///       channelId: C07EZ1ABC23
///       configurationName: mitt-lags-kanal
///       iamRoleArn: ${testAwsIamRole.arn}
///       teamId: 74361522-da01-538d-aa2e-ac7918c6bb92
///       tenantId: '1234'
///       tags:
///         Name: mitt-lags-kanal
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chatbot Microsoft Teams Channel Configuration using the `team_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chatbot/teamsChannelConfiguration:TeamsChannelConfiguration example 5f4f15d2-b958-522a-8333-124aa8bf0925
/// ```
class TeamsChannelConfiguration extends pulumi.CustomResource {
  /// ID of the Microsoft Teams channel.
  late final pulumi.Output<String> channelId;

  /// Name of the Microsoft Teams channel.
  late final pulumi.Output<String> channelName;

  /// ARN of the Microsoft Teams channel configuration.
  late final pulumi.Output<String> chatConfigurationArn;

  /// Name of the Microsoft Teams channel configuration.
  late final pulumi.Output<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  late final pulumi.Output<List<String>> guardrailPolicyArns;

  /// ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  late final pulumi.Output<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  late final pulumi.Output<String> loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  late final pulumi.Output<List<String>> snsTopicArns;

  /// Map of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  late final pulumi.Output<String> teamId;

  /// Name of the Microsoft Teams team.
  late final pulumi.Output<String> teamName;

  /// ID of the Microsoft Teams tenant.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tenantId;
  late final pulumi.Output<TeamsChannelConfigurationTimeouts?> timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  late final pulumi.Output<bool> userAuthorizationRequired;

  /// Creates a new [TeamsChannelConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamsChannelConfiguration]. {@macro pulumi_chatbot_teams_channel_configuration_teams_channel_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamsChannelConfiguration(
    String name, {
    TeamsChannelConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/teamsChannelConfiguration:TeamsChannelConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channelId = registerOutput<String>('channelId');
    this.channelName = registerOutput<String>('channelName');
    this.chatConfigurationArn = registerOutput<String>('chatConfigurationArn');
    this.configurationName = registerOutput<String>('configurationName');
    this.guardrailPolicyArns =
        registerOutput<List<String>>('guardrailPolicyArns');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.loggingLevel = registerOutput<String>('loggingLevel');
    this.region = registerOutput<String>('region');
    this.snsTopicArns = registerOutput<List<String>>('snsTopicArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.teamId = registerOutput<String>('teamId');
    this.teamName = registerOutput<String>('teamName');
    this.tenantId = registerOutput<String>('tenantId');
    this.timeouts =
        registerOutput<TeamsChannelConfigurationTimeouts?>('timeouts');
    this.userAuthorizationRequired =
        registerOutput<bool>('userAuthorizationRequired');
  }
}
