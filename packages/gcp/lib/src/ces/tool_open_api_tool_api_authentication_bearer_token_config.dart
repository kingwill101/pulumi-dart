// ignore_for_file: unused_element, unnecessary_cast

class ToolOpenApiToolApiAuthenticationBearerTokenConfig {
  /// (Output)
  /// The bearer token. Must be in the format $context.variables.<name_of_variable>.
  final String? token;

  /// Creates a new [ToolOpenApiToolApiAuthenticationBearerTokenConfig].
  /// [token] (Output)
  ToolOpenApiToolApiAuthenticationBearerTokenConfig({
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

  factory ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(
      Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthenticationBearerTokenConfig(
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}
