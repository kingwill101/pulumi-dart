// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../chat_engine_chat_engine_config/chat_engine_chat_engine_config.dart';
import '../chat_engine_common_config/chat_engine_common_config.dart';

/// The set of arguments for ChatEngine.
class ChatEngineArgs {
  /// Configurations for a chat Engine.
  /// Structure is documented below.
  final Input<ChatEngineChatEngineConfig> chatEngineConfig;

  /// The collection ID.
  final Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final Input<ChatEngineCommonConfig>? commonConfig;

  /// The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be `SOLUTION_TYPE_CHAT`.
  final Input<List<String>> dataStoreIds;

  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> displayName;

  /// The ID to use for chat engine.
  final Input<String> engineId;

  /// The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`.
  final Input<String>? industryVertical;

  /// Location.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ChatEngineArgs({
    required this.chatEngineConfig,
    required this.collectionId,
    this.commonConfig,
    required this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chatEngineConfig'] =
        Input.mapInputValue<ChatEngineChatEngineConfig, Map<String, dynamic>>(
            chatEngineConfig, (value) => value.toMap());
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = Input.mapOptionalInputValue<ChatEngineCommonConfig,
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
      chatEngineConfig:
          Input.asInput<ChatEngineChatEngineConfig>(map['chatEngineConfig']),
      collectionId: Input.asInput<String>(map['collectionId']),
      commonConfig:
          Input.asOptionalInput<ChatEngineCommonConfig>(map['commonConfig']),
      dataStoreIds: Input.asInput<List<String>>(map['dataStoreIds']),
      displayName: Input.asInput<String>(map['displayName']),
      engineId: Input.asInput<String>(map['engineId']),
      industryVertical: Input.asOptionalInput<String>(map['industryVertical']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
