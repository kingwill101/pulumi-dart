// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_initial_response_message_group_message.dart';
import 'v2models_intent_initial_response_setting_initial_response_message_group_variation.dart';

class V2modelsIntentInitialResponseSettingInitialResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage>? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<List<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation>>? variations;

  /// Creates a new [V2modelsIntentInitialResponseSettingInitialResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  const V2modelsIntentInitialResponseSettingInitialResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentInitialResponseSettingInitialResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingInitialResponseMessageGroup(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation>(guardedValue, (value) => V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
