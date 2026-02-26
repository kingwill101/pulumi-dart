// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingNextStepDialogAction {
  /// If the dialog action is `ElicitSlot`, defines the slot to elicit from the user.
  final String? slotToElicit;

  /// Whether the next message for the intent is _not_ used.
  final bool? suppressNextMessage;

  /// Action that the bot should execute. Valid values are `ElicitIntent`, `StartIntent`, `ElicitSlot`, `EvaluateConditional`, `InvokeDialogCodeHook`, `ConfirmIntent`, `FulfillIntent`, `CloseIntent`, `EndConversation`.
  final String type;

  V2modelsIntentInitialResponseSettingNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final slotToElicitValue = slotToElicit;
    if (slotToElicitValue != null) {
      map['slotToElicit'] = slotToElicitValue;
    }
    final suppressNextMessageValue = suppressNextMessage;
    if (suppressNextMessageValue != null) {
      map['suppressNextMessage'] = suppressNextMessageValue;
    }
    map['type'] = type;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingNextStepDialogAction.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingNextStepDialogAction(
      slotToElicit:
          map['slotToElicit'] == null ? null : map['slotToElicit'] as String,
      suppressNextMessage: map['suppressNextMessage'] == null
          ? null
          : map['suppressNextMessage'] as bool,
      type: map['type'] as String,
    );
  }
}
