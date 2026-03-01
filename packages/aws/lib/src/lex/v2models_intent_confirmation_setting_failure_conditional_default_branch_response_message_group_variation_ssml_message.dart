// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
