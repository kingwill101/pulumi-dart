// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group/v2models_intent_fulfillment_code_hook_fulfillment_updates_specification_update_response_message_group.dart';

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse {
  /// Whether the user can interrupt the start message while it is playing.
  final bool? allowInterrupt;

  /// Frequency that a message is sent to the user. When the period ends, Amazon Lex chooses a message from the message groups and plays it to the user. If the fulfillment Lambda returns before the first period ends, an update message is not played to the user.
  final int frequencyInSeconds;

  /// Between 1-5 configuration block message groups that contain start messages. Amazon Lex chooses one of the messages to play to the user. See <span pulumi-lang-nodejs="`messageGroup`" pulumi-lang-dotnet="`MessageGroup`" pulumi-lang-go="`messageGroup`" pulumi-lang-python="`message_group`" pulumi-lang-yaml="`messageGroup`" pulumi-lang-java="`messageGroup`">`message_group`</span>.
  final List<
          V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup>?
      messageGroups;

  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    map['frequencyInSeconds'] = frequencyInSeconds;
    final messageGroupsValue = messageGroups;
    if (messageGroupsValue != null) {
      map['messageGroups'] = Input.encodeList<
          V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      frequencyInSeconds: map['frequencyInSeconds'] as int,
      messageGroups: map['messageGroups'] == null
          ? null
          : Input.decodeList<
                  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
