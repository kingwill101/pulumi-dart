// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user.
  /// Amazon Lex chooses the actual response to send at runtime.
  /// See `message_group`.
  final List<
    V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup
  >?
  messageGroups;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse].
  /// [allowInterrupt] Whether the user can interrupt a speech response from Amazon Lex.
  /// [messageGroups] Configuration blocks for responses that Amazon Lex can send to the user.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInterrupt': ?allowInterrupt,
      'messageGroups': ?messageGroups == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup,
              Map<String, dynamic>
            >(messageGroups!, (value) => value.toMap()),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse(
      allowInterrupt: map['allowInterrupt'] == null
          ? null
          : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup
            >(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
