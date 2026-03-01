// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_openai_api_key_get_gradientai_openai_api_key_args_doc}
/// Arguments for getGradientaiOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_openai_api_key_get_gradientai_openai_api_key_args_doc}
class GetGradientaiOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiOpenaiApiKeyArgs].
  /// [uuid] Required.
  GetGradientaiOpenaiApiKeyArgs({
    required String uuid,
  }) :
      uuid = pulumi.Input.asInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGradientaiOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeyArgs(
      uuid: map['uuid'] as String,
    );
  }
}

