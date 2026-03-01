// ignore_for_file: unused_element, unnecessary_cast


/// Definition of WebhookBuildTypeEnumValue
class WebhookBuildTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [WebhookBuildTypeEnumValue].
  /// [value] Property value
  WebhookBuildTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WebhookBuildTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return WebhookBuildTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

