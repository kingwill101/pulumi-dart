// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group/v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse {
  /// Whether the user can interrupt a speech response from Amazon Lex.
  final bool? allowInterrupt;

  /// Configuration blocks for responses that Amazon Lex can send to the user.
  /// Amazon Lex chooses the actual response to send at runtime.
  /// See <span pulumi-lang-nodejs="`messageGroup`" pulumi-lang-dotnet="`MessageGroup`" pulumi-lang-go="`messageGroup`" pulumi-lang-python="`message_group`" pulumi-lang-yaml="`messageGroup`" pulumi-lang-java="`messageGroup`">`message_group`</span>.
  final List<
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup>?
      messageGroups;

  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse({
    this.allowInterrupt,
    this.messageGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInterruptValue = allowInterrupt;
    if (allowInterruptValue != null) {
      map['allowInterrupt'] = allowInterruptValue;
    }
    final messageGroupsValue = messageGroups;
    if (messageGroupsValue != null) {
      map['messageGroups'] = Input.encodeList<
          V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup,
          Map<String, dynamic>>(messageGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse(
      allowInterrupt:
          map['allowInterrupt'] == null ? null : map['allowInterrupt'] as bool,
      messageGroups: map['messageGroups'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup>(
              map['messageGroups'],
              (value) =>
                  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
