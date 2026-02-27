import 'package:pulumi/pulumi.dart';
import '../chat_engine_chat_engine_config/chat_engine_chat_engine_config.dart';
import '../chat_engine_chat_engine_metadata/chat_engine_chat_engine_metadata.dart';
import '../chat_engine_common_config/chat_engine_common_config.dart';
import 'chat_engine_args.dart';

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
/// ### Discoveryengine Chat Engine Existing Dialogflow Agent
///
///
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
class ChatEngine extends CustomResource {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  late final Output<ChatEngineChatEngineConfig> chatEngineConfig;

  /// Additional information of the Chat Engine.
  /// Structure is documented below.
  late final Output<List<ChatEngineChatEngineMetadata>> chatEngineMetadatas;

  /// The collection ID.
  late final Output<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final Output<ChatEngineCommonConfig?> commonConfig;

  /// Timestamp the Engine was created at.
  late final Output<String> createTime;

  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  late final Output<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final Output<String> displayName;

  /// The ID to use for chat engine.
  late final Output<String> engineId;

  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  late final Output<String?> industryVertical;

  /// Location.
  late final Output<String> location;

  /// The unique full resource name of the chat engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Timestamp the Engine was last updated.
  late final Output<String> updateTime;

  ChatEngine(
    String name, {
    ChatEngineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/chatEngine:ChatEngine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chatEngineConfig =
        registerOutput<ChatEngineChatEngineConfig>('chatEngineConfig');
    this.chatEngineMetadatas =
        registerOutput<List<ChatEngineChatEngineMetadata>>(
            'chatEngineMetadatas');
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
