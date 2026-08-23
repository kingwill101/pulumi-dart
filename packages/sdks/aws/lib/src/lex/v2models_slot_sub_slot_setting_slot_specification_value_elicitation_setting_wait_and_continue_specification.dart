// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_continue_response.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_still_waiting_response.dart';
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_waiting_response.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification {
  /// Specifies whether the bot will wait for a user to respond.
  /// When this field is `false`, wait and continue responses for a slot aren't used.
  /// If the active field isn't specified, the default is `true`.
  final pulumi.Input<bool>? active;
  /// Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// See the `continueResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse>>? continueResponses;
  /// Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// See the `stillWaitingResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>>? stillWaitingResponses;
  /// Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  /// See the `waitingResponse` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>>? waitingResponses;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification].
  /// [active] Specifies whether the bot will wait for a user to respond.
  /// [continueResponses] Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// [stillWaitingResponses] Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// [waitingResponses] Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  const V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponses,
    this.stillWaitingResponses,
    this.waitingResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'continueResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse>, List<Map<String, dynamic>>>(continueResponses, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stillWaitingResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>, List<Map<String, dynamic>>>(stillWaitingResponses, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitingResponses': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>, List<Map<String, dynamic>>>(waitingResponses, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      continueResponses: (() { final guardedValue = map['continueResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse>(guardedValue, (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stillWaitingResponses: (() { final guardedValue = map['stillWaitingResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>(guardedValue, (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitingResponses: (() { final guardedValue = map['waitingResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>(guardedValue, (value) => V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
