// ignore_for_file: unused_element, unnecessary_cast

/// Message to capture settings for a BrowserDlpRule
class GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse {
  /// Immutable. The type of the Setting. .
  final String type;

  /// The value of the Setting.
  final Map<String, String> value;

  GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse(
      type: map['type'] as String,
      value: (map['value'] as Map).cast<String, String>(),
    );
  }
}
