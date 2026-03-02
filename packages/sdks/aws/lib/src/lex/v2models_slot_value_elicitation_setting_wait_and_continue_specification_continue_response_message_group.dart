// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_message.dart';
import 'v2models_slot_value_elicitation_setting_wait_and_continue_specification_continue_response_message_group_variation.dart';

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup {
  /// Configuration block for the primary message that Amazon Lex should send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `message` argument reference - they are identical.
  final pulumi.Input<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage>? message;
  /// Configuration blocks for message variations to send to the user.
  /// When variations are defined, Amazon Lex chooses the primary message or one of the variations to send to the user.
  /// See the `aws.lex.V2modelsIntent` resource for details on the `variation` argument reference - they are identical.
  final pulumi.Input<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation>>? variations;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup].
  /// [message] Configuration block for the primary message that Amazon Lex should send to the user.
  /// [variations] Configuration blocks for message variations to send to the user.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup({
    this.message,
    this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'variations': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup(
      message: map['message'] == null ? null : ((V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage.fromMap((map['message']! as Map).cast<String, dynamic>())).input()).input(),
      variations: map['variations'] == null ? null : ((pulumi.Input.decodeList<V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation>(map['variations']!, (value) => V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

