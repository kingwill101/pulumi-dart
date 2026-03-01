import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_engine_args.dart';
import 'chat_engine_chat_engine_config.dart';
import 'chat_engine_chat_engine_metadata.dart';
import 'chat_engine_common_config.dart';

/// Vertex chat and Conversation Engine Chat type
///
///
/// To get more information about ChatEngine, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.engines)
/// * How-to Guides
/// * [Vertex AI Conversation](https://cloud.google.com/dialogflow/cx/docs/concept/generative)
///
/// ## Example Usage
///
/// ### Discoveryengine Chat Engine Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testDataStore = new gcp.discoveryengine.DataStore("test_data_store", {
///     location: "global",
///     dataStoreId: "data-store",
///     displayName: "Structured datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const testDataStore2 = new gcp.discoveryengine.DataStore("test_data_store_2", {
///     location: testDataStore.location,
///     dataStoreId: "data-store-2",
///     displayName: "Structured datastore 2",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const primary = new gcp.discoveryengine.ChatEngine("primary", {
///     engineId: "chat-engine-id",
///     collectionId: "default_collection",
///     location: testDataStore.location,
///     displayName: "Chat engine",
///     industryVertical: "GENERIC",
///     dataStoreIds: [
///         testDataStore.dataStoreId,
///         testDataStore2.dataStoreId,
///     ],
///     commonConfig: {
///         companyName: "test-company",
///     },
///     chatEngineConfig: {
///         agentCreationConfig: {
///             business: "test business name",
///             defaultLanguageCode: "en",
///             timeZone: "America/Los_Angeles",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_data_store = gcp.discoveryengine.DataStore("test_data_store",
///     location="global",
///     data_store_id="data-store",
///     display_name="Structured datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// test_data_store2 = gcp.discoveryengine.DataStore("test_data_store_2",
///     location=test_data_store.location,
///     data_store_id="data-store-2",
///     display_name="Structured datastore 2",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// primary = gcp.discoveryengine.ChatEngine("primary",
///     engine_id="chat-engine-id",
///     collection_id="default_collection",
///     location=test_data_store.location,
///     display_name="Chat engine",
///     industry_vertical="GENERIC",
///     data_store_ids=[
///         test_data_store.data_store_id,
///         test_data_store2.data_store_id,
///     ],
///     common_config={
///         "company_name": "test-company",
///     },
///     chat_engine_config={
///         "agent_creation_config": {
///             "business": "test business name",
///             "default_language_code": "en",
///             "time_zone": "America/Los_Angeles",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testDataStore = new Gcp.DiscoveryEngine.DataStore("test_data_store", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store",
///         DisplayName = "Structured datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///     });
///
///     var testDataStore2 = new Gcp.DiscoveryEngine.DataStore("test_data_store_2", new()
///     {
///         Location = testDataStore.Location,
///         DataStoreId = "data-store-2",
///         DisplayName = "Structured datastore 2",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///     });
///
///     var primary = new Gcp.DiscoveryEngine.ChatEngine("primary", new()
///     {
///         EngineId = "chat-engine-id",
///         CollectionId = "default_collection",
///         Location = testDataStore.Location,
///         DisplayName = "Chat engine",
///         IndustryVertical = "GENERIC",
///         DataStoreIds = new[]
///         {
///             testDataStore.DataStoreId,
///             testDataStore2.DataStoreId,
///         },
///         CommonConfig = new Gcp.DiscoveryEngine.Inputs.ChatEngineCommonConfigArgs
///         {
///             CompanyName = "test-company",
///         },
///         ChatEngineConfig = new Gcp.DiscoveryEngine.Inputs.ChatEngineChatEngineConfigArgs
///         {
///             AgentCreationConfig = new Gcp.DiscoveryEngine.Inputs.ChatEngineChatEngineConfigAgentCreationConfigArgs
///             {
///                 Business = "test business name",
///                 DefaultLanguageCode = "en",
///                 TimeZone = "America/Los_Angeles",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testDataStore, err := discoveryengine.NewDataStore(ctx, "test_data_store", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store"),
/// 			DisplayName:      pulumi.String("Structured datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testDataStore2, err := discoveryengine.NewDataStore(ctx, "test_data_store_2", &discoveryengine.DataStoreArgs{
/// 			Location:         testDataStore.Location,
/// 			DataStoreId:      pulumi.String("data-store-2"),
/// 			DisplayName:      pulumi.String("Structured datastore 2"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewChatEngine(ctx, "primary", &discoveryengine.ChatEngineArgs{
/// 			EngineId:         pulumi.String("chat-engine-id"),
/// 			CollectionId:     pulumi.String("default_collection"),
/// 			Location:         testDataStore.Location,
/// 			DisplayName:      pulumi.String("Chat engine"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				testDataStore.DataStoreId,
/// 				testDataStore2.DataStoreId,
/// 			},
/// 			CommonConfig: &discoveryengine.ChatEngineCommonConfigArgs{
/// 				CompanyName: pulumi.String("test-company"),
/// 			},
/// 			ChatEngineConfig: &discoveryengine.ChatEngineChatEngineConfigArgs{
/// 				AgentCreationConfig: &discoveryengine.ChatEngineChatEngineConfigAgentCreationConfigArgs{
/// 					Business:            pulumi.String("test business name"),
/// 					DefaultLanguageCode: pulumi.String("en"),
/// 					TimeZone:            pulumi.String("America/Los_Angeles"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.ChatEngine;
/// import com.pulumi.gcp.discoveryengine.ChatEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ChatEngineCommonConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ChatEngineChatEngineConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ChatEngineChatEngineConfigAgentCreationConfigArgs;
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
///         var testDataStore = new DataStore("testDataStore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store")
///             .displayName("Structured datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .build());
///
///         var testDataStore2 = new DataStore("testDataStore2", DataStoreArgs.builder()
///             .location(testDataStore.location())
///             .dataStoreId("data-store-2")
///             .displayName("Structured datastore 2")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .build());
///
///         var primary = new ChatEngine("primary", ChatEngineArgs.builder()
///             .engineId("chat-engine-id")
///             .collectionId("default_collection")
///             .location(testDataStore.location())
///             .displayName("Chat engine")
///             .industryVertical("GENERIC")
///             .dataStoreIds(
///                 testDataStore.dataStoreId(),
///                 testDataStore2.dataStoreId())
///             .commonConfig(ChatEngineCommonConfigArgs.builder()
///                 .companyName("test-company")
///                 .build())
///             .chatEngineConfig(ChatEngineChatEngineConfigArgs.builder()
///                 .agentCreationConfig(ChatEngineChatEngineConfigAgentCreationConfigArgs.builder()
///                     .business("test business name")
///                     .defaultLanguageCode("en")
///                     .timeZone("America/Los_Angeles")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testDataStore:
///     type: gcp:discoveryengine:DataStore
///     name: test_data_store
///     properties:
///       location: global
///       dataStoreId: data-store
///       displayName: Structured datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///   testDataStore2:
///     type: gcp:discoveryengine:DataStore
///     name: test_data_store_2
///     properties:
///       location: ${testDataStore.location}
///       dataStoreId: data-store-2
///       displayName: Structured datastore 2
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///   primary:
///     type: gcp:discoveryengine:ChatEngine
///     properties:
///       engineId: chat-engine-id
///       collectionId: default_collection
///       location: ${testDataStore.location}
///       displayName: Chat engine
///       industryVertical: GENERIC
///       dataStoreIds:
///         - ${testDataStore.dataStoreId}
///         - ${testDataStore2.dataStoreId}
///       commonConfig:
///         companyName: test-company
///       chatEngineConfig:
///         agentCreationConfig:
///           business: test business name
///           defaultLanguageCode: en
///           timeZone: America/Los_Angeles
/// ```
///
/// ### Discoveryengine Chat Engine Existing Dialogflow Agent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testDataStore = new gcp.discoveryengine.DataStore("test_data_store", {
///     location: "eu",
///     dataStoreId: "data-store",
///     displayName: "Structured datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
/// });
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "europe-west3",
///     defaultLanguageCode: "en",
///     timeZone: "America/Los_Angeles",
/// });
/// const primary = new gcp.discoveryengine.ChatEngine("primary", {
///     engineId: "chat-engine-id",
///     collectionId: "default_collection",
///     location: testDataStore.location,
///     displayName: "Chat engine",
///     industryVertical: "GENERIC",
///     dataStoreIds: [testDataStore.dataStoreId],
///     commonConfig: {
///         companyName: "test-company",
///     },
///     chatEngineConfig: {
///         dialogflowAgentToLink: agent.id,
///         allowCrossRegion: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_data_store = gcp.discoveryengine.DataStore("test_data_store",
///     location="eu",
///     data_store_id="data-store",
///     display_name="Structured datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_CHAT"])
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="europe-west3",
///     default_language_code="en",
///     time_zone="America/Los_Angeles")
/// primary = gcp.discoveryengine.ChatEngine("primary",
///     engine_id="chat-engine-id",
///     collection_id="default_collection",
///     location=test_data_store.location,
///     display_name="Chat engine",
///     industry_vertical="GENERIC",
///     data_store_ids=[test_data_store.data_store_id],
///     common_config={
///         "company_name": "test-company",
///     },
///     chat_engine_config={
///         "dialogflow_agent_to_link": agent.id,
///         "allow_cross_region": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testDataStore = new Gcp.DiscoveryEngine.DataStore("test_data_store", new()
///     {
///         Location = "eu",
///         DataStoreId = "data-store",
///         DisplayName = "Structured datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///     });
///
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "europe-west3",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/Los_Angeles",
///     });
///
///     var primary = new Gcp.DiscoveryEngine.ChatEngine("primary", new()
///     {
///         EngineId = "chat-engine-id",
///         CollectionId = "default_collection",
///         Location = testDataStore.Location,
///         DisplayName = "Chat engine",
///         IndustryVertical = "GENERIC",
///         DataStoreIds = new[]
///         {
///             testDataStore.DataStoreId,
///         },
///         CommonConfig = new Gcp.DiscoveryEngine.Inputs.ChatEngineCommonConfigArgs
///         {
///             CompanyName = "test-company",
///         },
///         ChatEngineConfig = new Gcp.DiscoveryEngine.Inputs.ChatEngineChatEngineConfigArgs
///         {
///             DialogflowAgentToLink = agent.Id,
///             AllowCrossRegion = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testDataStore, err := discoveryengine.NewDataStore(ctx, "test_data_store", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("eu"),
/// 			DataStoreId:      pulumi.String("data-store"),
/// 			DisplayName:      pulumi.String("Structured datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("europe-west3"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/Los_Angeles"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewChatEngine(ctx, "primary", &discoveryengine.ChatEngineArgs{
/// 			EngineId:         pulumi.String("chat-engine-id"),
/// 			CollectionId:     pulumi.String("default_collection"),
/// 			Location:         testDataStore.Location,
/// 			DisplayName:      pulumi.String("Chat engine"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				testDataStore.DataStoreId,
/// 			},
/// 			CommonConfig: &discoveryengine.ChatEngineCommonConfigArgs{
/// 				CompanyName: pulumi.String("test-company"),
/// 			},
/// 			ChatEngineConfig: &discoveryengine.ChatEngineChatEngineConfigArgs{
/// 				DialogflowAgentToLink: agent.ID(),
/// 				AllowCrossRegion:      pulumi.Bool(true),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.discoveryengine.ChatEngine;
/// import com.pulumi.gcp.discoveryengine.ChatEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ChatEngineCommonConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ChatEngineChatEngineConfigArgs;
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
///         var testDataStore = new DataStore("testDataStore", DataStoreArgs.builder()
///             .location("eu")
///             .dataStoreId("data-store")
///             .displayName("Structured datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .build());
///
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("europe-west3")
///             .defaultLanguageCode("en")
///             .timeZone("America/Los_Angeles")
///             .build());
///
///         var primary = new ChatEngine("primary", ChatEngineArgs.builder()
///             .engineId("chat-engine-id")
///             .collectionId("default_collection")
///             .location(testDataStore.location())
///             .displayName("Chat engine")
///             .industryVertical("GENERIC")
///             .dataStoreIds(testDataStore.dataStoreId())
///             .commonConfig(ChatEngineCommonConfigArgs.builder()
///                 .companyName("test-company")
///                 .build())
///             .chatEngineConfig(ChatEngineChatEngineConfigArgs.builder()
///                 .dialogflowAgentToLink(agent.id())
///                 .allowCrossRegion(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testDataStore:
///     type: gcp:discoveryengine:DataStore
///     name: test_data_store
///     properties:
///       location: eu
///       dataStoreId: data-store
///       displayName: Structured datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: europe-west3
///       defaultLanguageCode: en
///       timeZone: America/Los_Angeles
///   primary:
///     type: gcp:discoveryengine:ChatEngine
///     properties:
///       engineId: chat-engine-id
///       collectionId: default_collection
///       location: ${testDataStore.location}
///       displayName: Chat engine
///       industryVertical: GENERIC
///       dataStoreIds:
///         - ${testDataStore.dataStoreId}
///       commonConfig:
///         companyName: test-company
///       chatEngineConfig:
///         dialogflowAgentToLink: ${agent.id}
///         allowCrossRegion: true
/// ```
///
///
/// ## Import
///
/// ChatEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}`
///
/// When using the `pulumi import` command, ChatEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/chatEngine:ChatEngine default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/chatEngine:ChatEngine default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/chatEngine:ChatEngine default {{location}}/{{collection_id}}/{{engine_id}}
/// ```
class ChatEngine extends pulumi.CustomResource {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  late final pulumi.Output<ChatEngineChatEngineConfig> chatEngineConfig;

  /// Additional information of the Chat Engine.
  /// Structure is documented below.
  late final pulumi.Output<List<ChatEngineChatEngineMetadata>>
  chatEngineMetadatas;

  /// The collection ID.
  late final pulumi.Output<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final pulumi.Output<ChatEngineCommonConfig?> commonConfig;

  /// Timestamp the Engine was created at.
  late final pulumi.Output<String> createTime;

  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  late final pulumi.Output<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;

  /// The ID to use for chat engine.
  late final pulumi.Output<String> engineId;

  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  late final pulumi.Output<String?> industryVertical;

  /// Location.
  late final pulumi.Output<String> location;

  /// The unique full resource name of the chat engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp the Engine was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ChatEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChatEngine]. {@macro pulumi_discoveryengine_chat_engine_chat_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChatEngine(
    String name, {
    ChatEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/chatEngine:ChatEngine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.chatEngineConfig = registerOutput<ChatEngineChatEngineConfig>(
      'chatEngineConfig',
    );
    this.chatEngineMetadatas =
        registerOutput<List<ChatEngineChatEngineMetadata>>(
          'chatEngineMetadatas',
        );
    this.collectionId = registerOutput<String>('collectionId');
    this.commonConfig = registerOutput<ChatEngineCommonConfig?>('commonConfig');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.industryVertical = registerOutput<String?>('industryVertical');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
