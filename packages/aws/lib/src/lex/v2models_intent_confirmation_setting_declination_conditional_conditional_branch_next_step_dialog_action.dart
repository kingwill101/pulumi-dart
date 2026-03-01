// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction {
  /// If the dialog action is `ElicitSlot`, defines the slot to elicit from the user.
  final String? slotToElicit;

  /// Whether the next message for the intent is _not_ used.
  final bool? suppressNextMessage;

  /// Action that the bot should execute. Valid values are `ElicitIntent`, `StartIntent`, `ElicitSlot`, `EvaluateConditional`, `InvokeDialogCodeHook`, `ConfirmIntent`, `FulfillIntent`, `CloseIntent`, `EndConversation`.
  final String type;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction].
  /// [slotToElicit] If the dialog action is `ElicitSlot`, defines the slot to elicit from the user.
  /// [suppressNextMessage] Whether the next message for the intent is _not_ used.
  /// [type] Action that the bot should execute. Valid values are `ElicitIntent`, `StartIntent`, `ElicitSlot`, `EvaluateConditional`, `InvokeDialogCodeHook`, `ConfirmIntent`, `FulfillIntent`, `CloseIntent`, `EndConversation`.
  V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slotToElicit': ?slotToElicit,
      'suppressNextMessage': ?suppressNextMessage,
      'type': type,
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction(
      slotToElicit: map['slotToElicit'] == null
          ? null
          : map['slotToElicit'] as String,
      suppressNextMessage: map['suppressNextMessage'] == null
          ? null
          : map['suppressNextMessage'] as bool,
      type: map['type'] as String,
    );
  }
}
