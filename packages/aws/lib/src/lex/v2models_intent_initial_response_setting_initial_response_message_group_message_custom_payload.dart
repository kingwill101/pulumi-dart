// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
