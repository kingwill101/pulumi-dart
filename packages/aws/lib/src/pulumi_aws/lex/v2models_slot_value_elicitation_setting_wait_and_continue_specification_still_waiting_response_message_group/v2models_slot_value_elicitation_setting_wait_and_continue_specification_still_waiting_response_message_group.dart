// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_message/v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_message.dart';
import '../v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation/v2models_slot_value_elicitation_setting_wait_and_continue_specification_still_waiting_response_message_group_variation.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `message` argument reference - they are identical.
  final V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage?
      message;

  /// Configuration blocks for message variations to send to the user.
  /// When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `variation` argument reference - they are identical.
  final List<
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation>?
      variations;

  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue.toMap();
    }
    final variationsValue = variations;
    if (variationsValue != null) {
      map['variations'] = pulumi.Input.encodeList<
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation,
          Map<String, dynamic>>(variationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup(
      message: map['message'] == null
          ? null
          : V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage
              .fromMap((map['message'] as Map).cast<String, dynamic>()),
      variations: map['variations'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation>(
              map['variations'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
