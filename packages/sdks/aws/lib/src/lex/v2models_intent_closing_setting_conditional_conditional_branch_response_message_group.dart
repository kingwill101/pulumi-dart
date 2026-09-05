// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_conditional_conditional_branch_response_message_group_message.dart';
import 'v2models_intent_closing_setting_conditional_conditional_branch_response_message_group_variation.dart';

class V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  final pulumi.Input<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage?>? message;
  /// Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  final pulumi.Input<List<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation>?>? variations;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user. See `message`.
  /// [variations] Configuration blocks for message variations to send to the user. When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user. See `variation`.
  const V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation>(guardedValue, (value) => V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
