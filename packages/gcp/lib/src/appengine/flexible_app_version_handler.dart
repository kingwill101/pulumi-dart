// ignore_for_file: unused_element, unnecessary_cast

import 'flexible_app_version_handler_script.dart';
import 'flexible_app_version_handler_static_files.dart';

class FlexibleAppVersionHandler {
  /// Actions to take when the user is not logged in.
  /// Possible values are: `AUTH_FAIL_ACTION_REDIRECT`, `AUTH_FAIL_ACTION_UNAUTHORIZED`.
  final String? authFailAction;

  /// Methods to restrict access to a URL based on login status.
  /// Possible values are: `LOGIN_OPTIONAL`, `LOGIN_ADMIN`, `LOGIN_REQUIRED`.
  final String? login;

  /// 30x code to use when performing redirects for the secure field.
  /// Possible values are: `REDIRECT_HTTP_RESPONSE_CODE_301`, `REDIRECT_HTTP_RESPONSE_CODE_302`, `REDIRECT_HTTP_RESPONSE_CODE_303`, `REDIRECT_HTTP_RESPONSE_CODE_307`.
  final String? redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern.
  /// Only the auto value is supported for Node.js in the App Engine standard environment, for example "script:" "auto".
  /// Structure is documented below.
  final FlexibleAppVersionHandlerScript? script;

  /// Security (HTTPS) enforcement for this URL.
  /// Possible values are: `SECURE_DEFAULT`, `SECURE_NEVER`, `SECURE_OPTIONAL`, `SECURE_ALWAYS`.
  final String? securityLevel;

  /// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.
  /// Static file handlers describe which files in the application directory are static files, and which URLs serve them.
  /// Structure is documented below.
  final FlexibleAppVersionHandlerStaticFiles? staticFiles;

  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
  /// All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final String? urlRegex;

  /// Creates a new [FlexibleAppVersionHandler].
  /// [authFailAction] Actions to take when the user is not logged in.
  /// [login] Methods to restrict access to a URL based on login status.
  /// [redirectHttpResponseCode] 30x code to use when performing redirects for the secure field.
  /// [script] Executes a script to handle the requests that match this URL pattern.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [staticFiles] Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.
  /// [urlRegex] URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
  FlexibleAppVersionHandler({
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
    final authFailActionValue = authFailAction;
    if (authFailActionValue != null) {
      map['authFailAction'] = authFailActionValue;
    }
    final loginValue = login;
    if (loginValue != null) {
      map['login'] = loginValue;
    }
    final redirectHttpResponseCodeValue = redirectHttpResponseCode;
    if (redirectHttpResponseCodeValue != null) {
      map['redirectHttpResponseCode'] = redirectHttpResponseCodeValue;
    }
    final scriptValue = script;
    if (scriptValue != null) {
      map['script'] = scriptValue.toMap();
    }
    final securityLevelValue = securityLevel;
    if (securityLevelValue != null) {
      map['securityLevel'] = securityLevelValue;
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

  factory FlexibleAppVersionHandler.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionHandler(
      authFailAction: map['authFailAction'] == null
          ? null
          : map['authFailAction'] as String,
      login: map['login'] == null ? null : map['login'] as String,
      redirectHttpResponseCode: map['redirectHttpResponseCode'] == null
          ? null
          : map['redirectHttpResponseCode'] as String,
      script: map['script'] == null
          ? null
          : FlexibleAppVersionHandlerScript.fromMap(
              (map['script'] as Map).cast<String, dynamic>()),
      securityLevel:
          map['securityLevel'] == null ? null : map['securityLevel'] as String,
      staticFiles: map['staticFiles'] == null
          ? null
          : FlexibleAppVersionHandlerStaticFiles.fromMap(
              (map['staticFiles'] as Map).cast<String, dynamic>()),
      urlRegex: map['urlRegex'] == null ? null : map['urlRegex'] as String,
    );
  }
}
