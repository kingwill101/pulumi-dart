// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
