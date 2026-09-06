// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'secure_input_output_policy_response.dart';
import 'user_property_response.dart';
import 'web_activity_authentication_response.dart';

/// WebHook activity.
class WebHookActivityResponse {
  /// Authentication method used for calling the endpoint.
  final pulumi.Input<WebActivityAuthenticationResponse?>? authentication;
  /// Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? body;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? headers;
  /// Rest API method for target endpoint.
  final pulumi.Input<String> method;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<SecureInputOutputPolicyResponse?>? policy;
  /// When set to true, statusCode, output and error in callback request body will be consumed by activity. The activity can be marked as failed by setting statusCode &gt;= 400 in callback request. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? reportStatusOnCallBack;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// The timeout within which the webhook should be called back. If there is no value specified, it defaults to 10 minutes. Type: string. Pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<String?>? timeout;
  /// Type of activity.
  /// Expected value is 'WebHook'.
  final pulumi.Input<String> type;
  /// WebHook activity target endpoint and path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;

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
  /// [reportStatusOnCallBack] When set to true, statusCode, output and error in callback request body will be consumed by activity. The activity can be marked as failed by setting statusCode &gt;= 400 in callback request. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [timeout] The timeout within which the webhook should be called back. If there is no value specified, it defaults to 10 minutes. Type: string. Pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Type of activity.
  /// [url] WebHook activity target endpoint and path. Type: string (or Expression with resultType string).
  /// [userProperties] Activity user properties.
  const WebHookActivityResponse({
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
      'authentication': ?pulumi.Input.mapOptionalInputValue<WebActivityAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'body': ?body,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'headers': ?headers,
      'method': method,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<SecureInputOutputPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'reportStatusOnCallBack': ?reportStatusOnCallBack,
      'state': ?state,
      'timeout': ?timeout,
      'type': type,
      'url': url,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebHookActivityResponse.fromMap(Map<String, dynamic> map) {
    return WebHookActivityResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebActivityAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecureInputOutputPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reportStatusOnCallBack: (() { final guardedValue = map['reportStatusOnCallBack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url']),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
