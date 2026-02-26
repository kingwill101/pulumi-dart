// ignore_for_file: unused_element, unnecessary_cast

import 'api_endpoint_handler_response.dart';
import 'script_handler_response.dart';
import 'static_files_handler_response.dart';

/// URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMapResponse {
  /// Uses API Endpoints to handle requests.
  final ApiEndpointHandlerResponse apiEndpoint;

  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final String authFailAction;

  /// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  final String login;

  /// 30x code to use when performing redirects for the secure field. Defaults to 302.
  final String redirectHttpResponseCode;

  /// Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  final ScriptHandlerResponse script;

  /// Security (HTTPS) enforcement for this URL.
  final String securityLevel;

  /// Returns the contents of a file, such as an image, as the response.
  final StaticFilesHandlerResponse staticFiles;

  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final String urlRegex;

  UrlMapResponse({
    required this.apiEndpoint,
    required this.authFailAction,
    required this.login,
    required this.redirectHttpResponseCode,
    required this.script,
    required this.securityLevel,
    required this.staticFiles,
    required this.urlRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiEndpoint'] = apiEndpoint.toMap();
    map['authFailAction'] = authFailAction;
    map['login'] = login;
    map['redirectHttpResponseCode'] = redirectHttpResponseCode;
    map['script'] = script.toMap();
    map['securityLevel'] = securityLevel;
    map['staticFiles'] = staticFiles.toMap();
    map['urlRegex'] = urlRegex;
    return map;
  }

  factory UrlMapResponse.fromMap(Map<String, dynamic> map) {
    return UrlMapResponse(
      apiEndpoint: ApiEndpointHandlerResponse.fromMap(
          (map['apiEndpoint'] as Map).cast<String, dynamic>()),
      authFailAction: map['authFailAction'] as String,
      login: map['login'] as String,
      redirectHttpResponseCode: map['redirectHttpResponseCode'] as String,
      script: ScriptHandlerResponse.fromMap(
          (map['script'] as Map).cast<String, dynamic>()),
      securityLevel: map['securityLevel'] as String,
      staticFiles: StaticFilesHandlerResponse.fromMap(
          (map['staticFiles'] as Map).cast<String, dynamic>()),
      urlRegex: map['urlRegex'] as String,
    );
  }
}
