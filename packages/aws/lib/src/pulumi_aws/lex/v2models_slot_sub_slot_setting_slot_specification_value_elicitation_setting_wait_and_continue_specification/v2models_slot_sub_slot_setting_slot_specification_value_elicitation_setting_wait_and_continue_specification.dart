// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_continue_response/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_continue_response.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_still_waiting_response/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_still_waiting_response.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_waiting_response/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_waiting_response.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification {
  /// Specifies whether the bot will wait for a user to respond.
  /// When this field is `false`, wait and continue responses for a slot aren't used.
  /// If the active field isn't specified, the default is `true`.
  final bool? active;

  /// Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// See the `continue_response` argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse>?
      continueResponses;

  /// Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// See the `still_waiting_response` argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>?
      stillWaitingResponses;

  /// Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  /// See the `waiting_response` argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>?
      waitingResponses;

  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponses,
    this.stillWaitingResponses,
    this.waitingResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final continueResponsesValue = continueResponses;
    if (continueResponsesValue != null) {
      map['continueResponses'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse,
          Map<String,
              dynamic>>(continueResponsesValue, (value) => value.toMap());
    }
    final stillWaitingResponsesValue = stillWaitingResponses;
    if (stillWaitingResponsesValue != null) {
      map['stillWaitingResponses'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse,
          Map<String,
              dynamic>>(stillWaitingResponsesValue, (value) => value.toMap());
    }
    final waitingResponsesValue = waitingResponses;
    if (waitingResponsesValue != null) {
      map['waitingResponses'] = pulumi.Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse,
          Map<String,
              dynamic>>(waitingResponsesValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification(
      active: map['active'] == null ? null : map['active'] as bool,
      continueResponses: map['continueResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse>(
              map['continueResponses'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse
                      .fromMap((value as Map).cast<String, dynamic>())),
      stillWaitingResponses: map['stillWaitingResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>(
              map['stillWaitingResponses'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse
                      .fromMap((value as Map).cast<String, dynamic>())),
      waitingResponses: map['waitingResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>(
              map['waitingResponses'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
