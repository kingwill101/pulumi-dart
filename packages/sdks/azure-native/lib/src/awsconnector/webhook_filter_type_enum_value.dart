// ignore_for_file: unused_element, unnecessary_cast


/// Definition of WebhookFilterTypeEnumValue
class WebhookFilterTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [WebhookFilterTypeEnumValue].
  /// [value] Property value
  WebhookFilterTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WebhookFilterTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return WebhookFilterTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

