// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_waiting_response.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecification {
  /// Specifies whether the bot will wait for a user to respond.
  /// When this field is `false`, wait and continue responses for a slot aren't used.
  /// If the active field isn't specified, the default is `true`.
  final bool? active;
  /// Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// See the `continue_response` argument reference below.
  final List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse>? continueResponses;
  /// Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// See the `still_waiting_response` argument reference below.
  final List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>? stillWaitingResponses;
  /// Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  /// See the `waiting_response` argument reference below.
  final List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>? waitingResponses;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecification].
  /// [active] Specifies whether the bot will wait for a user to respond.
  /// [continueResponses] Response that Amazon Lex sends to indicate that the bot is ready to continue the conversation.
  /// [stillWaitingResponses] Response that Amazon Lex sends periodically to the user to indicate that the bot is still waiting for input from the user.
  /// [waitingResponses] Response that Amazon Lex sends to indicate that the bot is waiting for the conversation to continue.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponses,
    this.stillWaitingResponses,
    this.waitingResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'continueResponses': ?continueResponses == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse, Map<String, dynamic>>(continueResponses!, (value) => value.toMap()),
      'stillWaitingResponses': ?stillWaitingResponses == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse, Map<String, dynamic>>(stillWaitingResponses!, (value) => value.toMap()),
      'waitingResponses': ?waitingResponses == null ? null : pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse, Map<String, dynamic>>(waitingResponses!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecification(
      active: map['active'] == null ? null : map['active'] as bool,
      continueResponses: map['continueResponses'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse>(map['continueResponses'], (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse.fromMap((value as Map).cast<String, dynamic>())),
      stillWaitingResponses: map['stillWaitingResponses'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse>(map['stillWaitingResponses'], (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse.fromMap((value as Map).cast<String, dynamic>())),
      waitingResponses: map['waitingResponses'] == null ? null : pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse>(map['waitingResponses'], (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

