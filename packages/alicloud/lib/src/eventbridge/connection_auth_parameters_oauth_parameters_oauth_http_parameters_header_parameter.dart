// ignore_for_file: unused_element, unnecessary_cast


class ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter {
  /// Specifies whether to enable authentication.
  final String? isValueSecret;
  /// The key of the request path.
  final String? key;
  /// The key of the request path.
  final String? value;

  /// Creates a new [ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter].
  /// [isValueSecret] Specifies whether to enable authentication.
  /// [key] The key of the request path.
  /// [value] The key of the request path.
  ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter({
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

  factory ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameter(
      isValueSecret: map['isValueSecret'] == null ? null : map['isValueSecret'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

