// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_engine_chat_engine_config.dart';
import 'chat_engine_common_config.dart';

/// {@template pulumi_discoveryengine_chat_engine_chat_engine_args_doc}
/// The set of arguments for ChatEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_chat_engine_chat_engine_args_doc}
class ChatEngineArgs {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineChatEngineConfig> chatEngineConfig;

  /// The collection ID.
  final pulumi.Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<ChatEngineCommonConfig>? commonConfig;

  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  final pulumi.Input<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;

  /// The ID to use for chat engine.
  final pulumi.Input<String> engineId;

  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  final pulumi.Input<String>? industryVertical;

  /// Location.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ChatEngineArgs].
  /// [chatEngineConfig] Configurations for a chat Engine.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] The ID to use for chat engine.
  /// [industryVertical] The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// [location] Location.
  /// [project] The ID of the project in which the resource belongs.
  ChatEngineArgs({
    required ChatEngineChatEngineConfig chatEngineConfig,
    required String collectionId,
    ChatEngineCommonConfig? commonConfig,
    required List<String> dataStoreIds,
    required String displayName,
    required String engineId,
    String? industryVertical,
    required String location,
    String? project,
  })  : chatEngineConfig =
            pulumi.Input.asInput<ChatEngineChatEngineConfig>(chatEngineConfig),
        collectionId = pulumi.Input.asInput<String>(collectionId),
        commonConfig =
            pulumi.Input.asOptionalInput<ChatEngineCommonConfig>(commonConfig),
        dataStoreIds = pulumi.Input.asInput<List<String>>(dataStoreIds),
        displayName = pulumi.Input.asInput<String>(displayName),
        engineId = pulumi.Input.asInput<String>(engineId),
        industryVertical =
            pulumi.Input.asOptionalInput<String>(industryVertical),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chatEngineConfig'] = pulumi.Input.mapInputValue<
        ChatEngineChatEngineConfig,
        Map<String, dynamic>>(chatEngineConfig, (value) => value.toMap());
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = pulumi.Input.mapOptionalInputValue<
          ChatEngineCommonConfig,
          Map<String, dynamic>>(commonConfigValue, (value) => value.toMap());
    }
    map['dataStoreIds'] = dataStoreIds;
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final industryVerticalValue = industryVertical;
    if (industryVerticalValue != null) {
      map['industryVertical'] = industryVerticalValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ChatEngineArgs.fromMap(Map<String, dynamic> map) {
    return ChatEngineArgs(
      chatEngineConfig: ChatEngineChatEngineConfig.fromMap(
          (map['chatEngineConfig'] as Map).cast<String, dynamic>()),
      collectionId: map['collectionId'] as String,
      commonConfig: map['commonConfig'] == null
          ? null
          : ChatEngineCommonConfig.fromMap(
              (map['commonConfig'] as Map).cast<String, dynamic>()),
      dataStoreIds: (map['dataStoreIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      engineId: map['engineId'] as String,
      industryVertical: map['industryVertical'] == null
          ? null
          : map['industryVertical'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
