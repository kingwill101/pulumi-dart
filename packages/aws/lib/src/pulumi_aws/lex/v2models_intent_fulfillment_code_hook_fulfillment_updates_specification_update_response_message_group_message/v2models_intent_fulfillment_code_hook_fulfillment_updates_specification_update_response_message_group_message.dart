// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_custom_payload/v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_custom_payload.dart';
import '../v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_image_response_card/v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_image_response_card.dart';
import '../v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_plain_text_message/v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_plain_text_message.dart';
import '../v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_ssml_message/v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group_message_ssml_message.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage {
  /// Configuration block for a message in a custom format defined by the client application. See <span pulumi-lang-nodejs="`customPayload`" pulumi-lang-dotnet="`CustomPayload`" pulumi-lang-go="`customPayload`" pulumi-lang-python="`custom_payload`" pulumi-lang-yaml="`customPayload`" pulumi-lang-java="`customPayload`">`custom_payload`</span>.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload?
      customPayload;

  /// Configuration block for a message that defines a response card that the client application can show to the user. See <span pulumi-lang-nodejs="`imageResponseCard`" pulumi-lang-dotnet="`ImageResponseCard`" pulumi-lang-go="`imageResponseCard`" pulumi-lang-python="`image_response_card`" pulumi-lang-yaml="`imageResponseCard`" pulumi-lang-java="`imageResponseCard`">`image_response_card`</span>.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCard?
      imageResponseCard;

  /// Configuration block for a message in plain text format. See <span pulumi-lang-nodejs="`plainTextMessage`" pulumi-lang-dotnet="`PlainTextMessage`" pulumi-lang-go="`plainTextMessage`" pulumi-lang-python="`plain_text_message`" pulumi-lang-yaml="`plainTextMessage`" pulumi-lang-java="`plainTextMessage`">`plain_text_message`</span>.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage?
      plainTextMessage;

  /// Configuration block for a message in Speech Synthesis Markup Language (SSML). See <span pulumi-lang-nodejs="`ssmlMessage`" pulumi-lang-dotnet="`SsmlMessage`" pulumi-lang-go="`ssmlMessage`" pulumi-lang-python="`ssml_message`" pulumi-lang-yaml="`ssmlMessage`" pulumi-lang-java="`ssmlMessage`">`ssml_message`</span>.
  final V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage?
      ssmlMessage;

  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPayloadValue = customPayload;
    if (customPayloadValue != null) {
      map['customPayload'] = customPayloadValue.toMap();
    }
    final imageResponseCardValue = imageResponseCard;
    if (imageResponseCardValue != null) {
      map['imageResponseCard'] = imageResponseCardValue.toMap();
    }
    final plainTextMessageValue = plainTextMessage;
    if (plainTextMessageValue != null) {
      map['plainTextMessage'] = plainTextMessageValue.toMap();
    }
    final ssmlMessageValue = ssmlMessage;
    if (ssmlMessageValue != null) {
      map['ssmlMessage'] = ssmlMessageValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage(
      customPayload: map['customPayload'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload
              .fromMap((map['customPayload'] as Map).cast<String, dynamic>()),
      imageResponseCard: map['imageResponseCard'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCard
              .fromMap(
                  (map['imageResponseCard'] as Map).cast<String, dynamic>()),
      plainTextMessage: map['plainTextMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage
              .fromMap(
                  (map['plainTextMessage'] as Map).cast<String, dynamic>()),
      ssmlMessage: map['ssmlMessage'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage
              .fromMap((map['ssmlMessage'] as Map).cast<String, dynamic>()),
    );
  }
}
