// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'secure_input_output_policy_response.dart';
import 'user_property_response.dart';
import 'web_activity_authentication_response.dart';

/// WebHook activity.
class WebHookActivityResponse {
  /// Authentication method used for calling the endpoint.
  final WebActivityAuthenticationResponse? authentication;
  /// Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  final dynamic body;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  final Map<String, dynamic>? headers;
  /// Rest API method for target endpoint.
  final String method;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final SecureInputOutputPolicyResponse? policy;
  /// When set to true, statusCode, output and error in callback request body will be consumed by activity. The activity can be marked as failed by setting statusCode >= 400 in callback request. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic reportStatusOnCallBack;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// The timeout within which the webhook should be called back. If there is no value specified, it defaults to 10 minutes. Type: string. Pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final String? timeout;
  /// Type of activity.
  /// Expected value is 'WebHook'.
  final String type;
  /// WebHook activity target endpoint and path. Type: string (or Expression with resultType string).
  final dynamic url;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [WebHookActivityResponse].
  /// [authentication] Authentication method used for calling the endpoint.
  /// [body] Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [headers] Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  /// [method] Rest API method for target endpoint.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [reportStatusOnCallBack] When set to true, statusCode, output and error in callback request body will be consumed by activity. The activity can be marked as failed by setting statusCode >= 400 in callback request. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [timeout] The timeout within which the webhook should be called back. If there is no value specified, it defaults to 10 minutes. Type: string. Pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Type of activity.
  /// [url] WebHook activity target endpoint and path. Type: string (or Expression with resultType string).
  /// [userProperties] Activity user properties.
  WebHookActivityResponse({
    this.authentication,
    this.body,
    this.dependsOn,
    this.description,
    this.headers,
    required this.method,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.reportStatusOnCallBack,
    this.state,
    this.timeout,
    required this.type,
    required this.url,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'body': ?body,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'headers': ?headers,
      'method': method,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'reportStatusOnCallBack': ?reportStatusOnCallBack,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'url': url,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory WebHookActivityResponse.fromMap(Map<String, dynamic> map) {
    return WebHookActivityResponse(
      authentication: map['authentication'] == null ? null : WebActivityAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, dynamic>(),
      method: map['method'] as String,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : SecureInputOutputPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      reportStatusOnCallBack: map['reportStatusOnCallBack'] == null ? null : map['reportStatusOnCallBack'],
      state: map['state'] == null ? null : map['state'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      type: map['type'] as String,
      url: map['url'],
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

