import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_args.dart';
import 'v2models_slot_multiple_values_setting.dart';
import 'v2models_slot_obfuscation_setting.dart';
import 'v2models_slot_state.dart';
import 'v2models_slot_sub_slot_setting.dart';
import 'v2models_slot_timeouts.dart';
import 'v2models_slot_value_elicitation_setting.dart';

/// Resource for managing an AWS Lex V2 Models Slot.
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
/// const example = new aws.lex.V2modelsSlot("example", {
///     botId: exampleAwsLexv2modelsBot.id,
///     botVersion: exampleAwsLexv2modelsBotVersion.botVersion,
///     intentId: exampleAwsLexv2modelsIntent.id,
///     localeId: exampleAwsLexv2modelsBotLocale.localeId,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlot("example",
///     bot_id=example_aws_lexv2models_bot["id"],
///     bot_version=example_aws_lexv2models_bot_version["botVersion"],
///     intent_id=example_aws_lexv2models_intent["id"],
///     locale_id=example_aws_lexv2models_bot_locale["localeId"],
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lex.V2modelsSlot("example", new()
///     {
///         BotId = exampleAwsLexv2modelsBot.Id,
///         BotVersion = exampleAwsLexv2modelsBotVersion.BotVersion,
///         IntentId = exampleAwsLexv2modelsIntent.Id,
///         LocaleId = exampleAwsLexv2modelsBotLocale.LocaleId,
///         Name = "example",
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
/// 		_, err := lex.NewV2modelsSlot(ctx, "example", &lex.V2modelsSlotArgs{
/// 			BotId:      pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// 			BotVersion: pulumi.Any(exampleAwsLexv2modelsBotVersion.BotVersion),
/// 			IntentId:   pulumi.Any(exampleAwsLexv2modelsIntent.Id),
/// 			LocaleId:   pulumi.Any(exampleAwsLexv2modelsBotLocale.LocaleId),
/// 			Name:       pulumi.String("example"),
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
/// resource "aws_lex_v2modelsslot" "example" {
///   bot_id      = exampleAwsLexv2modelsBot.id
///   bot_version = exampleAwsLexv2modelsBotVersion.botVersion
///   intent_id   = exampleAwsLexv2modelsIntent.id
///   locale_id   = exampleAwsLexv2modelsBotLocale.localeId
///   name        = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsSlot;
/// import com.pulumi.aws.lex.V2modelsSlotArgs;
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
///         var example = new V2modelsSlot("example", V2modelsSlotArgs.builder()
///             .botId(exampleAwsLexv2modelsBot.id())
///             .botVersion(exampleAwsLexv2modelsBotVersion.botVersion())
///             .intentId(exampleAwsLexv2modelsIntent.id())
///             .localeId(exampleAwsLexv2modelsBotLocale.localeId())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:V2modelsSlot
///     properties:
///       botId: ${exampleAwsLexv2modelsBot.id}
///       botVersion: ${exampleAwsLexv2modelsBotVersion.botVersion}
///       intentId: ${exampleAwsLexv2modelsIntent.id}
///       localeId: ${exampleAwsLexv2modelsBotLocale.localeId}
///       name: example
/// ```
///
///
/// ### `valueElicitationSetting` Example
///
/// &gt; When using `valueElicitationSetting`, if you do not provide a `promptAttemptsSpecification`, AWS Lex will configure default `promptAttemptsSpecification`s.
/// As a result, Terraform will report a difference in the configuration.
/// To avoid this behavior, include `promptAttemptsSpecification` blocks matching the default configuration, as shown below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsSlot("example", {
///     valueElicitationSetting: {
///         promptSpecification: {
///             messageGroups: [{
///                 message: {
///                     plainTextMessage: {
///                         value: "What is your favorite color?",
///                     },
///                 },
///             }],
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
///             messageSelectionStrategy: "Random",
///         },
///         slotConstraint: "Required",
///     },
///     botId: test.id,
///     botVersion: testAwsLexv2modelsBotLocale.botVersion,
///     intentId: testAwsLexv2modelsIntent.intentId,
///     localeId: testAwsLexv2modelsBotLocale.localeId,
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlot("example",
///     value_elicitation_setting={
///         "prompt_specification": {
///             "message_groups": [{
///                 "message": {
///                     "plain_text_message": {
///                         "value": "What is your favorite color?",
///                     },
///                 },
///             }],
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
///             "message_selection_strategy": "Random",
///         },
///         "slot_constraint": "Required",
///     },
///     bot_id=test["id"],
///     bot_version=test_aws_lexv2models_bot_locale["botVersion"],
///     intent_id=test_aws_lexv2models_intent["intentId"],
///     locale_id=test_aws_lexv2models_bot_locale["localeId"],
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lex.V2modelsSlot("example", new()
///     {
///         ValueElicitationSetting = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingArgs
///         {
///             PromptSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationArgs
///             {
///                 MessageGroups = new[]
///                 {
///                     new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs
///                     {
///                         Message = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs
///                         {
///                             PlainTextMessage = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs
///                             {
///                                 Value = "What is your favorite color?",
///                             },
///                         },
///                     },
///                 },
///                 PromptAttemptsSpecifications = new[]
///                 {
///                     new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs
///                     {
///                         AllowedInputTypes = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
///                         {
///                             AllowAudioInput = true,
///                             AllowDtmfInput = true,
///                         },
///                         AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
///                         {
///                             AudioSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
///                             {
///                                 EndTimeoutMs = 640,
///                                 MaxLengthMs = 15000,
///                             },
///                             DtmfSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
///                             {
///                                 DeletionCharacter = "*",
///                                 EndCharacter = "#",
///                                 EndTimeoutMs = 5000,
///                                 MaxLength = 513,
///                             },
///                             StartTimeoutMs = 4000,
///                         },
///                         TextInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
///                         {
///                             StartTimeoutMs = 30000,
///                         },
///                         AllowInterrupt = true,
///                         MapBlockKey = "Initial",
///                     },
///                     new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs
///                     {
///                         AllowedInputTypes = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
///                         {
///                             AllowAudioInput = true,
///                             AllowDtmfInput = true,
///                         },
///                         AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
///                         {
///                             AudioSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
///                             {
///                                 EndTimeoutMs = 640,
///                                 MaxLengthMs = 15000,
///                             },
///                             DtmfSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
///                             {
///                                 DeletionCharacter = "*",
///                                 EndCharacter = "#",
///                                 EndTimeoutMs = 5000,
///                                 MaxLength = 513,
///                             },
///                             StartTimeoutMs = 4000,
///                         },
///                         TextInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
///                         {
///                             StartTimeoutMs = 30000,
///                         },
///                         AllowInterrupt = true,
///                         MapBlockKey = "Retry1",
///                     },
///                 },
///                 AllowInterrupt = true,
///                 MaxRetries = 1,
///                 MessageSelectionStrategy = "Random",
///             },
///             SlotConstraint = "Required",
///         },
///         BotId = test.Id,
///         BotVersion = testAwsLexv2modelsBotLocale.BotVersion,
///         IntentId = testAwsLexv2modelsIntent.IntentId,
///         LocaleId = testAwsLexv2modelsBotLocale.LocaleId,
///         Name = "example",
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
/// 		_, err := lex.NewV2modelsSlot(ctx, "example", &lex.V2modelsSlotArgs{
/// 			ValueElicitationSetting: &lex.V2modelsSlotValueElicitationSettingArgs{
/// 				PromptSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationArgs{
/// 					MessageGroups: lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArray{
/// 						&lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs{
/// 							Message: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs{
/// 								PlainTextMessage: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs{
/// 									Value: pulumi.String("What is your favorite color?"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					PromptAttemptsSpecifications: lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArray{
/// 						&lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// 							AllowedInputTypes: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// 								AllowAudioInput: pulumi.Bool(true),
/// 								AllowDtmfInput:  pulumi.Bool(true),
/// 							},
/// 							AudioAndDtmfInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// 								AudioSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// 									EndTimeoutMs: pulumi.Int(640),
/// 									MaxLengthMs:  pulumi.Int(15000),
/// 								},
/// 								DtmfSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// 									DeletionCharacter: pulumi.String("*"),
/// 									EndCharacter:      pulumi.String("#"),
/// 									EndTimeoutMs:      pulumi.Int(5000),
/// 									MaxLength:         pulumi.Int(513),
/// 								},
/// 								StartTimeoutMs: pulumi.Int(4000),
/// 							},
/// 							TextInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// 								StartTimeoutMs: pulumi.Int(30000),
/// 							},
/// 							AllowInterrupt: pulumi.Bool(true),
/// 							MapBlockKey:    pulumi.String("Initial"),
/// 						},
/// 						&lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// 							AllowedInputTypes: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// 								AllowAudioInput: pulumi.Bool(true),
/// 								AllowDtmfInput:  pulumi.Bool(true),
/// 							},
/// 							AudioAndDtmfInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// 								AudioSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// 									EndTimeoutMs: pulumi.Int(640),
/// 									MaxLengthMs:  pulumi.Int(15000),
/// 								},
/// 								DtmfSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// 									DeletionCharacter: pulumi.String("*"),
/// 									EndCharacter:      pulumi.String("#"),
/// 									EndTimeoutMs:      pulumi.Int(5000),
/// 									MaxLength:         pulumi.Int(513),
/// 								},
/// 								StartTimeoutMs: pulumi.Int(4000),
/// 							},
/// 							TextInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// 								StartTimeoutMs: pulumi.Int(30000),
/// 							},
/// 							AllowInterrupt: pulumi.Bool(true),
/// 							MapBlockKey:    pulumi.String("Retry1"),
/// 						},
/// 					},
/// 					AllowInterrupt:           pulumi.Bool(true),
/// 					MaxRetries:               pulumi.Int(1),
/// 					MessageSelectionStrategy: pulumi.String("Random"),
/// 				},
/// 				SlotConstraint: pulumi.String("Required"),
/// 			},
/// 			BotId:      pulumi.Any(test.Id),
/// 			BotVersion: pulumi.Any(testAwsLexv2modelsBotLocale.BotVersion),
/// 			IntentId:   pulumi.Any(testAwsLexv2modelsIntent.IntentId),
/// 			LocaleId:   pulumi.Any(testAwsLexv2modelsBotLocale.LocaleId),
/// 			Name:       pulumi.String("example"),
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
/// resource "aws_lex_v2modelsslot" "example" {
///   value_elicitation_setting = {
///     prompt_specification = {
///       message_groups = [{
///         "message" = {
///           "plainTextMessage" = {
///             "value" = "What is your favorite color?"
///           }
///         }
///       }]
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
///       message_selection_strategy = "Random"
///     }
///     slot_constraint = "Required"
///   }
///   bot_id      = test.id
///   bot_version = testAwsLexv2modelsBotLocale.botVersion
///   intent_id   = testAwsLexv2modelsIntent.intentId
///   locale_id   = testAwsLexv2modelsBotLocale.localeId
///   name        = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsSlot;
/// import com.pulumi.aws.lex.V2modelsSlotArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs;
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
///         var example = new V2modelsSlot("example", V2modelsSlotArgs.builder()
///             .valueElicitationSetting(V2modelsSlotValueElicitationSettingArgs.builder()
///                 .promptSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationArgs.builder()
///                     .messageGroups(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs.builder()
///                         .message(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs.builder()
///                             .plainTextMessage(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs.builder()
///                                 .value("What is your favorite color?")
///                                 .build())
///                             .build())
///                         .build())
///                     .promptAttemptsSpecifications(
///                         V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
///                             .allowedInputTypes(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
///                                 .allowAudioInput(true)
///                                 .allowDtmfInput(true)
///                                 .build())
///                             .audioAndDtmfInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
///                                 .audioSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
///                                     .endTimeoutMs(640)
///                                     .maxLengthMs(15000)
///                                     .build())
///                                 .dtmfSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
///                                     .deletionCharacter("*")
///                                     .endCharacter("#")
///                                     .endTimeoutMs(5000)
///                                     .maxLength(513)
///                                     .build())
///                                 .startTimeoutMs(4000)
///                                 .build())
///                             .textInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
///                                 .startTimeoutMs(30000)
///                                 .build())
///                             .allowInterrupt(true)
///                             .mapBlockKey("Initial")
///                             .build(),
///                         V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
///                             .allowedInputTypes(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
///                                 .allowAudioInput(true)
///                                 .allowDtmfInput(true)
///                                 .build())
///                             .audioAndDtmfInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
///                                 .audioSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
///                                     .endTimeoutMs(640)
///                                     .maxLengthMs(15000)
///                                     .build())
///                                 .dtmfSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
///                                     .deletionCharacter("*")
///                                     .endCharacter("#")
///                                     .endTimeoutMs(5000)
///                                     .maxLength(513)
///                                     .build())
///                                 .startTimeoutMs(4000)
///                                 .build())
///                             .textInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
///                                 .startTimeoutMs(30000)
///                                 .build())
///                             .allowInterrupt(true)
///                             .mapBlockKey("Retry1")
///                             .build())
///                     .allowInterrupt(true)
///                     .maxRetries(1)
///                     .messageSelectionStrategy("Random")
///                     .build())
///                 .slotConstraint("Required")
///                 .build())
///             .botId(test.id())
///             .botVersion(testAwsLexv2modelsBotLocale.botVersion())
///             .intentId(testAwsLexv2modelsIntent.intentId())
///             .localeId(testAwsLexv2modelsBotLocale.localeId())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:V2modelsSlot
///     properties:
///       valueElicitationSetting:
///         promptSpecification:
///           messageGroups:
///             - message:
///                 plainTextMessage:
///                   value: What is your favorite color?
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
///           messageSelectionStrategy: Random
///         slotConstraint: Required
///       botId: ${test.id}
///       botVersion: ${testAwsLexv2modelsBotLocale.botVersion}
///       intentId: ${testAwsLexv2modelsIntent.intentId}
///       localeId: ${testAwsLexv2modelsBotLocale.localeId}
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Slot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsSlot:V2modelsSlot example bot-1234,1,intent-5678,en-US,slot-9012
/// ```
class V2modelsSlot extends pulumi.CustomResource {
  /// Identifier of the bot associated with the slot.
  late final pulumi.Output<String> botId;
  /// Version of the bot associated with the slot.
  late final pulumi.Output<String> botVersion;
  /// Description of the slot.
  late final pulumi.Output<String?> description;
  /// Identifier of the intent that contains the slot.
  late final pulumi.Output<String> intentId;
  /// Identifier of the language and locale that the slot will be used in.
  late final pulumi.Output<String> localeId;
  /// Whether the slot returns multiple values in one response.
  /// See the `multipleValuesSetting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotMultipleValuesSetting>?> multipleValuesSettings;
  /// Name of the slot.
  late final pulumi.Output<String> name;
  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the `obfuscationSetting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotObfuscationSetting>?> obfuscationSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Unique identifier associated with the slot.
  late final pulumi.Output<String> slotId;
  /// Unique identifier for the slot type associated with this slot.
  late final pulumi.Output<String> slotTypeId;
  /// Specifications for the constituent sub slots and the expression for the composite slot.
  /// See the `subSlotSetting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotSubSlotSetting>?> subSlotSettings;
  late final pulumi.Output<V2modelsSlotTimeouts?> timeouts;
  /// Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  /// If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default `promptAttemptsSpecification` blocks for the initial prompt (map key `Initial`) and each retry attempt (map keys `Retry1`, `Retry2`, etc.).
  /// This will cause Terraform to report differences.
  /// Use the `valueElicitationSetting` configuration above in the `valueElicitationSetting` example to avoid differences resulting from AWS default configurations.
  /// See the `valueElicitationSetting` argument reference below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<V2modelsSlotValueElicitationSetting> valueElicitationSetting;

  /// Creates a new [V2modelsSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2modelsSlot]. {@macro pulumi_lex_v2models_slot_v2models_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2modelsSlot(
    String name, {
    V2modelsSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlot:V2modelsSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    description = registerOutput<String?>('description');
    intentId = registerOutput<String>('intentId');
    localeId = registerOutput<String>('localeId');
    multipleValuesSettings = registerOutput<List<V2modelsSlotMultipleValuesSetting>?>('multipleValuesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotMultipleValuesSetting>(guardedValue, (value) => V2modelsSlotMultipleValuesSetting.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    obfuscationSettings = registerOutput<List<V2modelsSlotObfuscationSetting>?>('obfuscationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotObfuscationSetting>(guardedValue, (value) => V2modelsSlotObfuscationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    slotId = registerOutput<String>('slotId');
    slotTypeId = registerOutput<String>('slotTypeId');
    subSlotSettings = registerOutput<List<V2modelsSlotSubSlotSetting>?>('subSlotSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotSubSlotSetting>(guardedValue, (value) => V2modelsSlotSubSlotSetting.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueElicitationSetting = registerOutput<V2modelsSlotValueElicitationSetting>('valueElicitationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotValueElicitationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [V2modelsSlot] resource's state with the given [name] and [id].
  static V2modelsSlot get(
    String name,
    pulumi.Input<String> id, {
    V2modelsSlotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2modelsSlot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2modelsSlot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlot:V2modelsSlot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    description = registerOutput<String?>('description');
    intentId = registerOutput<String>('intentId');
    localeId = registerOutput<String>('localeId');
    multipleValuesSettings = registerOutput<List<V2modelsSlotMultipleValuesSetting>?>('multipleValuesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotMultipleValuesSetting>(guardedValue, (value) => V2modelsSlotMultipleValuesSetting.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    obfuscationSettings = registerOutput<List<V2modelsSlotObfuscationSetting>?>('obfuscationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotObfuscationSetting>(guardedValue, (value) => V2modelsSlotObfuscationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    slotId = registerOutput<String>('slotId');
    slotTypeId = registerOutput<String>('slotTypeId');
    subSlotSettings = registerOutput<List<V2modelsSlotSubSlotSetting>?>('subSlotSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotSubSlotSetting>(guardedValue, (value) => V2modelsSlotSubSlotSetting.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueElicitationSetting = registerOutput<V2modelsSlotValueElicitationSetting>('valueElicitationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotValueElicitationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [V2modelsSlot] resource.
  V2modelsSlot.reference(String urn)
    : super(
        'aws:lex/v2modelsSlot:V2modelsSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    description = registerOutput<String?>('description');
    intentId = registerOutput<String>('intentId');
    localeId = registerOutput<String>('localeId');
    multipleValuesSettings = registerOutput<List<V2modelsSlotMultipleValuesSetting>?>('multipleValuesSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotMultipleValuesSetting>(guardedValue, (value) => V2modelsSlotMultipleValuesSetting.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    obfuscationSettings = registerOutput<List<V2modelsSlotObfuscationSetting>?>('obfuscationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotObfuscationSetting>(guardedValue, (value) => V2modelsSlotObfuscationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    slotId = registerOutput<String>('slotId');
    slotTypeId = registerOutput<String>('slotTypeId');
    subSlotSettings = registerOutput<List<V2modelsSlotSubSlotSetting>?>('subSlotSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotSubSlotSetting>(guardedValue, (value) => V2modelsSlotSubSlotSetting.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueElicitationSetting = registerOutput<V2modelsSlotValueElicitationSetting>('valueElicitationSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotValueElicitationSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
