import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_entity_type_args.dart';
import 'cx_entity_type_entity.dart';
import 'cx_entity_type_excluded_phrase.dart';

/// Entities are extracted from user input and represent parameters that are meaningful to your application.
/// For example, a date range, a proper name such as a geographic location or landmark, and so on. Entities represent actionable data for your application.
///
///
/// To get more information about EntityType, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Entity Type Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const basicEntityType = new gcp.diagflow.CxEntityType("basic_entity_type", {
///     parent: agent.id,
///     displayName: "MyEntity",
///     kind: "KIND_MAP",
///     entities: [
///         {
///             value: "value1",
///             synonyms: [
///                 "synonym1",
///                 "synonym2",
///             ],
///         },
///         {
///             value: "value2",
///             synonyms: [
///                 "synonym3",
///                 "synonym4",
///             ],
///         },
///     ],
///     enableFuzzyExtraction: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// basic_entity_type = gcp.diagflow.CxEntityType("basic_entity_type",
///     parent=agent.id,
///     display_name="MyEntity",
///     kind="KIND_MAP",
///     entities=[
///         {
///             "value": "value1",
///             "synonyms": [
///                 "synonym1",
///                 "synonym2",
///             ],
///         },
///         {
///             "value": "value2",
///             "synonyms": [
///                 "synonym3",
///                 "synonym4",
///             ],
///         },
///     ],
///     enable_fuzzy_extraction=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var basicEntityType = new Gcp.Diagflow.CxEntityType("basic_entity_type", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyEntity",
///         Kind = "KIND_MAP",
///         Entities = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxEntityTypeEntityArgs
///             {
///                 Value = "value1",
///                 Synonyms = new[]
///                 {
///                     "synonym1",
///                     "synonym2",
///                 },
///             },
///             new Gcp.Diagflow.Inputs.CxEntityTypeEntityArgs
///             {
///                 Value = "value2",
///                 Synonyms = new[]
///                 {
///                     "synonym3",
///                     "synonym4",
///                 },
///             },
///         },
///         EnableFuzzyExtraction = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxEntityType(ctx, "basic_entity_type", &diagflow.CxEntityTypeArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("MyEntity"),
/// 			Kind:        pulumi.String("KIND_MAP"),
/// 			Entities: diagflow.CxEntityTypeEntityArray{
/// 				&diagflow.CxEntityTypeEntityArgs{
/// 					Value: pulumi.String("value1"),
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("synonym1"),
/// 						pulumi.String("synonym2"),
/// 					},
/// 				},
/// 				&diagflow.CxEntityTypeEntityArgs{
/// 					Value: pulumi.String("value2"),
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("synonym3"),
/// 						pulumi.String("synonym4"),
/// 					},
/// 				},
/// 			},
/// 			EnableFuzzyExtraction: pulumi.Bool(false),
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxEntityType;
/// import com.pulumi.gcp.diagflow.CxEntityTypeArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxEntityTypeEntityArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var basicEntityType = new CxEntityType("basicEntityType", CxEntityTypeArgs.builder()
///             .parent(agent.id())
///             .displayName("MyEntity")
///             .kind("KIND_MAP")
///             .entities(
///                 CxEntityTypeEntityArgs.builder()
///                     .value("value1")
///                     .synonyms(
///                         "synonym1",
///                         "synonym2")
///                     .build(),
///                 CxEntityTypeEntityArgs.builder()
///                     .value("value2")
///                     .synonyms(
///                         "synonym3",
///                         "synonym4")
///                     .build())
///             .enableFuzzyExtraction(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   basicEntityType:
///     type: gcp:diagflow:CxEntityType
///     name: basic_entity_type
///     properties:
///       parent: ${agent.id}
///       displayName: MyEntity
///       kind: KIND_MAP
///       entities:
///         - value: value1
///           synonyms:
///             - synonym1
///             - synonym2
///         - value: value2
///           synonyms:
///             - synonym3
///             - synonym4
///       enableFuzzyExtraction: false
/// ```
///
///
/// ## Import
///
/// EntityType can be imported using any of these accepted formats:
///
/// * `{{parent}}/entityTypes/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, EntityType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEntityType:CxEntityType default {{parent}}/entityTypes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEntityType:CxEntityType default {{parent}}/{{name}}
/// ```
class CxEntityType extends pulumi.CustomResource {
  /// Represents kinds of entities.
  /// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for the entity.
  /// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize values that have not been explicitly listed in the entity.
  /// Possible values are: `AUTO_EXPANSION_MODE_DEFAULT`, `AUTO_EXPANSION_MODE_UNSPECIFIED`.
  late final pulumi.Output<String?> autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  late final pulumi.Output<bool?> enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  late final pulumi.Output<List<CxEntityTypeEntity>> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry giant(an adjective), you might consider adding giants(a noun) as an exclusion.
  /// If the kind of entity type is KIND_MAP, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// Structure is documented below.
  late final pulumi.Output<List<CxEntityTypeExcludedPhrase>?> excludedPhrases;

  /// Indicates whether the entity type can be automatically expanded.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a canonical value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  late final pulumi.Output<String> kind;

  /// The language of the following fields in entityType:
  /// EntityType.entities.value
  /// EntityType.entities.synonyms
  /// EntityType.excluded_phrases.value
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;

  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/entityTypes/<Entity Type ID>.
  late final pulumi.Output<String> name;

  /// The agent to create a entity type for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  late final pulumi.Output<bool?> redact;

  /// Creates a new [CxEntityType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxEntityType]. {@macro pulumi_diagflow_cx_entity_type_cx_entity_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxEntityType(
    String name, {
    CxEntityTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/cxEntityType:CxEntityType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoExpansionMode = registerOutput<String?>('autoExpansionMode');
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool?>('enableFuzzyExtraction');
    this.entities = registerOutput<List<CxEntityTypeEntity>>('entities');
    this.excludedPhrases = registerOutput<List<CxEntityTypeExcludedPhrase>?>(
      'excludedPhrases',
    );
    this.kind = registerOutput<String>('kind');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.redact = registerOutput<bool?>('redact');
  }
}
