import 'package:pulumi/pulumi.dart';
import '../slack_channel_configuration_timeouts/slack_channel_configuration_timeouts.dart';
import 'slack_channel_configuration_args.dart';

/// Resource for managing an AWS Chatbot Slack Channel Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.chatbot.SlackChannelConfiguration("test", {
/// configurationName: "min-slaka-kanal",
/// iamRoleArn: testAwsIamRole.arn,
/// slackChannelId: "C07EZ1ABC23",
/// slackTeamId: "T07EA123LEP",
/// tags: {
/// Name: "min-slaka-kanal",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.chatbot.SlackChannelConfiguration("test",
/// configuration_name="min-slaka-kanal",
/// iam_role_arn=test_aws_iam_role["arn"],
/// slack_channel_id="C07EZ1ABC23",
/// slack_team_id="T07EA123LEP",
/// tags={
/// "Name": "min-slaka-kanal",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Chatbot.SlackChannelConfiguration("test", new()
/// {
/// ConfigurationName = "min-slaka-kanal",
/// IamRoleArn = testAwsIamRole.Arn,
/// SlackChannelId = "C07EZ1ABC23",
/// SlackTeamId = "T07EA123LEP",
/// Tags =
/// {
/// { "Name", "min-slaka-kanal" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chatbot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chatbot.NewSlackChannelConfiguration(ctx, "test", &chatbot.SlackChannelConfigurationArgs{
/// ConfigurationName: pulumi.String("min-slaka-kanal"),
/// IamRoleArn:        pulumi.Any(testAwsIamRole.Arn),
/// SlackChannelId:    pulumi.String("C07EZ1ABC23"),
/// SlackTeamId:       pulumi.String("T07EA123LEP"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("min-slaka-kanal"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new SlackChannelConfiguration("test", SlackChannelConfigurationArgs.builder()
/// .configurationName("min-slaka-kanal")
/// .iamRoleArn(testAwsIamRole.arn())
/// .slackChannelId("C07EZ1ABC23")
/// .slackTeamId("T07EA123LEP")
/// .tags(Map.of("Name", "min-slaka-kanal"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:chatbot:SlackChannelConfiguration
/// properties:
/// configurationName: min-slaka-kanal
/// iamRoleArn: ${testAwsIamRole.arn}
/// slackChannelId: C07EZ1ABC23
/// slackTeamId: T07EA123LEP
/// tags:
/// Name: min-slaka-kanal
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Chatbot Slack Channel Configuration using the <span pulumi-lang-nodejs="`chatConfigurationArn`" pulumi-lang-dotnet="`ChatConfigurationArn`" pulumi-lang-go="`chatConfigurationArn`" pulumi-lang-python="`chat_configuration_arn`" pulumi-lang-yaml="`chatConfigurationArn`" pulumi-lang-java="`chatConfigurationArn`">`chat_configuration_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration example arn:aws:chatbot::123456789012:chat-configuration/slack-channel/min-slaka-kanal
/// ```
class SlackChannelConfiguration extends CustomResource {
  /// ARN of the Slack channel configuration.
  late final Output<String> chatConfigurationArn;

  /// Name of the Slack channel configuration.
  late final Output<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  late final Output<List<String>> guardrailPolicyArns;

  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  late final Output<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  late final Output<String> loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  late final Output<String> slackChannelId;

  /// Name of the Slack channel.
  late final Output<String> slackChannelName;

  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  late final Output<String> slackTeamId;

  /// Name of the Slack team.
  late final Output<String> slackTeamName;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  late final Output<List<String>> snsTopicArns;

  /// Map of tags assigned to the resource.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<SlackChannelConfigurationTimeouts?> timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  late final Output<bool> userAuthorizationRequired;

  SlackChannelConfiguration(
    String name, {
    SlackChannelConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chatConfigurationArn = Output.createUnknown<String>();
    this.configurationName = Output.createUnknown<String>();
    this.guardrailPolicyArns = Output.createUnknown<List<String>>();
    this.iamRoleArn = Output.createUnknown<String>();
    this.loggingLevel = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.slackChannelId = Output.createUnknown<String>();
    this.slackChannelName = Output.createUnknown<String>();
    this.slackTeamId = Output.createUnknown<String>();
    this.slackTeamName = Output.createUnknown<String>();
    this.snsTopicArns = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<SlackChannelConfigurationTimeouts?>();
    this.userAuthorizationRequired = Output.createUnknown<bool>();
  }
}
