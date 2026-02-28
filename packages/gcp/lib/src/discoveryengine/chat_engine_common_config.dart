// ignore_for_file: unused_element, unnecessary_cast

class ChatEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  final String? companyName;

  /// Creates a new [ChatEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.
  ChatEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final companyNameValue = companyName;
    if (companyNameValue != null) {
      map['companyName'] = companyNameValue;
    }
    return map;
  }

  factory ChatEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return ChatEngineCommonConfig(
      companyName:
          map['companyName'] == null ? null : map['companyName'] as String,
    );
  }
}
