// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response_message_group.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user.
  /// Amazon Lex chooses the actual response to send at runtime.
  /// See `message_group`.
  final List<
    V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup
  >?
  messageGroups;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?messageGroups == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup,
              Map<String, dynamic>
            >(messageGroups!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse(
      allowInterrupt: map['allowInterrupt'] == null
          ? null
          : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup
            >(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
