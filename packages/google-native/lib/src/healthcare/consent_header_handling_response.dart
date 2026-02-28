// ignore_for_file: unused_element, unnecessary_cast

/// How the server handles the consent header.
class ConsentHeaderHandlingResponse {
  /// Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  final String profile;

  /// Creates a new [ConsentHeaderHandlingResponse].
  /// [profile] Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  ConsentHeaderHandlingResponse({
    required this.profile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['profile'] = profile;
    return map;
  }

  factory ConsentHeaderHandlingResponse.fromMap(Map<String, dynamic> map) {
    return ConsentHeaderHandlingResponse(
      profile: map['profile'] as String,
    );
  }
}
