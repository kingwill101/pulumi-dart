import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_args.dart';
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
///     name: "example",
///     idleSessionTtlInSeconds: 60,
///     roleArn: exampleAwsIamRole.arn,
///     dataPrivacies: [{
///         childDirected: true,
///     }],
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
///     name="example",
///     idle_session_ttl_in_seconds=60,
///     role_arn=example_aws_iam_role["arn"],
///     data_privacies=[{
///         "child_directed": True,
///     }])
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
///         Name = "example",
///         IdleSessionTtlInSeconds = 60,
///         RoleArn = exampleAwsIamRole.Arn,
///         DataPrivacies = new[]
///         {
///             new Aws.Lex.Inputs.V2modelsBotDataPrivacyArgs
///             {
///                 ChildDirected = true,
///             },
///         },
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
/// 			Name:                    pulumi.String("example"),
/// 			IdleSessionTtlInSeconds: pulumi.Int(60),
/// 			RoleArn:                 pulumi.Any(exampleAwsIamRole.Arn),
/// 			DataPrivacies: lex.V2modelsBotDataPrivacyArray{
/// 				&lex.V2modelsBotDataPrivacyArgs{
/// 					ChildDirected: pulumi.Bool(true),
/// 				},
/// 			},
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
///   name                        = "example"
///   idle_session_ttl_in_seconds = 60
///   role_arn                    = exampleAwsIamRole.arn
///   data_privacies {
///     child_directed = true
///   }
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
///             .name("example")
///             .idleSessionTtlInSeconds(60)
///             .roleArn(exampleAwsIamRole.arn())
///             .dataPrivacies(V2modelsBotDataPrivacyArgs.builder()
///                 .childDirected(true)
///                 .build())
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
///       name: example
///       idleSessionTtlInSeconds: 60
///       roleArn: ${exampleAwsIamRole.arn}
///       dataPrivacies:
///         - childDirected: true
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
///     botId: exampleAwsLexv2modelsBot.id,
///     botVersion: exampleAwsLexv2modelsBotLocale.botVersion,
///     name: "example",
///     localeId: exampleAwsLexv2modelsBotLocale.localeId,
///     valueSelectionSetting: {
///         resolutionStrategy: "OriginalValue",
///         advancedRecognitionSettings: [{
///             audioRecognitionStrategy: "UseSlotValuesAsCustomVocabulary",
///         }],
///     },
///     slotTypeValues: [{
///         sampleValues: [{
///             value: "exampleValue",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlotType("example",
///     bot_id=example_aws_lexv2models_bot["id"],
///     bot_version=example_aws_lexv2models_bot_locale["botVersion"],
///     name="example",
///     locale_id=example_aws_lexv2models_bot_locale["localeId"],
///     value_selection_setting={
///         "resolution_strategy": "OriginalValue",
///         "advanced_recognition_settings": [{
///             "audio_recognition_strategy": "UseSlotValuesAsCustomVocabulary",
///         }],
///     },
///     slot_type_values=[{
///         "sample_values": [{
///             "value": "exampleValue",
///         }],
///     }])
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
///         BotId = exampleAwsLexv2modelsBot.Id,
///         BotVersion = exampleAwsLexv2modelsBotLocale.BotVersion,
///         Name = "example",
///         LocaleId = exampleAwsLexv2modelsBotLocale.LocaleId,
///         ValueSelectionSetting = new Aws.Lex.Inputs.V2modelsSlotTypeValueSelectionSettingArgs
///         {
///             ResolutionStrategy = "OriginalValue",
///             AdvancedRecognitionSettings = new[]
///             {
///                 new Aws.Lex.Inputs.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs
///                 {
///                     AudioRecognitionStrategy = "UseSlotValuesAsCustomVocabulary",
///                 },
///             },
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
/// 			BotId:      pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// 			BotVersion: pulumi.Any(exampleAwsLexv2modelsBotLocale.BotVersion),
/// 			Name:       pulumi.String("example"),
/// 			LocaleId:   pulumi.Any(exampleAwsLexv2modelsBotLocale.LocaleId),
/// 			ValueSelectionSetting: &lex.V2modelsSlotTypeValueSelectionSettingArgs{
/// 				ResolutionStrategy: pulumi.String("OriginalValue"),
/// 				AdvancedRecognitionSettings: lex.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArray{
/// 					&lex.V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs{
/// 						AudioRecognitionStrategy: pulumi.String("UseSlotValuesAsCustomVocabulary"),
/// 					},
/// 				},
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
///   bot_id      = exampleAwsLexv2modelsBot.id
///   bot_version = exampleAwsLexv2modelsBotLocale.botVersion
///   name        = "example"
///   locale_id   = exampleAwsLexv2modelsBotLocale.localeId
///   value_selection_setting = {
///     resolution_strategy = "OriginalValue"
///     advanced_recognition_settings = [{
///       "audioRecognitionStrategy" = "UseSlotValuesAsCustomVocabulary"
///     }]
///   }
///   slot_type_values {
///     sample_values {
///       value = "exampleValue"
///     }
///   }
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
///             .botId(exampleAwsLexv2modelsBot.id())
///             .botVersion(exampleAwsLexv2modelsBotLocale.botVersion())
///             .name("example")
///             .localeId(exampleAwsLexv2modelsBotLocale.localeId())
///             .valueSelectionSetting(V2modelsSlotTypeValueSelectionSettingArgs.builder()
///                 .resolutionStrategy("OriginalValue")
///                 .advancedRecognitionSettings(V2modelsSlotTypeValueSelectionSettingAdvancedRecognitionSettingArgs.builder()
///                     .audioRecognitionStrategy("UseSlotValuesAsCustomVocabulary")
///                     .build())
///                 .build())
///             .slotTypeValues(V2modelsSlotTypeSlotTypeValueArgs.builder()
///                 .sampleValues(V2modelsSlotTypeSlotTypeValueSampleValueArgs.builder()
///                     .value("exampleValue")
///                     .build())
///                 .build())
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
///       botId: ${exampleAwsLexv2modelsBot.id}
///       botVersion: ${exampleAwsLexv2modelsBotLocale.botVersion}
///       name: example
///       localeId: ${exampleAwsLexv2modelsBotLocale.localeId}
///       valueSelectionSetting:
///         resolutionStrategy: OriginalValue
///         advancedRecognitionSettings:
///           - audioRecognitionStrategy: UseSlotValuesAsCustomVocabulary
///       slotTypeValues:
///         - sampleValues:
///             - value: exampleValue
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
  late final pulumi.Output<List<Map<String, dynamic>>?> compositeSlotTypeSettings;
  /// Description of the slot type.
  late final pulumi.Output<String?> description;
  /// Type of external information used to create the slot type.
  /// See `externalSourceSetting` argument reference below.
  late final pulumi.Output<List<Map<String, dynamic>>?> externalSourceSettings;
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
  late final pulumi.Output<List<Map<String, dynamic>>?> slotTypeValues;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botId = registerOutput<String>('botId');
    botVersion = registerOutput<String>('botVersion');
    compositeSlotTypeSettings = registerOutput<List<Map<String, dynamic>>?>('compositeSlotTypeSettings');
    description = registerOutput<String?>('description');
    externalSourceSettings = registerOutput<List<Map<String, dynamic>>?>('externalSourceSettings');
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    parentSlotTypeSignature = registerOutput<String?>('parentSlotTypeSignature');
    region = registerOutput<String>('region');
    slotTypeId = registerOutput<String>('slotTypeId');
    slotTypeValues = registerOutput<List<Map<String, dynamic>>?>('slotTypeValues');
    timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueSelectionSetting = registerOutput<V2modelsSlotTypeValueSelectionSetting?>('valueSelectionSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [V2modelsSlotType] resource's state with the given [name] and [id].
  static V2modelsSlotType get(
    String name,
    pulumi.Input<String> id, {
    V2modelsSlotTypeState? state,
  }) {
    return V2modelsSlotType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    compositeSlotTypeSettings = registerOutput<List<Map<String, dynamic>>?>('compositeSlotTypeSettings');
    description = registerOutput<String?>('description');
    externalSourceSettings = registerOutput<List<Map<String, dynamic>>?>('externalSourceSettings');
    localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    parentSlotTypeSignature = registerOutput<String?>('parentSlotTypeSignature');
    region = registerOutput<String>('region');
    slotTypeId = registerOutput<String>('slotTypeId');
    slotTypeValues = registerOutput<List<Map<String, dynamic>>?>('slotTypeValues');
    timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    valueSelectionSetting = registerOutput<V2modelsSlotTypeValueSelectionSetting?>('valueSelectionSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2modelsSlotTypeValueSelectionSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
