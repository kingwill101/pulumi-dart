// ignore_for_file: unused_element, unnecessary_cast

import 'api_endpoint_handler.dart';
import 'script_handler.dart';
import 'static_files_handler.dart';
import 'url_map_auth_fail_action.dart';
import 'url_map_login.dart';
import 'url_map_redirect_http_response_code.dart';
import 'url_map_security_level.dart';

/// URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMap {
  /// Uses API Endpoints to handle requests.
  final ApiEndpointHandler? apiEndpoint;

  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final UrlMapAuthFailAction? authFailAction;

  /// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  final UrlMapLogin? login;

  /// 30x code to use when performing redirects for the secure field. Defaults to 302.
  final UrlMapRedirectHttpResponseCode? redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  final ScriptHandler? script;

  /// Security (HTTPS) enforcement for this URL.
  final UrlMapSecurityLevel? securityLevel;

  /// Returns the contents of a file, such as an image, as the response.
  final StaticFilesHandler? staticFiles;

  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final String? urlRegex;

  UrlMap({
    this.apiEndpoint,
    this.authFailAction,
    this.login,
    this.redirectHttpResponseCode,
    this.script,
    this.securityLevel,
    this.staticFiles,
    this.urlRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiEndpointValue = apiEndpoint;
    if (apiEndpointValue != null) {
      map['apiEndpoint'] = apiEndpointValue.toMap();
    }
    final authFailActionValue = authFailAction;
    if (authFailActionValue != null) {
      map['authFailAction'] = authFailActionValue.value;
    }
    final loginValue = login;
    if (loginValue != null) {
      map['login'] = loginValue.value;
    }
    final redirectHttpResponseCodeValue = redirectHttpResponseCode;
    if (redirectHttpResponseCodeValue != null) {
      map['redirectHttpResponseCode'] = redirectHttpResponseCodeValue.value;
    }
    final scriptValue = script;
    if (scriptValue != null) {
      map['script'] = scriptValue.toMap();
    }
    final securityLevelValue = securityLevel;
    if (securityLevelValue != null) {
      map['securityLevel'] = securityLevelValue.value;
    }
    final staticFilesValue = staticFiles;
    if (staticFilesValue != null) {
      map['staticFiles'] = staticFilesValue.toMap();
    }
    final urlRegexValue = urlRegex;
    if (urlRegexValue != null) {
      map['urlRegex'] = urlRegexValue;
    }
    return map;
  }

  factory UrlMap.fromMap(Map<String, dynamic> map) {
    return UrlMap(
      apiEndpoint: map['apiEndpoint'] == null
          ? null
          : ApiEndpointHandler.fromMap(
              (map['apiEndpoint'] as Map).cast<String, dynamic>()),
      authFailAction: map['authFailAction'] == null
          ? null
          : UrlMapAuthFailAction.fromValue(map['authFailAction'] as String),
      login: map['login'] == null
          ? null
          : UrlMapLogin.fromValue(map['login'] as String),
      redirectHttpResponseCode: map['redirectHttpResponseCode'] == null
          ? null
          : UrlMapRedirectHttpResponseCode.fromValue(
              map['redirectHttpResponseCode'] as String),
      script: map['script'] == null
          ? null
          : ScriptHandler.fromMap(
              (map['script'] as Map).cast<String, dynamic>()),
      securityLevel: map['securityLevel'] == null
          ? null
          : UrlMapSecurityLevel.fromValue(map['securityLevel'] as String),
      staticFiles: map['staticFiles'] == null
          ? null
          : StaticFilesHandler.fromMap(
              (map['staticFiles'] as Map).cast<String, dynamic>()),
      urlRegex: map['urlRegex'] == null ? null : map['urlRegex'] as String,
    );
  }
}
