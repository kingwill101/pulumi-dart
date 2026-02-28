import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_args.dart';
import 'assistant_customer_policy.dart';
import 'assistant_generation_config.dart';

/// Assistant
///
///
/// To get more information about Assistant, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1#assistantservice)
///
/// ## Example Usage
///
/// ### Discoveryengine Assistant Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "example-data-store-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
/// });
/// const basicSearchEngine = new gcp.discoveryengine.SearchEngine("basic", {
///     location: "global",
///     collectionId: "default_collection",
///     engineId: "example-engine-id",
///     displayName: "Example Display Name",
///     dataStoreIds: [basic.dataStoreId],
///     searchEngineConfig: {},
/// });
/// const basicAssistant = new gcp.discoveryengine.Assistant("basic", {
///     location: "global",
///     collectionId: "default_collection",
///     engineId: basicSearchEngine.engineId,
///     assistantId: "default_assistant",
///     displayName: "updated-tf-test-Assistant",
///     description: "Assistant Description",
///     generationConfig: {
///         systemInstruction: {
///             additionalSystemInstruction: "foobar",
///         },
///         defaultLanguage: "en",
///     },
///     customerPolicy: {
///         bannedPhrases: [{
///             phrase: "foo",
///             matchType: "SIMPLE_STRING_MATCH",
///             ignoreDiacritics: false,
///         }],
///     },
///     webGroundingType: "WEB_GROUNDING_TYPE_GOOGLE_SEARCH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="example-data-store-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False)
/// basic_search_engine = gcp.discoveryengine.SearchEngine("basic",
///     location="global",
///     collection_id="default_collection",
///     engine_id="example-engine-id",
///     display_name="Example Display Name",
///     data_store_ids=[basic.data_store_id],
///     search_engine_config={})
/// basic_assistant = gcp.discoveryengine.Assistant("basic",
///     location="global",
///     collection_id="default_collection",
///     engine_id=basic_search_engine.engine_id,
///     assistant_id="default_assistant",
///     display_name="updated-tf-test-Assistant",
///     description="Assistant Description",
///     generation_config={
///         "system_instruction": {
///             "additional_system_instruction": "foobar",
///         },
///         "default_language": "en",
///     },
///     customer_policy={
///         "banned_phrases": [{
///             "phrase": "foo",
///             "match_type": "SIMPLE_STRING_MATCH",
///             "ignore_diacritics": False,
///         }],
///     },
///     web_grounding_type="WEB_GROUNDING_TYPE_GOOGLE_SEARCH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DiscoveryEngine.DataStore("basic", new()
///     {
///         Location = "global",
///         DataStoreId = "example-data-store-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///     });
///
///     var basicSearchEngine = new Gcp.DiscoveryEngine.SearchEngine("basic", new()
///     {
///         Location = "global",
///         CollectionId = "default_collection",
///         EngineId = "example-engine-id",
///         DisplayName = "Example Display Name",
///         DataStoreIds = new[]
///         {
///             basic.DataStoreId,
///         },
///         SearchEngineConfig = null,
///     });
///
///     var basicAssistant = new Gcp.DiscoveryEngine.Assistant("basic", new()
///     {
///         Location = "global",
///         CollectionId = "default_collection",
///         EngineId = basicSearchEngine.EngineId,
///         AssistantId = "default_assistant",
///         DisplayName = "updated-tf-test-Assistant",
///         Description = "Assistant Description",
///         GenerationConfig = new Gcp.DiscoveryEngine.Inputs.AssistantGenerationConfigArgs
///         {
///             SystemInstruction = new Gcp.DiscoveryEngine.Inputs.AssistantGenerationConfigSystemInstructionArgs
///             {
///                 AdditionalSystemInstruction = "foobar",
///             },
///             DefaultLanguage = "en",
///         },
///         CustomerPolicy = new Gcp.DiscoveryEngine.Inputs.AssistantCustomerPolicyArgs
///         {
///             BannedPhrases = new[]
///             {
///                 new Gcp.DiscoveryEngine.Inputs.AssistantCustomerPolicyBannedPhraseArgs
///                 {
///                     Phrase = "foo",
///                     MatchType = "SIMPLE_STRING_MATCH",
///                     IgnoreDiacritics = false,
///                 },
///             },
///         },
///         WebGroundingType = "WEB_GROUNDING_TYPE_GOOGLE_SEARCH",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("example-data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicSearchEngine, err := discoveryengine.NewSearchEngine(ctx, "basic", &discoveryengine.SearchEngineArgs{
/// 			Location:     pulumi.String("global"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			EngineId:     pulumi.String("example-engine-id"),
/// 			DisplayName:  pulumi.String("Example Display Name"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				basic.DataStoreId,
/// 			},
/// 			SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewAssistant(ctx, "basic", &discoveryengine.AssistantArgs{
/// 			Location:     pulumi.String("global"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			EngineId:     basicSearchEngine.EngineId,
/// 			AssistantId:  pulumi.String("default_assistant"),
/// 			DisplayName:  pulumi.String("updated-tf-test-Assistant"),
/// 			Description:  pulumi.String("Assistant Description"),
/// 			GenerationConfig: &discoveryengine.AssistantGenerationConfigArgs{
/// 				SystemInstruction: &discoveryengine.AssistantGenerationConfigSystemInstructionArgs{
/// 					AdditionalSystemInstruction: pulumi.String("foobar"),
/// 				},
/// 				DefaultLanguage: pulumi.String("en"),
/// 			},
/// 			CustomerPolicy: &discoveryengine.AssistantCustomerPolicyArgs{
/// 				BannedPhrases: discoveryengine.AssistantCustomerPolicyBannedPhraseArray{
/// 					&discoveryengine.AssistantCustomerPolicyBannedPhraseArgs{
/// 						Phrase:           pulumi.String("foo"),
/// 						MatchType:        pulumi.String("SIMPLE_STRING_MATCH"),
/// 						IgnoreDiacritics: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			WebGroundingType: pulumi.String("WEB_GROUNDING_TYPE_GOOGLE_SEARCH"),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
/// import com.pulumi.gcp.discoveryengine.Assistant;
/// import com.pulumi.gcp.discoveryengine.AssistantArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.AssistantGenerationConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.AssistantGenerationConfigSystemInstructionArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.AssistantCustomerPolicyArgs;
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
///         var basic = new DataStore("basic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("example-data-store-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .build());
///
///         var basicSearchEngine = new SearchEngine("basicSearchEngine", SearchEngineArgs.builder()
///             .location("global")
///             .collectionId("default_collection")
///             .engineId("example-engine-id")
///             .displayName("Example Display Name")
///             .dataStoreIds(basic.dataStoreId())
///             .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
///                 .build())
///             .build());
///
///         var basicAssistant = new Assistant("basicAssistant", AssistantArgs.builder()
///             .location("global")
///             .collectionId("default_collection")
///             .engineId(basicSearchEngine.engineId())
///             .assistantId("default_assistant")
///             .displayName("updated-tf-test-Assistant")
///             .description("Assistant Description")
///             .generationConfig(AssistantGenerationConfigArgs.builder()
///                 .systemInstruction(AssistantGenerationConfigSystemInstructionArgs.builder()
///                     .additionalSystemInstruction("foobar")
///                     .build())
///                 .defaultLanguage("en")
///                 .build())
///             .customerPolicy(AssistantCustomerPolicyArgs.builder()
///                 .bannedPhrases(AssistantCustomerPolicyBannedPhraseArgs.builder()
///                     .phrase("foo")
///                     .matchType("SIMPLE_STRING_MATCH")
///                     .ignoreDiacritics(false)
///                     .build())
///                 .build())
///             .webGroundingType("WEB_GROUNDING_TYPE_GOOGLE_SEARCH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: example-data-store-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///   basicSearchEngine:
///     type: gcp:discoveryengine:SearchEngine
///     name: basic
///     properties:
///       location: global
///       collectionId: default_collection
///       engineId: example-engine-id
///       displayName: Example Display Name
///       dataStoreIds:
///         - ${basic.dataStoreId}
///       searchEngineConfig: {}
///   basicAssistant:
///     type: gcp:discoveryengine:Assistant
///     name: basic
///     properties:
///       location: global
///       collectionId: default_collection
///       engineId: ${basicSearchEngine.engineId}
///       assistantId: default_assistant
///       displayName: updated-tf-test-Assistant
///       description: Assistant Description
///       generationConfig:
///         systemInstruction:
///           additionalSystemInstruction: foobar
///         defaultLanguage: en
///       customerPolicy:
///         bannedPhrases:
///           - phrase: foo
///             matchType: SIMPLE_STRING_MATCH
///             ignoreDiacritics: false
///       webGroundingType: WEB_GROUNDING_TYPE_GOOGLE_SEARCH
/// ```
///
///
/// ## Import
///
/// Assistant can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/assistants/{{assistant_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}`
///
/// When using the `pulumi import` command, Assistant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/assistants/{{assistant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/assistant:Assistant default {{location}}/{{collection_id}}/{{engine_id}}/{{assistant_id}}
/// ```
class Assistant extends pulumi.CustomResource {
  /// The unique id of the assistant.
  late final pulumi.Output<String> assistantId;

  /// The unique id of the collection.
  late final pulumi.Output<String> collectionId;

  /// Customer policy for the assistant.
  /// Structure is documented below.
  late final pulumi.Output<AssistantCustomerPolicy?> customerPolicy;

  /// Description for additional information. Expected to be shown on the
  /// configuration UI, not to the users of the assistant.
  late final pulumi.Output<String?> description;

  /// The assistant display name.
  /// It must be a UTF-8 encoded string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;

  /// The unique id of the engine.
  late final pulumi.Output<String> engineId;

  /// Configuration for the generation of the assistant response.
  /// Structure is documented below.
  late final pulumi.Output<AssistantGenerationConfig?> generationConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// Resource name of the assistant.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// It must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of web grounding to use.
  /// The supported values: 'WEB_GROUNDING_TYPE_DISABLED', 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH', 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
  late final pulumi.Output<String?> webGroundingType;

  /// Creates a new [Assistant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assistant]. {@macro pulumi_discoveryengine_assistant_assistant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assistant(
    String name, {
    AssistantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/assistant:Assistant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assistantId = registerOutput<String>('assistantId');
    this.collectionId = registerOutput<String>('collectionId');
    this.customerPolicy =
        registerOutput<AssistantCustomerPolicy?>('customerPolicy');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.generationConfig =
        registerOutput<AssistantGenerationConfig?>('generationConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.webGroundingType = registerOutput<String?>('webGroundingType');
  }
}
