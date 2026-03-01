// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// How often a message should be sent to the user.
  final int frequencyInSeconds;
  final List<
    V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
  >?
  messageGroups;

  /// If Amazon Lex waits longer than this length of time for a response, it will stop sending messages.
  final int timeoutInSeconds;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [frequencyInSeconds] How often a message should be sent to the user.
  /// [messageGroups] Optional.
  /// [timeoutInSeconds] If Amazon Lex waits longer than this length of time for a response, it will stop sending messages.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    this.messageGroups,
    required this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'frequencyInSeconds': frequencyInSeconds,
      'messageGroups': ?messageGroups == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup,
              Map<String, dynamic>
            >(messageGroups!, (value) => value.toMap()),
      'timeoutInSeconds': timeoutInSeconds,
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse(
      allowInterrupt: map['allowInterrupt'] == null
          ? null
          : map['allowInterrupt'] as bool,
      frequencyInSeconds: map['frequencyInSeconds'] as int,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
            >(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      timeoutInSeconds: map['timeoutInSeconds'] as int,
    );
  }
}
