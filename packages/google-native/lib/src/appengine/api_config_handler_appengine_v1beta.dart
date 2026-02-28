// ignore_for_file: unused_element, unnecessary_cast

import 'api_config_handler_auth_fail_action_appengine_v1beta.dart';
import 'api_config_handler_login_appengine_v1beta.dart';
import 'api_config_handler_security_level_appengine_v1beta.dart';

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandlerAppengineV1beta {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final ApiConfigHandlerAuthFailActionAppengineV1beta? authFailAction;

  /// Level of login required to access this resource. Defaults to optional.
  final ApiConfigHandlerLoginAppengineV1beta? login;

  /// Path to the script from the application root directory.
  final String? script;

  /// Security (HTTPS) enforcement for this URL.
  final ApiConfigHandlerSecurityLevelAppengineV1beta? securityLevel;

  /// URL to serve the endpoint at.
  final String? url;

  /// Creates a new [ApiConfigHandlerAppengineV1beta].
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Defaults to optional.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  ApiConfigHandlerAppengineV1beta({
    this.authFailAction,
    this.login,
    this.script,
    this.securityLevel,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authFailActionValue = authFailAction;
    if (authFailActionValue != null) {
      map['authFailAction'] = authFailActionValue.value;
    }
    final loginValue = login;
    if (loginValue != null) {
      map['login'] = loginValue.value;
    }
    final scriptValue = script;
    if (scriptValue != null) {
      map['script'] = scriptValue;
    }
    final securityLevelValue = securityLevel;
    if (securityLevelValue != null) {
      map['securityLevel'] = securityLevelValue.value;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory ApiConfigHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandlerAppengineV1beta(
      authFailAction: map['authFailAction'] == null
          ? null
          : ApiConfigHandlerAuthFailActionAppengineV1beta.fromValue(
              map['authFailAction'] as String),
      login: map['login'] == null
          ? null
          : ApiConfigHandlerLoginAppengineV1beta.fromValue(
              map['login'] as String),
      script: map['script'] == null ? null : map['script'] as String,
      securityLevel: map['securityLevel'] == null
          ? null
          : ApiConfigHandlerSecurityLevelAppengineV1beta.fromValue(
              map['securityLevel'] as String),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
