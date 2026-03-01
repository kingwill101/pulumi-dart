// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionAuthParametersOauthOauthHttpParametersQueryString {
  /// Specified whether the value is secret.
  final bool? isValueSecret;

  /// The key for the parameter.
  final String? key;

  /// The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  final String? value;

  /// Creates a new [EventConnectionAuthParametersOauthOauthHttpParametersQueryString].
  /// [isValueSecret] Specified whether the value is secret.
  /// [key] The key for the parameter.
  /// [value] The value associated with the key. Created and stored in AWS Secrets Manager if is secret.
  EventConnectionAuthParametersOauthOauthHttpParametersQueryString({
    this.isValueSecret,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isValueSecret': ?isValueSecret,
      'key': ?key,
      'value': ?value,
    };
  }

  factory EventConnectionAuthParametersOauthOauthHttpParametersQueryString.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventConnectionAuthParametersOauthOauthHttpParametersQueryString(
      isValueSecret: map['isValueSecret'] == null
          ? null
          : map['isValueSecret'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
