// ignore_for_file: unused_element, unnecessary_cast

import 'api_config_handler_auth_fail_action.dart';
import 'api_config_handler_login.dart';
import 'api_config_handler_security_level.dart';

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandler {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final ApiConfigHandlerAuthFailAction? authFailAction;

  /// Level of login required to access this resource. Defaults to optional.
  final ApiConfigHandlerLogin? login;

  /// Path to the script from the application root directory.
  final String? script;

  /// Security (HTTPS) enforcement for this URL.
  final ApiConfigHandlerSecurityLevel? securityLevel;

  /// URL to serve the endpoint at.
  final String? url;

  /// Creates a new [ApiConfigHandler].
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Defaults to optional.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  ApiConfigHandler({
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

  factory ApiConfigHandler.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandler(
      authFailAction: map['authFailAction'] == null
          ? null
          : ApiConfigHandlerAuthFailAction.fromValue(
              map['authFailAction'] as String),
      login: map['login'] == null
          ? null
          : ApiConfigHandlerLogin.fromValue(map['login'] as String),
      script: map['script'] == null ? null : map['script'] as String,
      securityLevel: map['securityLevel'] == null
          ? null
          : ApiConfigHandlerSecurityLevel.fromValue(
              map['securityLevel'] as String),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
