// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionAuthParametersOauthOauthHttpParametersHeader {
  /// Specified whether the value is secret.
  final bool? isValueSecret;

  /// The key for the parameter.
  final String? key;

  /// The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  final String? value;

  EventConnectionAuthParametersOauthOauthHttpParametersHeader({
    this.isValueSecret,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isValueSecretValue = isValueSecret;
    if (isValueSecretValue != null) {
      map['isValueSecret'] = isValueSecretValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory EventConnectionAuthParametersOauthOauthHttpParametersHeader.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionAuthParametersOauthOauthHttpParametersHeader(
      isValueSecret:
          map['isValueSecret'] == null ? null : map['isValueSecret'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
