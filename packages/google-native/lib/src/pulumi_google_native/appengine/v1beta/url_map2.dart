// ignore_for_file: unused_element, unnecessary_cast

import 'api_endpoint_handler2.dart';
import 'script_handler2.dart';
import 'static_files_handler2.dart';
import 'url_map_auth_fail_action2.dart';
import 'url_map_login2.dart';
import 'url_map_redirect_http_response_code2.dart';
import 'url_map_security_level2.dart';

/// URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMap2 {
  /// Uses API Endpoints to handle requests.
  final ApiEndpointHandler2? apiEndpoint;

  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final UrlMapAuthFailAction2? authFailAction;

  /// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  final UrlMapLogin2? login;

  /// 30x code to use when performing redirects for the secure field. Defaults to 302.
  final UrlMapRedirectHttpResponseCode2? redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  final ScriptHandler2? script;

  /// Security (HTTPS) enforcement for this URL.
  final UrlMapSecurityLevel2? securityLevel;

  /// Returns the contents of a file, such as an image, as the response.
  final StaticFilesHandler2? staticFiles;

  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final String? urlRegex;

  UrlMap2({
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

  factory UrlMap2.fromMap(Map<String, dynamic> map) {
    return UrlMap2(
      apiEndpoint: map['apiEndpoint'] == null
          ? null
          : ApiEndpointHandler2.fromMap(
              (map['apiEndpoint'] as Map).cast<String, dynamic>()),
      authFailAction: map['authFailAction'] == null
          ? null
          : UrlMapAuthFailAction2.fromValue(map['authFailAction'] as String),
      login: map['login'] == null
          ? null
          : UrlMapLogin2.fromValue(map['login'] as String),
      redirectHttpResponseCode: map['redirectHttpResponseCode'] == null
          ? null
          : UrlMapRedirectHttpResponseCode2.fromValue(
              map['redirectHttpResponseCode'] as String),
      script: map['script'] == null
          ? null
          : ScriptHandler2.fromMap(
              (map['script'] as Map).cast<String, dynamic>()),
      securityLevel: map['securityLevel'] == null
          ? null
          : UrlMapSecurityLevel2.fromValue(map['securityLevel'] as String),
      staticFiles: map['staticFiles'] == null
          ? null
          : StaticFilesHandler2.fromMap(
              (map['staticFiles'] as Map).cast<String, dynamic>()),
      urlRegex: map['urlRegex'] == null ? null : map['urlRegex'] as String,
    );
  }
}
