// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_agents_by_openai_api_key_get_genai_agents_by_openai_api_key_args_doc}
/// Arguments for getGenaiAgentsByOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agents_by_openai_api_key_get_genai_agents_by_openai_api_key_args_doc}
class GetGenaiAgentsByOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyArgs].
  /// [uuid] Required.
  GetGenaiAgentsByOpenaiApiKeyArgs({
    required String uuid,
  }) :
      uuid = pulumi.Input.asInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyArgs(
      uuid: map['uuid'] as String,
    );
  }
}

