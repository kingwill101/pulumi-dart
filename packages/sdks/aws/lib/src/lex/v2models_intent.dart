import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_args.dart';
import 'v2models_intent_closing_setting.dart';
import 'v2models_intent_confirmation_setting.dart';
import 'v2models_intent_dialog_code_hook.dart';
import 'v2models_intent_fulfillment_code_hook.dart';
import 'v2models_intent_initial_response_setting.dart';
import 'v2models_intent_input_context.dart';
import 'v2models_intent_kendra_configuration.dart';
import 'v2models_intent_output_context.dart';
import 'v2models_intent_qna_intent_configuration.dart';
import 'v2models_intent_sample_utterance.dart';
import 'v2models_intent_slot_priority.dart';
import 'v2models_intent_state.dart';
import 'v2models_intent_timeouts.dart';

/// Resource for managing an AWS Lex V2 Models Intent.
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
/// const current = aws.getPartition({});
/// const test = new aws.iam.Role("test", {
///     name: "botens_namn",
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
/// });
/// const testRolePolicyAttachment = new aws.iam.RolePolicyAttachment("test", {
///     role: test.name,
///     policyArn: current.then(current => `arn:${current.partition}:iam::aws:policy/AmazonLexFullAccess`),
/// });
/// const testV2modelsBot = new aws.lex.V2modelsBot("test", {
///     dataPrivacies: [{
///         childDirected: true,
///     }],
///     name: "botens_namn",
///     idleSessionTtlInSeconds: 60,
///     roleArn: test.arn,
/// });
/// const testV2modelsBotLocale = new aws.lex.V2modelsBotLocale("test", {
///     localeId: "en_US",
///     botId: testV2modelsBot.id,
///     botVersion: "DRAFT",
///     nLuIntentConfidenceThreshold: 0.7,
/// });
/// const testV2modelsBotVersion = new aws.lex.V2modelsBotVersion("test", {
///     botId: testV2modelsBot.id,
///     localeSpecification: testV2modelsBotLocale.localeId.apply(localeId => {
///         [localeId]: {
///             sourceBotVersion: "DRAFT",
///         },
///     }),
/// });
/// const example = new aws.lex.V2modelsIntent("example", {
///     botId: testV2modelsBot.id,
///     botVersion: testV2modelsBotLocale.botVersion,
///     name: "botens_namn",
///     localeId: testV2modelsBotLocale.localeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// test = aws.iam.Role("test",
///     name="botens_namn",
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
///     }))
/// test_role_policy_attachment = aws.iam.RolePolicyAttachment("test",
///     role=test.name,
///     policy_arn=f"arn:{current.partition}:iam::aws:policy/AmazonLexFullAccess")
/// test_v2models_bot = aws.lex.V2modelsBot("test",
///     data_privacies=[{
///         "child_directed": True,
///     }],
///     name="botens_namn",
///     idle_session_ttl_in_seconds=60,
///     role_arn=test.arn)
/// test_v2models_bot_locale = aws.lex.V2modelsBotLocale("test",
///     locale_id="en_US",
///     bot_id=test_v2models_bot.id,
///     bot_version="DRAFT",
///     n_lu_intent_confidence_threshold=0.7)
/// test_v2models_bot_version = aws.lex.V2modelsBotVersion("test",
///     bot_id=test_v2models_bot.id,
///     locale_specification=test_v2models_bot_locale.locale_id.apply(lambda locale_id: {
///         locale_id: {
///             "sourceBotVersion": "DRAFT",
///         },
///     }))
/// example = aws.lex.V2modelsIntent("example",
///     bot_id=test_v2models_bot.id,
///     bot_version=test_v2models_bot_locale.bot_version,
///     name="botens_namn",
///     locale_id=test_v2models_bot_locale.locale_id)
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
///     var current = Aws.GetPartition.Invoke();
///
///     var test = new Aws.Iam.Role("test", new()
///     {
///         Name = "botens_namn",
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
///     });
///
///     var testRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("test", new()
///     {
///         Role = test.Name,
///         PolicyArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::aws:policy/AmazonLexFullAccess",
///     });
///
///     var testV2modelsBot = new Aws.Lex.V2modelsBot("test", new()
///     {
///         DataPrivacies = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsBotDataPrivacyArgs
///             {
///                 ChildDirected = true,
///             },
///         },
///         Name = "botens_namn",
///         IdleSessionTtlInSeconds = 60,
///         RoleArn = test.Arn,
///     });
///
///     var testV2modelsBotLocale = new Aws.Lex.V2modelsBotLocale("test", new()
///     {
///         LocaleId = "en_US",
///         BotId = testV2modelsBot.Id,
///         BotVersion = "DRAFT",
///         NLuIntentConfidenceThreshold = 0.7,
///     });
///
///     var testV2modelsBotVersion = new Aws.Lex.V2modelsBotVersion("test", new()
///     {
///         BotId = testV2modelsBot.Id,
///         LocaleSpecification = testV2modelsBotLocale.LocaleId.Apply(localeId =>
///         {
///             { localeId,
///             {
///                 { "sourceBotVersion", "DRAFT" },
///             } },
///         }),
///     });
///
///     var example = new Aws.Lex.V2modelsIntent("example", new()
///     {
///         BotId = testV2modelsBot.Id,
///         BotVersion = testV2modelsBotLocale.BotVersion,
///         Name = "botens_namn",
///         LocaleId = testV2modelsBotLocale.LocaleId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 					"Principal": map[string]string{
/// 						"Service": "lexv2.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		test, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// 			Name:             pulumi.String("botens_namn"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "test", &iam.RolePolicyAttachmentArgs{
/// 			Role:      test.Name,
/// 			PolicyArn: pulumi.Sprintf("arn:%v:iam::aws:policy/AmazonLexFullAccess", current.Partition),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testV2modelsBot, err := lex.NewV2modelsBot(ctx, "test", &lex.V2modelsBotArgs{
/// 			DataPrivacies: lex.V2modelsBotDataPrivacyArray{
/// 				&lex.V2modelsBotDataPrivacyArgs{
/// 					ChildDirected: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Name:                    pulumi.String("botens_namn"),
/// 			IdleSessionTtlInSeconds: pulumi.Int(60),
/// 			RoleArn:                 test.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testV2modelsBotLocale, err := lex.NewV2modelsBotLocale(ctx, "test", &lex.V2modelsBotLocaleArgs{
/// 			LocaleId:                     pulumi.String("en_US"),
/// 			BotId:                        testV2modelsBot.ID().ToIDOutput().ToStringOutput(),
/// 			BotVersion:                   pulumi.String("DRAFT"),
/// 			NLuIntentConfidenceThreshold: pulumi.Float64(0.7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lex.NewV2modelsBotVersion(ctx, "test", &lex.V2modelsBotVersionArgs{
/// 			BotId: testV2modelsBot.ID().ToIDOutput().ToStringOutput(),
/// 			LocaleSpecification: testV2modelsBotLocale.LocaleId.ApplyT(func(localeId string) (map[string]map[string]string, error) {
/// 				return map[string]map[string]string{
/// 					localeId: map[string]string{
/// 						"sourceBotVersion": "DRAFT",
/// 					},
/// 				}, nil
/// 			}).(pulumi.MapOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lex.NewV2modelsIntent(ctx, "example", &lex.V2modelsIntentArgs{
/// 			BotId:      testV2modelsBot.ID().ToIDOutput().ToStringOutput(),
/// 			BotVersion: testV2modelsBotLocale.BotVersion,
/// 			Name:       pulumi.String("botens_namn"),
/// 			LocaleId:   testV2modelsBotLocale.LocaleId,
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
/// data "aws_getpartition" "current" {
/// }
///
/// resource "aws_iam_role" "test" {
///   name = "botens_namn"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Sid"    = ""
///       "Principal" = {
///         "Service" = "lexv2.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "test" {
///   role       = aws_iam_role.test.name
///   policy_arn ="arn:${data.aws_getpartition.current.partition}:iam::aws:policy/AmazonLexFullAccess"
/// }
/// resource "aws_lex_v2modelsbot" "test" {
///   data_privacies {
///     child_directed = true
///   }
///   name                        = "botens_namn"
///   idle_session_ttl_in_seconds = 60
///   role_arn                    = aws_iam_role.test.arn
/// }
/// resource "aws_lex_v2modelsbotlocale" "test" {
///   locale_id                        = "en_US"
///   bot_id                           = aws_lex_v2modelsbot.test.id
///   bot_version                      = "DRAFT"
///   n_lu_intent_confidence_threshold = 0.7
/// }
/// resource "aws_lex_v2modelsbotversion" "test" {
///   bot_id = aws_lex_v2modelsbot.test.id
///   locale_specification = {
///     aws_lex_v2modelsbotlocale.test.locale_id = {
///       source_bot_version = "DRAFT"
///     }
///   }
/// }
/// resource "aws_lex_v2modelsintent" "example" {
///   bot_id      = aws_lex_v2modelsbot.test.id
///   bot_version = aws_lex_v2modelsbotlocale.test.bot_version
///   name        = "botens_namn"
///   locale_id   = aws_lex_v2modelsbotlocale.test.locale_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.lex.V2modelsBot;
/// import com.pulumi.aws.lex.V2modelsBotArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotDataPrivacyArgs;
/// import com.pulumi.aws.lex.V2modelsBotLocale;
/// import com.pulumi.aws.lex.V2modelsBotLocaleArgs;
/// import com.pulumi.aws.lex.V2modelsBotVersion;
/// import com.pulumi.aws.lex.V2modelsBotVersionArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotVersionLocaleSpecificationArgs;
/// import com.pulumi.aws.lex.V2modelsIntent;
/// import com.pulumi.aws.lex.V2modelsIntentArgs;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var test = new Role("test", RoleArgs.builder()
///             .name("botens_namn")
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
///             .build());
///
///         var testRolePolicyAttachment = new RolePolicyAttachment("testRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(test.name())
///             .policyArn(String.format("arn:%s:iam::aws:policy/AmazonLexFullAccess", current.partition()))
///             .build());
///
///         var testV2modelsBot = new V2modelsBot("testV2modelsBot", V2modelsBotArgs.builder()
///             .dataPrivacies(V2modelsBotDataPrivacyArgs.builder()
///                 .childDirected(true)
///                 .build())
///             .name("botens_namn")
///             .idleSessionTtlInSeconds(60)
///             .roleArn(test.arn())
///             .build());
///
///         var testV2modelsBotLocale = new V2modelsBotLocale("testV2modelsBotLocale", V2modelsBotLocaleArgs.builder()
///             .localeId("en_US")
///             .botId(testV2modelsBot.id())
///             .botVersion("DRAFT")
///             .nLuIntentConfidenceThreshold(0.7)
///             .build());
///
///         var testV2modelsBotVersion = new V2modelsBotVersion("testV2modelsBotVersion", V2modelsBotVersionArgs.builder()
///             .botId(testV2modelsBot.id())
///             .localeSpecification(testV2modelsBotLocale.localeId().applyValue(_localeId -> Map.of(_localeId, Map.of("sourceBotVersion", "DRAFT"))))
///             .build());
///
///         var example = new V2modelsIntent("example", V2modelsIntentArgs.builder()
///             .botId(testV2modelsBot.id())
///             .botVersion(testV2modelsBotLocale.botVersion())
///             .name("botens_namn")
///             .localeId(testV2modelsBotLocale.localeId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:iam:Role
///     properties:
///       name: botens_namn
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: lexv2.amazonaws.com
///   testRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: test
///     properties:
///       role: ${test.name}
///       policyArn: arn:${current.partition}:iam::aws:policy/AmazonLexFullAccess
///   testV2modelsBot:
///     type: aws:lex:V2modelsBot
///     name: test
///     properties:
///       dataPrivacies:
///         - childDirected: true
///       name: botens_namn
///       idleSessionTtlInSeconds: 60
///       roleArn: ${test.arn}
///   testV2modelsBotLocale:
///     type: aws:lex:V2modelsBotLocale
///     name: test
///     properties:
///       localeId: en_US
///       botId: ${testV2modelsBot.id}
///       botVersion: DRAFT
///       nLuIntentConfidenceThreshold: 0.7
///   testV2modelsBotVersion:
///     type: aws:lex:V2modelsBotVersion
///     name: test
///     properties:
///       botId: ${testV2modelsBot.id}
///       localeSpecification:
///         ${testV2modelsBotLocale.localeId}:
///           sourceBotVersion: DRAFT
///   example:
///     type: aws:lex:V2modelsIntent
///     properties:
///       botId: ${testV2modelsBot.id}
///       botVersion: ${testV2modelsBotLocale.botVersion}
///       name: botens_namn
///       localeId: ${testV2modelsBotLocale.localeId}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ### `confirmationSetting` Example
///
/// When using `confirmationSetting`, if you do not provide a `promptAttemptsSpecification`, AWS Lex will provide default `promptAttemptsSpecification`s. As a result, Terraform will report a difference in the configuration. To avoid this behavior, include the default `promptAttemptsSpecification` configuration shown below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsIntent("example", {
///     confirmationSetting: {
///         promptSpecification: {
///             promptAttemptsSpecifications: [
///                 {
///                     allowedInputTypes: {
///                         allowAudioInput: true,
///                         allowDtmfInput: true,
///                     },
///                     audioAndDtmfInputSpecification: {
///                         audioSpecification: {
///                             endTimeoutMs: 640,
///                             maxLengthMs: 15000,
///                         },
///                         dtmfSpecification: {
///                             deletionCharacter: "*",
///                             endCharacter: "#",
///                             endTimeoutMs: 5000,
///                             maxLength: 513,
///                         },
///                         startTimeoutMs: 4000,
///                     },
///                     textInputSpecification: {
///                         startTimeoutMs: 30000,
///                     },
///                     allowInterrupt: true,
///                     mapBlockKey: "Initial",
///                 },
///                 {
///                     allowedInputTypes: {
///                         allowAudioInput: true,
///                         allowDtmfInput: true,
///                     },
///                     audioAndDtmfInputSpecification: {
///                         audioSpecification: {
///                             endTimeoutMs: 640,
///                             maxLengthMs: 15000,
///                         },
///                         dtmfSpecification: {
///                             deletionCharacter: "*",
///                             endCharacter: "#",
///                             endTimeoutMs: 5000,
///                             maxLength: 513,
///                         },
///                         startTimeoutMs: 4000,
///                     },
///                     textInputSpecification: {
///                         startTimeoutMs: 30000,
///                     },
///                     allowInterrupt: true,
///                     mapBlockKey: "Retry1",
///                 },
///             ],
///             allowInterrupt: true,
///             maxRetries: 1,
///             messageSelectionStrategy: "Ordered",
///         },
///         active: true,
///     },
///     botId: test.id,
///     botVersion: testAwsLexv2modelsBotLocale.botVersion,
///     name: "botens_namn",
///     localeId: testAwsLexv2modelsBotLocale.localeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsIntent("example",
///     confirmation_setting={
///         "prompt_specification": {
///             "prompt_attempts_specifications": [
///                 {
///                     "allowed_input_types": {
///                         "allow_audio_input": True,
///                         "allow_dtmf_input": True,
///                     },
///                     "audio_and_dtmf_input_specification": {
///                         "audio_specification": {
///                             "end_timeout_ms": 640,
///                             "max_length_ms": 15000,
///                         },
///                         "dtmf_specification": {
///                             "deletion_character": "*",
///                             "end_character": "#",
///                             "end_timeout_ms": 5000,
///                             "max_length": 513,
///                         },
///                         "start_timeout_ms": 4000,
///                     },
///                     "text_input_specification": {
///                         "start_timeout_ms": 30000,
///                     },
///                     "allow_interrupt": True,
///                     "map_block_key": "Initial",
///                 },
///                 {
///                     "allowed_input_types": {
///                         "allow_audio_input": True,
///                         "allow_dtmf_input": True,
///                     },
///                     "audio_and_dtmf_input_specification": {
///                         "audio_specification": {
///                             "end_timeout_ms": 640,
///                             "max_length_ms": 15000,
///                         },
///                         "dtmf_specification": {
///                             "deletion_character": "*",
///                             "end_character": "#",
///                             "end_timeout_ms": 5000,
///                             "max_length": 513,
///                         },
///                         "start_timeout_ms": 4000,
///                     },
///                     "text_input_specification": {
///                         "start_timeout_ms": 30000,
///                     },
///                     "allow_interrupt": True,
///                     "map_block_key": "Retry1",
///                 },
///             ],
///             "allow_interrupt": True,
///             "max_retries": 1,
///             "message_selection_strategy": "Ordered",
///         },
///         "active": True,
///     },
///     bot_id=test["id"],
///     bot_version=test_aws_lexv2models_bot_locale["botVersion"],
///     name="botens_namn",
///     locale_id=test_aws_lexv2models_bot_locale["localeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lex.V2modelsIntent("example", new()
///     {
///         ConfirmationSetting = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingArgs
///         {
///             PromptSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationArgs
///             {
///                 PromptAttemptsSpecifications = new[]
///                 {
///                     new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs
///                     {
///                         AllowedInputTypes = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
///                         {
///                             AllowAudioInput = true,
///                             AllowDtmfInput = true,
///                         },
///                         AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
///                         {
///                             AudioSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
///                             {
///                                 EndTimeoutMs = 640,
///                                 MaxLengthMs = 15000,
///                             },
///                             DtmfSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
///                             {
///                                 DeletionCharacter = "*",
///                                 EndCharacter = "#",
///                                 EndTimeoutMs = 5000,
///                                 MaxLength = 513,
///                             },
///                             StartTimeoutMs = 4000,
///                         },
///                         TextInputSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
///                         {
///                             StartTimeoutMs = 30000,
///                         },
///                         AllowInterrupt = true,
///                         MapBlockKey = "Initial",
///                     },
///                     new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs
///                     {
///                         AllowedInputTypes = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
///                         {
///                             AllowAudioInput = true,
///                             AllowDtmfInput = true,
///                         },
///                         AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
///                         {
///                             AudioSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
///                             {
///                                 EndTimeoutMs = 640,
///                                 MaxLengthMs = 15000,
///                             },
///                             DtmfSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
///                             {
///                                 DeletionCharacter = "*",
///                                 EndCharacter = "#",
///                                 EndTimeoutMs = 5000,
///                                 MaxLength = 513,
///                             },
///                             StartTimeoutMs = 4000,
///                         },
///                         TextInputSpecification = new Aws.Lex.Inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
///                         {
///                             StartTimeoutMs = 30000,
///                         },
///                         AllowInterrupt = true,
///                         MapBlockKey = "Retry1",
///                     },
///                 },
///                 AllowInterrupt = true,
///                 MaxRetries = 1,
///                 MessageSelectionStrategy = "Ordered",
///             },
///             Active = true,
///         },
///         BotId = test.Id,
///         BotVersion = testAwsLexv2modelsBotLocale.BotVersion,
///         Name = "botens_namn",
///         LocaleId = testAwsLexv2modelsBotLocale.LocaleId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.NewV2modelsIntent(ctx, "example", &lex.V2modelsIntentArgs{
/// 			ConfirmationSetting: &lex.V2modelsIntentConfirmationSettingArgs{
/// 				PromptSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationArgs{
/// 					PromptAttemptsSpecifications: lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArray{
/// 						&lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// 							AllowedInputTypes: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// 								AllowAudioInput: pulumi.Bool(true),
/// 								AllowDtmfInput:  pulumi.Bool(true),
/// 							},
/// 							AudioAndDtmfInputSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// 								AudioSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// 									EndTimeoutMs: pulumi.Int(640),
/// 									MaxLengthMs:  pulumi.Int(15000),
/// 								},
/// 								DtmfSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// 									DeletionCharacter: pulumi.String("*"),
/// 									EndCharacter:      pulumi.String("#"),
/// 									EndTimeoutMs:      pulumi.Int(5000),
/// 									MaxLength:         pulumi.Int(513),
/// 								},
/// 								StartTimeoutMs: pulumi.Int(4000),
/// 							},
/// 							TextInputSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// 								StartTimeoutMs: pulumi.Int(30000),
/// 							},
/// 							AllowInterrupt: pulumi.Bool(true),
/// 							MapBlockKey:    pulumi.String("Initial"),
/// 						},
/// 						&lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// 							AllowedInputTypes: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// 								AllowAudioInput: pulumi.Bool(true),
/// 								AllowDtmfInput:  pulumi.Bool(true),
/// 							},
/// 							AudioAndDtmfInputSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// 								AudioSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// 									EndTimeoutMs: pulumi.Int(640),
/// 									MaxLengthMs:  pulumi.Int(15000),
/// 								},
/// 								DtmfSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// 									DeletionCharacter: pulumi.String("*"),
/// 									EndCharacter:      pulumi.String("#"),
/// 									EndTimeoutMs:      pulumi.Int(5000),
/// 									MaxLength:         pulumi.Int(513),
/// 								},
/// 								StartTimeoutMs: pulumi.Int(4000),
/// 							},
/// 							TextInputSpecification: &lex.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// 								StartTimeoutMs: pulumi.Int(30000),
/// 							},
/// 							AllowInterrupt: pulumi.Bool(true),
/// 							MapBlockKey:    pulumi.String("Retry1"),
/// 						},
/// 					},
/// 					AllowInterrupt:           pulumi.Bool(true),
/// 					MaxRetries:               pulumi.Int(1),
/// 					MessageSelectionStrategy: pulumi.String("Ordered"),
/// 				},
/// 				Active: pulumi.Bool(true),
/// 			},
/// 			BotId:      pulumi.Any(test.Id),
/// 			BotVersion: pulumi.Any(testAwsLexv2modelsBotLocale.BotVersion),
/// 			Name:       pulumi.String("botens_namn"),
/// 			LocaleId:   pulumi.Any(testAwsLexv2modelsBotLocale.LocaleId),
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
/// resource "aws_lex_v2modelsintent" "example" {
///   confirmation_setting = {
///     prompt_specification = {
///       prompt_attempts_specifications = [{
///         "allowedInputTypes" = {
///           "allowAudioInput" = true
///           "allowDtmfInput"  = true
///         }
///         "audioAndDtmfInputSpecification" = {
///           "audioSpecification" = {
///             "endTimeoutMs" = 640
///             "maxLengthMs"  = 15000
///           }
///           "dtmfSpecification" = {
///             "deletionCharacter" = "*"
///             "endCharacter"      = "#"
///             "endTimeoutMs"      = 5000
///             "maxLength"         = 513
///           }
///           "startTimeoutMs" = 4000
///         }
///         "textInputSpecification" = {
///           "startTimeoutMs" = 30000
///         }
///         "allowInterrupt" = true
///         "mapBlockKey"    = "Initial"
///         }, {
///         "allowedInputTypes" = {
///           "allowAudioInput" = true
///           "allowDtmfInput"  = true
///         }
///         "audioAndDtmfInputSpecification" = {
///           "audioSpecification" = {
///             "endTimeoutMs" = 640
///             "maxLengthMs"  = 15000
///           }
///           "dtmfSpecification" = {
///             "deletionCharacter" = "*"
///             "endCharacter"      = "#"
///             "endTimeoutMs"      = 5000
///             "maxLength"         = 513
///           }
///           "startTimeoutMs" = 4000
///         }
///         "textInputSpecification" = {
///           "startTimeoutMs" = 30000
///         }
///         "allowInterrupt" = true
///         "mapBlockKey"    = "Retry1"
///       }]
///       allow_interrupt            = true
///       max_retries                = 1
///       message_selection_strategy = "Ordered"
///     }
///     active = true
///   }
///   bot_id      = test.id
///   bot_version = testAwsLexv2modelsBotLocale.botVersion
///   name        = "botens_namn"
///   locale_id   = testAwsLexv2modelsBotLocale.localeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsIntent;
/// import com.pulumi.aws.lex.V2modelsIntentArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs;
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
///         var example = new V2modelsIntent("example", V2modelsIntentArgs.builder()
///             .confirmationSetting(V2modelsIntentConfirmationSettingArgs.builder()
///                 .promptSpecification(V2modelsIntentConfirmationSettingPromptSpecificationArgs.builder()
///                     .promptAttemptsSpecifications(
///                         V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
///                             .allowedInputTypes(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
///                                 .allowAudioInput(true)
///                                 .allowDtmfInput(true)
///                                 .build())
///                             .audioAndDtmfInputSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
///                                 .audioSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
///                                     .endTimeoutMs(640)
///                                     .maxLengthMs(15000)
///                                     .build())
///                                 .dtmfSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
///                                     .deletionCharacter("*")
///                                     .endCharacter("#")
///                                     .endTimeoutMs(5000)
///                                     .maxLength(513)
///                                     .build())
///                                 .startTimeoutMs(4000)
///                                 .build())
///                             .textInputSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
///                                 .startTimeoutMs(30000)
///                                 .build())
///                             .allowInterrupt(true)
///                             .mapBlockKey("Initial")
///                             .build(),
///                         V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
///                             .allowedInputTypes(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
///                                 .allowAudioInput(true)
///                                 .allowDtmfInput(true)
///                                 .build())
///                             .audioAndDtmfInputSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
///                                 .audioSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
///                                     .endTimeoutMs(640)
///                                     .maxLengthMs(15000)
///                                     .build())
///                                 .dtmfSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
///                                     .deletionCharacter("*")
///                                     .endCharacter("#")
///                                     .endTimeoutMs(5000)
///                                     .maxLength(513)
///                                     .build())
///                                 .startTimeoutMs(4000)
///                                 .build())
///                             .textInputSpecification(V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
///                                 .startTimeoutMs(30000)
///                                 .build())
///                             .allowInterrupt(true)
///                             .mapBlockKey("Retry1")
///                             .build())
///                     .allowInterrupt(true)
///                     .maxRetries(1)
///                     .messageSelectionStrategy("Ordered")
///                     .build())
///                 .active(true)
///                 .build())
///             .botId(test.id())
///             .botVersion(testAwsLexv2modelsBotLocale.botVersion())
///             .name("botens_namn")
///             .localeId(testAwsLexv2modelsBotLocale.localeId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:V2modelsIntent
///     properties:
///       confirmationSetting:
///         promptSpecification:
///           promptAttemptsSpecifications:
///             - allowedInputTypes:
///                 allowAudioInput: true
///                 allowDtmfInput: true
///               audioAndDtmfInputSpecification:
///                 audioSpecification:
///                   endTimeoutMs: 640
///                   maxLengthMs: 15000
///                 dtmfSpecification:
///                   deletionCharacter: '*'
///                   endCharacter: '#'
///                   endTimeoutMs: 5000
///                   maxLength: 513
///                 startTimeoutMs: 4000
///               textInputSpecification:
///                 startTimeoutMs: 30000
///               allowInterrupt: true
///               mapBlockKey: Initial
///             - allowedInputTypes:
///                 allowAudioInput: true
///                 allowDtmfInput: true
///               audioAndDtmfInputSpecification:
///                 audioSpecification:
///                   endTimeoutMs: 640
///                   maxLengthMs: 15000
///                 dtmfSpecification:
///                   deletionCharacter: '*'
///                   endCharacter: '#'
///                   endTimeoutMs: 5000
///                   maxLength: 513
///                 startTimeoutMs: 4000
///               textInputSpecification:
///                 startTimeoutMs: 30000
///               allowInterrupt: true
///               mapBlockKey: Retry1
///           allowInterrupt: true
///           maxRetries: 1
///           messageSelectionStrategy: Ordered
///         active: true
///       botId: ${test.id}
///       botVersion: ${testAwsLexv2modelsBotLocale.botVersion}
///       name: botens_namn
///       localeId: ${testAwsLexv2modelsBotLocale.localeId}
/// ```
///
///
/// ### QnA Intent Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const qnaExample = new aws.lex.V2modelsIntent("qna_example", {
///     qnaIntentConfiguration: {
///         dataSourceConfiguration: {
///             kendraConfiguration: {
///                 kendraIndex: example.arn,
///                 exactResponse: true,
///                 queryFilterStringEnabled: false,
///             },
///         },
///     },
///     sampleUtterances: [{
///         utterance: "What is the answer?",
///     }],
///     botId: test.id,
///     botVersion: testAwsLexv2modelsBotLocale.botVersion,
///     name: "qna_intent",
///     localeId: testAwsLexv2modelsBotLocale.localeId,
///     parentIntentSignature: "AMAZON.QnAIntent",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// qna_example = aws.lex.V2modelsIntent("qna_example",
///     qna_intent_configuration={
///         "data_source_configuration": {
///             "kendra_configuration": {
///                 "kendra_index": example["arn"],
///                 "exact_response": True,
///                 "query_filter_string_enabled": False,
///             },
///         },
///     },
///     sample_utterances=[{
///         "utterance": "What is the answer?",
///     }],
///     bot_id=test["id"],
///     bot_version=test_aws_lexv2models_bot_locale["botVersion"],
///     name="qna_intent",
///     locale_id=test_aws_lexv2models_bot_locale["localeId"],
///     parent_intent_signature="AMAZON.QnAIntent")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qnaExample = new Aws.Lex.V2modelsIntent("qna_example", new()
///     {
///         QnaIntentConfiguration = new Aws.Lex.Inputs.V2modelsIntentQnaIntentConfigurationArgs
///         {
///             DataSourceConfiguration = new Aws.Lex.Inputs.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationArgs
///             {
///                 KendraConfiguration = new Aws.Lex.Inputs.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfigurationArgs
///                 {
///                     KendraIndex = example.Arn,
///                     ExactResponse = true,
///                     QueryFilterStringEnabled = false,
///                 },
///             },
///         },
///         SampleUtterances = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsIntentSampleUtteranceArgs
///             {
///                 Utterance = "What is the answer?",
///             },
///         },
///         BotId = test.Id,
///         BotVersion = testAwsLexv2modelsBotLocale.BotVersion,
///         Name = "qna_intent",
///         LocaleId = testAwsLexv2modelsBotLocale.LocaleId,
///         ParentIntentSignature = "AMAZON.QnAIntent",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.NewV2modelsIntent(ctx, "qna_example", &lex.V2modelsIntentArgs{
/// 			QnaIntentConfiguration: &lex.V2modelsIntentQnaIntentConfigurationArgs{
/// 				DataSourceConfiguration: &lex.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationArgs{
/// 					KendraConfiguration: &lex.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfigurationArgs{
/// 						KendraIndex:              pulumi.Any(example.Arn),
/// 						ExactResponse:            pulumi.Bool(true),
/// 						QueryFilterStringEnabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			SampleUtterances: lex.V2modelsIntentSampleUtteranceArray{
/// 				&lex.V2modelsIntentSampleUtteranceArgs{
/// 					Utterance: pulumi.String("What is the answer?"),
/// 				},
/// 			},
/// 			BotId:                 pulumi.Any(test.Id),
/// 			BotVersion:            pulumi.Any(testAwsLexv2modelsBotLocale.BotVersion),
/// 			Name:                  pulumi.String("qna_intent"),
/// 			LocaleId:              pulumi.Any(testAwsLexv2modelsBotLocale.LocaleId),
/// 			ParentIntentSignature: pulumi.String("AMAZON.QnAIntent"),
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
/// resource "aws_lex_v2modelsintent" "qna_example" {
///   qna_intent_configuration = {
///     data_source_configuration = {
///       kendra_configuration = {
///         kendra_index                = example.arn
///         exact_response              = true
///         query_filter_string_enabled = false
///       }
///     }
///   }
///   sample_utterances {
///     utterance = "What is the answer?"
///   }
///   bot_id                  = test.id
///   bot_version             = testAwsLexv2modelsBotLocale.botVersion
///   name                    = "qna_intent"
///   locale_id               = testAwsLexv2modelsBotLocale.localeId
///   parent_intent_signature = "AMAZON.QnAIntent"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsIntent;
/// import com.pulumi.aws.lex.V2modelsIntentArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentQnaIntentConfigurationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfigurationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsIntentSampleUtteranceArgs;
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
///         var qnaExample = new V2modelsIntent("qnaExample", V2modelsIntentArgs.builder()
///             .qnaIntentConfiguration(V2modelsIntentQnaIntentConfigurationArgs.builder()
///                 .dataSourceConfiguration(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationArgs.builder()
///                     .kendraConfiguration(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfigurationArgs.builder()
///                         .kendraIndex(example.arn())
///                         .exactResponse(true)
///                         .queryFilterStringEnabled(false)
///                         .build())
///                     .build())
///                 .build())
///             .sampleUtterances(V2modelsIntentSampleUtteranceArgs.builder()
///                 .utterance("What is the answer?")
///                 .build())
///             .botId(test.id())
///             .botVersion(testAwsLexv2modelsBotLocale.botVersion())
///             .name("qna_intent")
///             .localeId(testAwsLexv2modelsBotLocale.localeId())
///             .parentIntentSignature("AMAZON.QnAIntent")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   qnaExample:
///     type: aws:lex:V2modelsIntent
///     name: qna_example
///     properties:
///       qnaIntentConfiguration:
///         dataSourceConfiguration:
///           kendraConfiguration:
///             kendraIndex: ${example.arn}
///             exactResponse: true
///             queryFilterStringEnabled: false
///       sampleUtterances:
///         - utterance: What is the answer?
///       botId: ${test.id}
///       botVersion: ${testAwsLexv2modelsBotLocale.botVersion}
///       name: qna_intent
///       localeId: ${testAwsLexv2modelsBotLocale.localeId}
///       parentIntentSignature: AMAZON.QnAIntent
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Intent using the `intent_id:bot_id:bot_version:locale_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsIntent:V2modelsIntent example intent-42874:bot-11376:DRAFT:en_US
/// ```
class V2modelsIntent extends pulumi.CustomResource {
  /// Identifier of the bot associated with this intent.
  late final pulumi.Output<String> botId;
  /// Version of the bot associated with this intent.
  late final pulumi.Output<String> botVersion;
  /// Configuration block for the response that Amazon Lex sends to the user when the intent is closed. See `closingSetting`.
  late final pulumi.Output<V2modelsIntentClosingSetting?> closingSetting;
  /// Configuration block for prompts that Amazon Lex sends to the user to confirm the completion of an intent. If the user answers "no," the settings contain a statement that is sent to the user to end the intent. If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default configurations for `Initial` and `Retry1` `promptAttemptsSpecification`s. This will cause Terraform to report differences. Use the `confirmationSetting` configuration above in the Basic Usage example to avoid differences resulting from AWS default configuration. See `confirmationSetting`.
  late final pulumi.Output<V2modelsIntentConfirmationSetting?> confirmationSetting;
  /// Timestamp of the date and time that the intent was created.
  late final pulumi.Output<String> creationDateTime;
  /// Description of the intent. Use the description to help identify the intent in lists.
  late final pulumi.Output<String?> description;
  /// Configuration block for invoking the alias Lambda function for each user input. You can invoke this Lambda function to personalize user interaction. See `dialogCodeHook`.
  late final pulumi.Output<V2modelsIntentDialogCodeHook?> dialogCodeHook;
  /// Configuration block for invoking the alias Lambda function when the intent is ready for fulfillment. You can invoke this function to complete the bot's transaction with the user. See `fulfillmentCodeHook`.
  late final pulumi.Output<V2modelsIntentFulfillmentCodeHook?> fulfillmentCodeHook;
  /// Configuration block for the response that is sent to the user at the beginning of a conversation, before eliciting slot values. See `initialResponseSetting`.
  late final pulumi.Output<V2modelsIntentInitialResponseSetting?> initialResponseSetting;
  /// Configuration blocks for contexts that must be active for this intent to be considered by Amazon Lex. When an intent has an input context list, Amazon Lex only considers using the intent in an interaction with the user when the specified contexts are included in the active context list for the session. If the contexts are not active, then Amazon Lex will not use the intent. A context can be automatically activated using the outputContexts property or it can be set at runtime. See `inputContext`.
  late final pulumi.Output<List<V2modelsIntentInputContext>?> inputContexts;
  /// Unique identifier for the intent.
  late final pulumi.Output<String> intentId;
  /// Configuration block for information required to use the AMAZON.KendraSearchIntent intent to connect to an Amazon Kendra index. The AMAZON.KendraSearchIntent intent is called when Amazon Lex can't determine another intent to invoke. Cannot be used with `qnaIntentConfiguration`. See `kendraConfiguration`.
  late final pulumi.Output<V2modelsIntentKendraConfiguration?> kendraConfiguration;
  /// Timestamp of the last time that the intent was modified.
  late final pulumi.Output<String> lastUpdatedDateTime;
  /// Identifier of the language and locale where this intent is used. All of the bots, slot types, and slots used by the intent must have the same locale.
  late final pulumi.Output<String> localeId;
  /// Name of the intent. Intent names must be unique in the locale that contains the intent and cannot match the name of any built-in intent.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Configuration blocks for contexts that the intent activates when it is fulfilled. You can use an output context to indicate the intents that Amazon Lex should consider for the next turn of the conversation with a customer. When you use the outputContextsList property, all of the contexts specified in the list are activated when the intent is fulfilled. You can set up to 10 output contexts. You can also set the number of conversation turns that the context should be active, or the length of time that the context should be active. See `outputContext`.
  late final pulumi.Output<List<V2modelsIntentOutputContext>?> outputContexts;
  /// Identifier for the built-in intent to base this intent on.
  late final pulumi.Output<String?> parentIntentSignature;
  /// Configuration block for QnA intent settings. This is used when `parentIntentSignature` is set to `AMAZON.QnAIntent`. Cannot be used with `kendraConfiguration`. See `qnaIntentConfiguration`.
  late final pulumi.Output<V2modelsIntentQnaIntentConfiguration?> qnaIntentConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for strings that a user might say to signal the intent. See `sampleUtterance`.
  late final pulumi.Output<List<V2modelsIntentSampleUtterance>?> sampleUtterances;
  /// Configuration block for a new list of slots and their priorities that are contained by the intent. This is ignored on create and only valid for updates. See `slotPriority`.
  late final pulumi.Output<List<V2modelsIntentSlotPriority>?> slotPriorities;
  late final pulumi.Output<V2modelsIntentTimeouts?> timeouts;

  /// Creates a new [V2modelsIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2modelsIntent]. {@macro pulumi_lex_v2models_intent_v2models_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2modelsIntent(
    String name, {
    V2modelsIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsIntent:V2modelsIntent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    closingSetting = registerOutput<V2modelsIntentClosingSetting?>('closingSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentClosingSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationSetting = registerOutput<V2modelsIntentConfirmationSetting?>('confirmationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentConfirmationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationDateTime = registerOutput<String>('creationDateTime');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<V2modelsIntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentCodeHook = registerOutput<V2modelsIntentFulfillmentCodeHook?>('fulfillmentCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentFulfillmentCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialResponseSetting = registerOutput<V2modelsIntentInitialResponseSetting?>('initialResponseSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentInitialResponseSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputContexts = registerOutput<List<V2modelsIntentInputContext>?>('inputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentInputContext>(guardedValue, (value) => V2modelsIntentInputContext.fromMap((value as Map).cast<String, dynamic>())); });
    intentId = registerOutput<String>('intentId');
    kendraConfiguration = registerOutput<V2modelsIntentKendraConfiguration?>('kendraConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentKendraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    outputContexts = registerOutput<List<V2modelsIntentOutputContext>?>('outputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentOutputContext>(guardedValue, (value) => V2modelsIntentOutputContext.fromMap((value as Map).cast<String, dynamic>())); });
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    qnaIntentConfiguration = registerOutput<V2modelsIntentQnaIntentConfiguration?>('qnaIntentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentQnaIntentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    sampleUtterances = registerOutput<List<V2modelsIntentSampleUtterance>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(guardedValue, (value) => V2modelsIntentSampleUtterance.fromMap((value as Map).cast<String, dynamic>())); });
    slotPriorities = registerOutput<List<V2modelsIntentSlotPriority>?>('slotPriorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSlotPriority>(guardedValue, (value) => V2modelsIntentSlotPriority.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsIntentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [V2modelsIntent] resource's state with the given [name] and [id].
  static V2modelsIntent get(
    String name,
    pulumi.Input<String> id, {
    V2modelsIntentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2modelsIntent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2modelsIntent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsIntent:V2modelsIntent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    closingSetting = registerOutput<V2modelsIntentClosingSetting?>('closingSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentClosingSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationSetting = registerOutput<V2modelsIntentConfirmationSetting?>('confirmationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentConfirmationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationDateTime = registerOutput<String>('creationDateTime');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<V2modelsIntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentCodeHook = registerOutput<V2modelsIntentFulfillmentCodeHook?>('fulfillmentCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentFulfillmentCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialResponseSetting = registerOutput<V2modelsIntentInitialResponseSetting?>('initialResponseSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentInitialResponseSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputContexts = registerOutput<List<V2modelsIntentInputContext>?>('inputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentInputContext>(guardedValue, (value) => V2modelsIntentInputContext.fromMap((value as Map).cast<String, dynamic>())); });
    intentId = registerOutput<String>('intentId');
    kendraConfiguration = registerOutput<V2modelsIntentKendraConfiguration?>('kendraConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentKendraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    outputContexts = registerOutput<List<V2modelsIntentOutputContext>?>('outputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentOutputContext>(guardedValue, (value) => V2modelsIntentOutputContext.fromMap((value as Map).cast<String, dynamic>())); });
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    qnaIntentConfiguration = registerOutput<V2modelsIntentQnaIntentConfiguration?>('qnaIntentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentQnaIntentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    sampleUtterances = registerOutput<List<V2modelsIntentSampleUtterance>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(guardedValue, (value) => V2modelsIntentSampleUtterance.fromMap((value as Map).cast<String, dynamic>())); });
    slotPriorities = registerOutput<List<V2modelsIntentSlotPriority>?>('slotPriorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSlotPriority>(guardedValue, (value) => V2modelsIntentSlotPriority.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsIntentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [V2modelsIntent] resource.
  V2modelsIntent.reference(String urn)
    : super(
        'aws:lex/v2modelsIntent:V2modelsIntent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    closingSetting = registerOutput<V2modelsIntentClosingSetting?>('closingSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentClosingSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confirmationSetting = registerOutput<V2modelsIntentConfirmationSetting?>('confirmationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentConfirmationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationDateTime = registerOutput<String>('creationDateTime');
    description = registerOutput<String?>('description');
    dialogCodeHook = registerOutput<V2modelsIntentDialogCodeHook?>('dialogCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentDialogCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fulfillmentCodeHook = registerOutput<V2modelsIntentFulfillmentCodeHook?>('fulfillmentCodeHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentFulfillmentCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    initialResponseSetting = registerOutput<V2modelsIntentInitialResponseSetting?>('initialResponseSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentInitialResponseSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputContexts = registerOutput<List<V2modelsIntentInputContext>?>('inputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentInputContext>(guardedValue, (value) => V2modelsIntentInputContext.fromMap((value as Map).cast<String, dynamic>())); });
    intentId = registerOutput<String>('intentId');
    kendraConfiguration = registerOutput<V2modelsIntentKendraConfiguration?>('kendraConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentKendraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    outputContexts = registerOutput<List<V2modelsIntentOutputContext>?>('outputContexts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentOutputContext>(guardedValue, (value) => V2modelsIntentOutputContext.fromMap((value as Map).cast<String, dynamic>())); });
    parentIntentSignature = registerOutput<String?>('parentIntentSignature');
    qnaIntentConfiguration = registerOutput<V2modelsIntentQnaIntentConfiguration?>('qnaIntentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentQnaIntentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    sampleUtterances = registerOutput<List<V2modelsIntentSampleUtterance>?>('sampleUtterances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSampleUtterance>(guardedValue, (value) => V2modelsIntentSampleUtterance.fromMap((value as Map).cast<String, dynamic>())); });
    slotPriorities = registerOutput<List<V2modelsIntentSlotPriority>?>('slotPriorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsIntentSlotPriority>(guardedValue, (value) => V2modelsIntentSlotPriority.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsIntentTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsIntentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
