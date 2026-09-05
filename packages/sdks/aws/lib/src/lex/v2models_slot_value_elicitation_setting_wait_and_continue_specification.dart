// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecification {
  /// Specifies whether the bot will wait for a user to respond.
  /// When this field is `false`, wait and continue responses for a slot aren't used.
  /// If the active field isn't specified, the default is `true`.
  final pulumi.Input<bool?>? active;
  /// Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// See the `continueResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse>?>? continueResponses;
  /// Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// See the `stillWaitingResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>?>? stillWaitingResponses;
  /// Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  /// See the `waitingResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>?>? waitingResponses;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecification].
  /// [active] Specifies whether the bot will wait for a user to respond.
  /// [continueResponses] Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// [stillWaitingResponses] Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// [waitingResponses] Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  const V2modelsSlotValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponses,
    this.stillWaitingResponses,
    this.waitingResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'continueResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse>, List<Map<String, dynamic>>>(continueResponses, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stillWaitingResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>, List<Map<String, dynamic>>>(stillWaitingResponses, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitingResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>, List<Map<String, dynamic>>>(waitingResponses, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecification(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      continueResponses: (() { final guardedValue = map['continueResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse>(guardedValue, (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stillWaitingResponses: (() { final guardedValue = map['stillWaitingResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>(guardedValue, (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitingResponses: (() { final guardedValue = map['waitingResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>(guardedValue, (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
