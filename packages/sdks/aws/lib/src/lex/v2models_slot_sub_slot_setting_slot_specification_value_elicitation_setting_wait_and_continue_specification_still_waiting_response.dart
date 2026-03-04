// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final pulumi.Input<bool>? allowInterrupt;

  /// How often a message should be sent to the user.
  final pulumi.Input<int> frequencyInSeconds;
  final pulumi.Input<
    List<
      V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
    >
  >?
  messageGroups;

  /// If Amazon Lex waits longer than this length of time for a response, it will stop sending messages.
  final pulumi.Input<int> timeoutInSeconds;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [frequencyInSeconds] How often a message should be sent to the user.
  /// [messageGroups] Optional.
  /// [timeoutInSeconds] If Amazon Lex waits longer than this length of time for a response, it will stop sending messages.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    this.messageGroups,
    required this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'frequencyInSeconds': frequencyInSeconds,
      'messageGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
            >,
            List<Map<String, dynamic>>
          >(
            messageGroups,
            (value) =>
                pulumi.Input.encodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeoutInSeconds': timeoutInSeconds,
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse(
      allowInterrupt: (() {
        final guardedValue = map['allowInterrupt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frequencyInSeconds: pulumi.Input.fromValue(
        map['frequencyInSeconds'] as int,
      ),
      messageGroups: (() {
        final guardedValue = map['messageGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
          >(
            guardedValue,
            (value) =>
                V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      timeoutInSeconds: pulumi.Input.fromValue(map['timeoutInSeconds'] as int),
    );
  }
}
