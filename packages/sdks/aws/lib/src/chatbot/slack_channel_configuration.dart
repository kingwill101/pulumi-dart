import 'package:pulumi/pulumi.dart' as pulumi;
import 'slack_channel_configuration_args.dart';
import 'slack_channel_configuration_state.dart';
import 'slack_channel_configuration_timeouts.dart';

/// Resource for managing an AWS Chatbot Slack Channel Configuration.
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
/// const test = new aws.chatbot.SlackChannelConfiguration("test", {
///     configurationName: "min-slaka-kanal",
///     iamRoleArn: testAwsIamRole.arn,
///     slackChannelId: "C07EZ1ABC23",
///     slackTeamId: "T07EA123LEP",
///     tags: {
///         Name: "min-slaka-kanal",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.chatbot.SlackChannelConfiguration("test",
///     configuration_name="min-slaka-kanal",
///     iam_role_arn=test_aws_iam_role["arn"],
///     slack_channel_id="C07EZ1ABC23",
///     slack_team_id="T07EA123LEP",
///     tags={
///         "Name": "min-slaka-kanal",
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
///     var test = new Aws.Chatbot.SlackChannelConfiguration("test", new()
///     {
///         ConfigurationName = "min-slaka-kanal",
///         IamRoleArn = testAwsIamRole.Arn,
///         SlackChannelId = "C07EZ1ABC23",
///         SlackTeamId = "T07EA123LEP",
///         Tags =
///         {
///             { "Name", "min-slaka-kanal" },
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
/// 		_, err := chatbot.NewSlackChannelConfiguration(ctx, "test", &chatbot.SlackChannelConfigurationArgs{
/// 			ConfigurationName: pulumi.String("min-slaka-kanal"),
/// 			IamRoleArn:        pulumi.Any(testAwsIamRole.Arn),
/// 			SlackChannelId:    pulumi.String("C07EZ1ABC23"),
/// 			SlackTeamId:       pulumi.String("T07EA123LEP"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("min-slaka-kanal"),
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
/// resource "aws_chatbot_slackchannelconfiguration" "test" {
///   configuration_name = "min-slaka-kanal"
///   iam_role_arn       = testAwsIamRole.arn
///   slack_channel_id   = "C07EZ1ABC23"
///   slack_team_id      = "T07EA123LEP"
///   tags = {
///     "Name" = "min-slaka-kanal"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chatbot.SlackChannelConfiguration;
/// import com.pulumi.aws.chatbot.SlackChannelConfigurationArgs;
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
///         var test = new SlackChannelConfiguration("test", SlackChannelConfigurationArgs.builder()
///             .configurationName("min-slaka-kanal")
///             .iamRoleArn(testAwsIamRole.arn())
///             .slackChannelId("C07EZ1ABC23")
///             .slackTeamId("T07EA123LEP")
///             .tags(Map.of("Name", "min-slaka-kanal"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:chatbot:SlackChannelConfiguration
///     properties:
///       configurationName: min-slaka-kanal
///       iamRoleArn: ${testAwsIamRole.arn}
///       slackChannelId: C07EZ1ABC23
///       slackTeamId: T07EA123LEP
///       tags:
///         Name: min-slaka-kanal
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chatbot Slack Channel Configuration using the `chatConfigurationArn`. For example:
///
/// ```sh
/// $ pulumi import aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration example arn:aws:chatbot::123456789012:chat-configuration/slack-channel/min-slaka-kanal
/// ```
class SlackChannelConfiguration extends pulumi.CustomResource {
  /// ARN of the Slack channel configuration.
  late final pulumi.Output<String> chatConfigurationArn;
  /// Name of the Slack channel configuration.
  late final pulumi.Output<String> configurationName;
  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  late final pulumi.Output<List<String>> guardrailPolicyArns;
  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  late final pulumi.Output<String> iamRoleArn;
  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  late final pulumi.Output<String> loggingLevel;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  late final pulumi.Output<String> slackChannelId;
  /// Name of the Slack channel.
  late final pulumi.Output<String> slackChannelName;
  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> slackTeamId;
  /// Name of the Slack team.
  late final pulumi.Output<String> slackTeamName;
  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  late final pulumi.Output<List<String>> snsTopicArns;
  /// Map of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SlackChannelConfigurationTimeouts?> timeouts;
  /// Enables use of a user role requirement in your chat configuration.
  late final pulumi.Output<bool> userAuthorizationRequired;

  /// Creates a new [SlackChannelConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SlackChannelConfiguration]. {@macro pulumi_chatbot_slack_channel_configuration_slack_channel_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SlackChannelConfiguration(
    String name, {
    SlackChannelConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    chatConfigurationArn = registerOutput<String>('chatConfigurationArn');
    configurationName = registerOutput<String>('configurationName');
    guardrailPolicyArns = registerOutput<List<String>>('guardrailPolicyArns');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    loggingLevel = registerOutput<String>('loggingLevel');
    region = registerOutput<String>('region');
    slackChannelId = registerOutput<String>('slackChannelId');
    slackChannelName = registerOutput<String>('slackChannelName');
    slackTeamId = registerOutput<String>('slackTeamId');
    slackTeamName = registerOutput<String>('slackTeamName');
    snsTopicArns = registerOutput<List<String>>('snsTopicArns');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<SlackChannelConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlackChannelConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userAuthorizationRequired = registerOutput<bool>('userAuthorizationRequired');
  }

  /// Gets an existing [SlackChannelConfiguration] resource's state with the given [name] and [id].
  static SlackChannelConfiguration get(
    String name,
    pulumi.Input<String> id, {
    SlackChannelConfigurationState? state,
  }) {
    return SlackChannelConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SlackChannelConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    chatConfigurationArn = registerOutput<String>('chatConfigurationArn');
    configurationName = registerOutput<String>('configurationName');
    guardrailPolicyArns = registerOutput<List<String>>('guardrailPolicyArns');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    loggingLevel = registerOutput<String>('loggingLevel');
    region = registerOutput<String>('region');
    slackChannelId = registerOutput<String>('slackChannelId');
    slackChannelName = registerOutput<String>('slackChannelName');
    slackTeamId = registerOutput<String>('slackTeamId');
    slackTeamName = registerOutput<String>('slackTeamName');
    snsTopicArns = registerOutput<List<String>>('snsTopicArns');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<SlackChannelConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlackChannelConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userAuthorizationRequired = registerOutput<bool>('userAuthorizationRequired');
  }
}
