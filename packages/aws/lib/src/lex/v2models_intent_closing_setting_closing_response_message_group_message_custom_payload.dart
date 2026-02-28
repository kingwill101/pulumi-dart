// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
