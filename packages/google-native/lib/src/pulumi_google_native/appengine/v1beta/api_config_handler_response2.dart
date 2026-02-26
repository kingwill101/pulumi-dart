// ignore_for_file: unused_element, unnecessary_cast

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandlerResponse2 {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final String authFailAction;

  /// Level of login required to access this resource. Defaults to optional.
  final String login;

  /// Path to the script from the application root directory.
  final String script;

  /// Security (HTTPS) enforcement for this URL.
  final String securityLevel;

  /// URL to serve the endpoint at.
  final String url;

  ApiConfigHandlerResponse2({
    required this.authFailAction,
    required this.login,
    required this.script,
    required this.securityLevel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authFailAction'] = authFailAction;
    map['login'] = login;
    map['script'] = script;
    map['securityLevel'] = securityLevel;
    map['url'] = url;
    return map;
  }

  factory ApiConfigHandlerResponse2.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandlerResponse2(
      authFailAction: map['authFailAction'] as String,
      login: map['login'] as String,
      script: map['script'] as String,
      securityLevel: map['securityLevel'] as String,
      url: map['url'] as String,
    );
  }
}
