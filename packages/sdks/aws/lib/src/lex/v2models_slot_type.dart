import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_args.dart';
import 'v2models_slot_type_composite_slot_type_setting.dart';
import 'v2models_slot_type_external_source_setting.dart';
import 'v2models_slot_type_slot_type_value.dart';
import 'v2models_slot_type_state.dart';
import 'v2models_slot_type_timeouts.dart';
import 'v2models_slot_type_value_selection_setting.dart';

/// Resource for managing an AWS Lex V2 Models Slot Type.
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
/// const example = new aws.lex.V2modelsBot("example", {
///     dataPrivacies: [{
///         childDirected: true,
///     }],
///     name: "example",
///     idleSessionTtlInSeconds: 60,
///     roleArn: exampleAwsIamRole.arn,
/// });
/// const exampleV2modelsBotLocale = new aws.lex.V2modelsBotLocale("example", {
///     localeId: "en_US",
///     botId: example.id,
///     botVersion: "DRAFT",
///     nLuIntentConfidenceThreshold: 0.7,
/// });
/// const exampleV2modelsBotVersion = new aws.lex.V2modelsBotVersion("example", {
///     botId: example.id,
///     localeSpecification: exampleV2modelsBotLocale.localeId.apply(localeId => {
///         [localeId]: {
///             sourceBotVersion: "DRAFT",
///         },
///     }),
/// });
/// const exampleV2modelsSlotType = new aws.lex.V2modelsSlotType("example", {
///     botId: example.id,
///     botVersion: exampleV2modelsBotLocale.botVersion,
///     name: "example",
///     localeId: exampleV2modelsBotLocale.localeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsBot("example",
///     data_privacies=[{
///         "child_directed": True,
///     }],
///     name="example",
///     idle_session_ttl_in_seconds=60,
///     role_arn=example_aws_iam_role["arn"])
/// example_v2models_bot_locale = aws.lex.V2modelsBotLocale("example",
///     locale_id="en_US",
///     bot_id=example.id,
///     bot_version="DRAFT",
///     n_lu_intent_confidence_threshold=0.7)
/// example_v2models_bot_version = aws.lex.V2modelsBotVersion("example",
///     bot_id=example.id,
///     locale_specification=example_v2models_bot_locale.locale_id.apply(lambda locale_id: {
///         locale_id: {
///             "sourceBotVersion": "DRAFT",
///         },
///     }))
/// example_v2models_slot_type = aws.lex.V2modelsSlotType("example",
///     bot_id=example.id,
///     bot_version=example_v2models_bot_locale.bot_version,
///     name="example",
///     locale_id=example_v2models_bot_locale.locale_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lex.V2modelsBot("example", new()
///     {
///         DataPrivacies = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsBotDataPrivacyArgs
///             {
///                 ChildDirected = true,
///             },
///         },
///         Name = "example",
///         IdleSessionTtlInSeconds = 60,
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
///     var exampleV2modelsBotLocale = new Aws.Lex.V2modelsBotLocale("example", new()
///     {
///         LocaleId = "en_US",
///         BotId = example.Id,
///         BotVersion = "DRAFT",
///         NLuIntentConfidenceThreshold = 0.7,
///     });
///
///     var exampleV2modelsBotVersion = new Aws.Lex.V2modelsBotVersion("example", new()
///     {
///         BotId = example.Id,
///         LocaleSpecification = exampleV2modelsBotLocale.LocaleId.Apply(localeId =>
///         {
///             { localeId,
///             {
///                 { "sourceBotVersion", "DRAFT" },
///             } },
///         }),
///     });
///
///     var exampleV2modelsSlotType = new Aws.Lex.V2modelsSlotType("example", new()
///     {
///         BotId = example.Id,
///         BotVersion = exampleV2modelsBotLocale.BotVersion,
///         Name = "example",
///         LocaleId = exampleV2modelsBotLocale.LocaleId,
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
/// 		example, err := lex.NewV2modelsBot(ctx, "example", &lex.V2modelsBotArgs{
/// 			DataPrivacies: lex.V2modelsBotDataPrivacyArray{
/// 				&lex.V2modelsBotDataPrivacyArgs{
/// 					ChildDirected: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Name:                    pulumi.String("example"),
/// 			IdleSessionTtlInSeconds: pulumi.Int(60),
/// 			RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleV2modelsBotLocale, err := lex.NewV2modelsBotLocale(ctx, "example", &lex.V2modelsBotLocaleArgs{
/// 			LocaleId:                     pulumi.String("en_US"),
/// 			BotId:                        example.ID().ToIDOutput().ToStringOutput(),
/// 			BotVersion:                   pulumi.String("DRAFT"),
/// 			NLuIntentConfidenceThreshold: pulumi.Float64(0.7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lex.NewV2modelsBotVersion(ctx, "example", &lex.V2modelsBotVersionArgs{
/// 			BotId: example.ID().ToIDOutput().ToStringOutput(),
/// 			LocaleSpecification: exampleV2modelsBotLocale.LocaleId.ApplyT(func(localeId string) (map[string]map[string]string, error) {
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
/// 		_, err = lex.NewV2modelsSlotType(ctx, "example", &lex.V2modelsSlotTypeArgs{
/// 			BotId:      example.ID().ToIDOutput().ToStringOutput(),
/// 			BotVersion: exampleV2modelsBotLocale.BotVersion,
/// 			Name:       pulumi.String("example"),
/// 			LocaleId:   exampleV2modelsBotLocale.LocaleId,
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
/// resource "aws_lex_v2modelsbot" "example" {
///   data_privacies {
///     child_directed = true
///   }
///   name                        = "example"
///   idle_session_ttl_in_seconds = 60
///   role_arn                    = exampleAwsIamRole.arn
/// }
/// resource "aws_lex_v2modelsbotlocale" "example" {
///   locale_id                        = "en_US"
///   bot_id                           = aws_lex_v2modelsbot.example.id
///   bot_version                      = "DRAFT"
///   n_lu_intent_confidence_threshold = 0.7
/// }
/// resource "aws_lex_v2modelsbotversion" "example" {
///   bot_id = aws_lex_v2modelsbot.example.id
///   locale_specification = {
///     aws_lex_v2modelsbotlocale.example.locale_id = {
///       source_bot_version = "DRAFT"
///     }
///   }
/// }
/// resource "aws_lex_v2modelsslottype" "example" {
///   bot_id      = aws_lex_v2modelsbot.example.id
///   bot_version = aws_lex_v2modelsbotlocale.example.bot_version
///   name        = "example"
///   locale_id   = aws_lex_v2modelsbotlocale.example.locale_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsBot;
/// import com.pulumi.aws.lex.V2modelsBotArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotDataPrivacyArgs;
/// import com.pulumi.aws.lex.V2modelsBotLocale;
/// import com.pulumi.aws.lex.V2modelsBotLocaleArgs;
/// import com.pulumi.aws.lex.V2modelsBotVersion;
/// import com.pulumi.aws.lex.V2modelsBotVersionArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsBotVersionLocaleSpecificationArgs;
/// import com.pulumi.aws.lex.V2modelsSlotType;
/// import com.pulumi.aws.lex.V2modelsSlotTypeArgs;
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
///         var example = new V2modelsBot("example", V2modelsBotArgs.builder()
///             .dataPrivacies(V2modelsBotDataPrivacyArgs.builder()
///                 .childDirected(true)
///                 .build())
///             .name("example")
///             .idleSessionTtlInSeconds(60)
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///         var exampleV2modelsBotLocale = new V2modelsBotLocale("exampleV2modelsBotLocale", V2modelsBotLocaleArgs.builder()
///             .localeId("en_US")
///             .botId(example.id())
///             .botVersion("DRAFT")
///             .nLuIntentConfidenceThreshold(0.7)
///             .build());
///
///         var exampleV2modelsBotVersion = new V2modelsBotVersion("exampleV2modelsBotVersion", V2modelsBotVersionArgs.builder()
///             .botId(example.id())
///             .localeSpecification(exampleV2modelsBotLocale.localeId().applyValue(_localeId -> Map.of(_localeId, Map.of("sourceBotVersion", "DRAFT"))))
///             .build());
///
///         var exampleV2modelsSlotType = new V2modelsSlotType("exampleV2modelsSlotType", V2modelsSlotTypeArgs.builder()
///             .botId(example.id())
///             .botVersion(exampleV2modelsBotLocale.botVersion())
///             .name("example")
///             .localeId(exampleV2modelsBotLocale.localeId())
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
///       dataPrivacies:
///         - childDirected: true
///       name: example
///       idleSessionTtlInSeconds: 60
///       roleArn: ${exampleAwsIamRole.arn}
///   exampleV2modelsBotLocale:
///     type: aws:lex:V2modelsBotLocale
///     name: example
///     properties:
///       localeId: en_US
///       botId: ${example.id}
///       botVersion: DRAFT
///       nLuIntentConfidenceThreshold: 0.7
///   exampleV2modelsBotVersion:
///     type: aws:lex:V2modelsBotVersion
///     name: example
///     properties:
///       botId: ${example.id}
///       localeSpecification:
///         ${exampleV2modelsBotLocale.localeId}:
///           sourceBotVersion: DRAFT
///   exampleV2modelsSlotType:
///     type: aws:lex:V2modelsSlotType
///     name: example
///     properties:
///       botId: ${example.id}
///       botVersion: ${exampleV2modelsBotLocale.botVersion}
///       name: example
///       localeId: ${exampleV2modelsBotLocale.localeId}
/// ```
///
///
/// ### valueSelectionSetting Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsSlotType("example", {
///     valueSelectionSetting: {
///         advancedRecognitionSettings: [{
///             audioRecognitionStrategy: "UseSlotValuesAsCustomVocabulary",
///         }],
///         resolutionStrategy: "OriginalValue",
///     },
///     slotTypeValues: [{
///         sampleValues: [{
///             value: "exampleValue",
///         }],
///     }],
///     botId: exampleAwsLexv2modelsBot.id,
///     botVersion: exampleAwsLexv2modelsBotLocale.botVersion,
///     name: "example",
///     localeId: exampleAwsLexv2modelsBotLocale.localeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlotType("example",
///     value_selection_setting={
///         "advanced_recognition_settings": [{
///             "audio_recognition_strategy": "UseSlotValuesAsCustomVocabulary",
///         }],
///         "resolution_strategy": "OriginalValue",
///     },
///     slot_type_values=[{
///         "sample_values": [{
///             "value": "exampleValue",
///         }],
///     }],
///     bot_id=example_aws_lexv2models_bot["id"],
///     bot_version=example_aws_lexv2models_bot_locale["botVersion"],
///     name="example",
///     locale_id=example_aws_lexv2models_bot_locale["localeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lex.V2modelsSlotType("example", new()
///     {
///         ValueSelectionSetting = new Aws.Lex.Inputs.V2modelsSlotTypeValueSelectionSettingArgs
///         {
///             AdvancedRecognitionSettings = new[]
///             {
///                 new Aws.Lex.Inputs.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs
///                 {
///                     AudioRecognitionStrategy = "UseSlotValuesAsCustomVocabulary",
///                 },
///             },
///             ResolutionStrategy = "OriginalValue",
///         },
///         SlotTypeValues = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsSlotTypeSlotTypeValueArgs
///             {
///                 SampleValues = new[]
///                 {
///                     new Aws.Lex.Inputs.V2modelsSlotTypeSlotTypeValueSampleValueArgs
///                     {
///                         Value = "exampleValue",
///                     },
///                 },
///             },
///         },
///         BotId = exampleAwsLexv2modelsBot.Id,
///         BotVersion = exampleAwsLexv2modelsBotLocale.BotVersion,
///         Name = "example",
///         LocaleId = exampleAwsLexv2modelsBotLocale.LocaleId,
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
/// 		_, err := lex.NewV2modelsSlotType(ctx, "example", &lex.V2modelsSlotTypeArgs{
/// 			ValueSelectionSetting: &lex.V2modelsSlotTypeValueSelectionSettingArgs{
/// 				AdvancedRecognitionSettings: lex.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArray{
/// 					&lex.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs{
/// 						AudioRecognitionStrategy: pulumi.String("UseSlotValuesAsCustomVocabulary"),
/// 					},
/// 				},
/// 				ResolutionStrategy: pulumi.String("OriginalValue"),
/// 			},
/// 			SlotTypeValues: lex.V2modelsSlotTypeSlotTypeValueArray{
/// 				&lex.V2modelsSlotTypeSlotTypeValueArgs{
/// 					SampleValues: lex.V2modelsSlotTypeSlotTypeValueSampleValueArray{
/// 						&lex.V2modelsSlotTypeSlotTypeValueSampleValueArgs{
/// 							Value: pulumi.String("exampleValue"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BotId:      pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// 			BotVersion: pulumi.Any(exampleAwsLexv2modelsBotLocale.BotVersion),
/// 			Name:       pulumi.String("example"),
/// 			LocaleId:   pulumi.Any(exampleAwsLexv2modelsBotLocale.LocaleId),
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
/// resource "aws_lex_v2modelsslottype" "example" {
///   value_selection_setting = {
///     advanced_recognition_settings = [{
///       "audioRecognitionStrategy" = "UseSlotValuesAsCustomVocabulary"
///     }]
///     resolution_strategy = "OriginalValue"
///   }
///   slot_type_values {
///     sample_values {
///       value = "exampleValue"
///     }
///   }
///   bot_id      = exampleAwsLexv2modelsBot.id
///   bot_version = exampleAwsLexv2modelsBotLocale.botVersion
///   name        = "example"
///   locale_id   = exampleAwsLexv2modelsBotLocale.localeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsSlotType;
/// import com.pulumi.aws.lex.V2modelsSlotTypeArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotTypeValueSelectionSettingArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotTypeSlotTypeValueArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotTypeSlotTypeValueSampleValueArgs;
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
///         var example = new V2modelsSlotType("example", V2modelsSlotTypeArgs.builder()
///             .valueSelectionSetting(V2modelsSlotTypeValueSelectionSettingArgs.builder()
///                 .advancedRecognitionSettings(V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs.builder()
///                     .audioRecognitionStrategy("UseSlotValuesAsCustomVocabulary")
///                     .build())
///                 .resolutionStrategy("OriginalValue")
///                 .build())
///             .slotTypeValues(V2modelsSlotTypeSlotTypeValueArgs.builder()
///                 .sampleValues(V2modelsSlotTypeSlotTypeValueSampleValueArgs.builder()
///                     .value("exampleValue")
///                     .build())
///                 .build())
///             .botId(exampleAwsLexv2modelsBot.id())
///             .botVersion(exampleAwsLexv2modelsBotLocale.botVersion())
///             .name("example")
///             .localeId(exampleAwsLexv2modelsBotLocale.localeId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lex:V2modelsSlotType
///     properties:
///       valueSelectionSetting:
///         advancedRecognitionSettings:
///           - audioRecognitionStrategy: UseSlotValuesAsCustomVocabulary
///         resolutionStrategy: OriginalValue
///       slotTypeValues:
///         - sampleValues:
///             - value: exampleValue
///       botId: ${exampleAwsLexv2modelsBot.id}
///       botVersion: ${exampleAwsLexv2modelsBotLocale.botVersion}
///       name: example
///       localeId: ${exampleAwsLexv2modelsBotLocale.localeId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Slot Type using using a comma-delimited string concatenating `botId`, `botVersion`, `localeId`, and `slotTypeId`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsSlotType:V2modelsSlotType example bot-1234,DRAFT,en_US,slot_type-id-12345678
/// ```
class V2modelsSlotType extends pulumi.CustomResource {
  /// Identifier of the bot associated with this slot type.
  late final pulumi.Output<String> botId;
  /// Version of the bot associated with this slot type.
  late final pulumi.Output<String> botVersion;
  /// Specifications for a composite slot type.
  /// See `compositeSlotTypeSetting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeCompositeSlotTypeSetting>?> compositeSlotTypeSettings;
  /// Description of the slot type.
  late final pulumi.Output<String?> description;
  /// Type of external information used to create the slot type.
  /// See `externalSourceSetting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeExternalSourceSetting>?> externalSourceSettings;
  /// Identifier of the language and locale where this slot type is used.
  /// All of the bots, slot types, and slots used by the intent must have the same locale.
  late final pulumi.Output<String> localeId;
  /// Name of the slot type.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Built-in slot type used as a parent of this slot type.
  /// When you define a parent slot type, the new slot type has the configuration of the parent slot type.
  /// Only `AMAZON.AlphaNumeric` is supported.
  late final pulumi.Output<String?> parentSlotTypeSignature;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Unique identifier for the slot type.
  late final pulumi.Output<String> slotTypeId;
  /// List of SlotTypeValue objects that defines the values that the slot type can take.
  /// Each value can have a list of synonyms, additional values that help train the machine learning model about the values that it resolves for a slot.
  /// See `slotTypeValues` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeSlotTypeValue>?> slotTypeValues;
  late final pulumi.Output<V2modelsSlotTypeTimeouts?> timeouts;
  /// Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  /// See `valueSelectionSetting` argument reference below.
  late final pulumi.Output<V2modelsSlotTypeValueSelectionSetting?> valueSelectionSetting;

  /// Creates a new [V2modelsSlotType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2modelsSlotType]. {@macro pulumi_lex_v2models_slot_type_v2models_slot_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2modelsSlotType(
    String name, {
    V2modelsSlotTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlotType:V2modelsSlotType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    compositeSlotTypeSettings = registerOutput<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>('compositeSlotTypeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSetting>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    externalSourceSettings = registerOutput<List<V2modelsSlotTypeExternalSourceSetting>?>('externalSourceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSetting>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSetting.fromMap((value as Map).cast<String, dynamic>())); });
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    parentSlotTypeSignature = registerOutput<String?>('parentSlotTypeSignature');
    region = registerOutput<String>('region');
    slotTypeId = registerOutput<String>('slotTypeId');
    slotTypeValues = registerOutput<List<V2modelsSlotTypeSlotTypeValue>?>('slotTypeValues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValue.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueSelectionSetting = registerOutput<V2modelsSlotTypeValueSelectionSetting?>('valueSelectionSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [V2modelsSlotType] resource's state with the given [name] and [id].
  static V2modelsSlotType get(
    String name,
    pulumi.Input<String> id, {
    V2modelsSlotTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2modelsSlotType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2modelsSlotType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlotType:V2modelsSlotType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    compositeSlotTypeSettings = registerOutput<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>('compositeSlotTypeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSetting>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    externalSourceSettings = registerOutput<List<V2modelsSlotTypeExternalSourceSetting>?>('externalSourceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSetting>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSetting.fromMap((value as Map).cast<String, dynamic>())); });
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    parentSlotTypeSignature = registerOutput<String?>('parentSlotTypeSignature');
    region = registerOutput<String>('region');
    slotTypeId = registerOutput<String>('slotTypeId');
    slotTypeValues = registerOutput<List<V2modelsSlotTypeSlotTypeValue>?>('slotTypeValues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValue.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueSelectionSetting = registerOutput<V2modelsSlotTypeValueSelectionSetting?>('valueSelectionSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [V2modelsSlotType] resource.
  V2modelsSlotType.reference(String urn)
    : super(
        'aws:lex/v2modelsSlotType:V2modelsSlotType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    compositeSlotTypeSettings = registerOutput<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>('compositeSlotTypeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSetting>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSetting.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    externalSourceSettings = registerOutput<List<V2modelsSlotTypeExternalSourceSetting>?>('externalSourceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeExternalSourceSetting>(guardedValue, (value) => V2modelsSlotTypeExternalSourceSetting.fromMap((value as Map).cast<String, dynamic>())); });
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    parentSlotTypeSignature = registerOutput<String?>('parentSlotTypeSignature');
    region = registerOutput<String>('region');
    slotTypeId = registerOutput<String>('slotTypeId');
    slotTypeValues = registerOutput<List<V2modelsSlotTypeSlotTypeValue>?>('slotTypeValues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2modelsSlotTypeSlotTypeValue>(guardedValue, (value) => V2modelsSlotTypeSlotTypeValue.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueSelectionSetting = registerOutput<V2modelsSlotTypeValueSelectionSetting?>('valueSelectionSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
