import 'package:pulumi/pulumi.dart';
import '../v2models_bot_data_privacy/v2models_bot_data_privacy.dart';
import '../v2models_bot_member/v2models_bot_member.dart';
import '../v2models_bot_timeouts/v2models_bot_timeouts.dart';
import 'v2models_bot_args.dart';

/// Resource for managing an AWS Lex V2 Models Bot.
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
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "lexv2.amazonaws.com",
/// },
/// }],
/// }),
/// tags: {
/// created_by: "aws",
/// },
/// });
/// const example = new aws.lex.V2modelsBot("example", {
/// name: "example",
/// description: "Example description",
/// dataPrivacies: [{
/// childDirected: false,
/// }],
/// idleSessionTtlInSeconds: 60,
/// roleArn: exampleRole.arn,
/// type: "Bot",
/// tags: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_role = aws.iam.Role("example",
/// name="example",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "lexv2.amazonaws.com",
/// },
/// }],
/// }),
/// tags={
/// "created_by": "aws",
/// })
/// example = aws.lex.V2modelsBot("example",
/// name="example",
/// description="Example description",
/// data_privacies=[{
/// "child_directed": False,
/// }],
/// idle_session_ttl_in_seconds=60,
/// role_arn=example_role.arn,
/// type="Bot",
/// tags={
/// "foo": "bar",
/// })
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
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "lexv2.amazonaws.com",
/// },
/// },
/// },
/// }),
/// Tags =
/// {
/// { "created_by", "aws" },
/// },
/// });
///
/// var example = new Aws.Lex.V2modelsBot("example", new()
/// {
/// Name = "example",
/// Description = "Example description",
/// DataPrivacies = new[]
/// {
/// new Aws.Lex.Inputs.V2modelsBotDataPrivacyArgs
/// {
/// ChildDirected = false,
/// },
/// },
/// IdleSessionTtlInSeconds = 60,
/// RoleArn = exampleRole.Arn,
/// Type = "Bot",
/// Tags =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "lexv2.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(json0),
/// Tags: pulumi.StringMap{
/// "created_by": pulumi.String("aws"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lex.NewV2modelsBot(ctx, "example", &lex.V2modelsBotArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("Example description"),
/// DataPrivacies: lex.V2modelsBotDataPrivacyArray{
/// &lex.V2modelsBotDataPrivacyArgs{
/// ChildDirected: pulumi.Bool(false),
/// },
/// },
/// IdleSessionTtlInSeconds: pulumi.Int(60),
/// RoleArn:                 exampleRole.Arn,
/// Type:                    pulumi.String("Bot"),
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "lexv2.amazonaws.com")
/// ))
/// )))
/// )))
/// .tags(Map.of("created_by", "aws"))
/// .build());
///
/// var example = new V2modelsBot("example", V2modelsBotArgs.builder()
/// .name("example")
/// .description("Example description")
/// .dataPrivacies(V2modelsBotDataPrivacyArgs.builder()
/// .childDirected(false)
/// .build())
/// .idleSessionTtlInSeconds(60)
/// .roleArn(exampleRole.arn())
/// .type("Bot")
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lex:V2modelsBot
/// properties:
/// name: example
/// description: Example description
/// dataPrivacies:
/// - childDirected: false
/// idleSessionTtlInSeconds: 60
/// roleArn: ${exampleRole.arn}
/// type: Bot
/// tags:
/// foo: bar
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: lexv2.amazonaws.com
/// tags:
/// created_by: aws
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Bot using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsBot:V2modelsBot example bot-id-12345678
/// ```
class V2modelsBot extends CustomResource {
  late final Output<String> arn;

  /// Provides information on additional privacy protections Amazon Lex should use with the bot's data. See <span pulumi-lang-nodejs="`dataPrivacy`" pulumi-lang-dotnet="`DataPrivacy`" pulumi-lang-go="`dataPrivacy`" pulumi-lang-python="`data_privacy`" pulumi-lang-yaml="`dataPrivacy`" pulumi-lang-java="`dataPrivacy`">`data_privacy`</span>
  late final Output<List<V2modelsBotDataPrivacy>> dataPrivacies;

  /// Description of the bot. It appears in lists to help you identify a particular bot.
  late final Output<String?> description;

  /// Time, in seconds, that Amazon Lex should keep information about a user's conversation with the bot. You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
  late final Output<int> idleSessionTtlInSeconds;

  /// List of bot members in a network to be created. See <span pulumi-lang-nodejs="`botMembers`" pulumi-lang-dotnet="`BotMembers`" pulumi-lang-go="`botMembers`" pulumi-lang-python="`bot_members`" pulumi-lang-yaml="`botMembers`" pulumi-lang-java="`botMembers`">`bot_members`</span>.
  late final Output<List<V2modelsBotMember>?> members;

  /// Name of the bot. The bot name must be unique in the account that creates the bot. Type String. Length Constraints: Minimum length of 1. Maximum length of 100.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an IAM role that has permission to access the bot.
  ///
  /// The following arguments are optional:
  late final Output<String> roleArn;

  /// List of tags to add to the bot. You can only add tags when you create a bot.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// List of tags to add to the test alias for a bot. You can only add tags when you create a bot.
  late final Output<Map<String, String>?> testBotAliasTags;
  late final Output<V2modelsBotTimeouts?> timeouts;

  /// Type of a bot to create. Possible values are `"Bot"` and `"BotNetwork"`.
  late final Output<String> type;

  V2modelsBot(
    String name, {
    V2modelsBotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsBot:V2modelsBot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataPrivacies =
        registerOutput<List<V2modelsBotDataPrivacy>>('dataPrivacies');
    this.description = registerOutput<String?>('description');
    this.idleSessionTtlInSeconds =
        registerOutput<int>('idleSessionTtlInSeconds');
    this.members = registerOutput<List<V2modelsBotMember>?>('members');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.testBotAliasTags =
        registerOutput<Map<String, String>?>('testBotAliasTags');
    this.timeouts = registerOutput<V2modelsBotTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
