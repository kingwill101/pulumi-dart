// ignore_for_file: unused_element, unnecessary_cast

class ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig {
  /// (Optional)
  final String? token;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig].
  /// [token] (Optional)
  ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig(
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}
