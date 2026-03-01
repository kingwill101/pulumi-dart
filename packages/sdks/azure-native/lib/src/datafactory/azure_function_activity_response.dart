// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Azure Function activity.
class AzureFunctionActivityResponse {
  /// Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  final dynamic body;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Name of the Function that the Azure Function Activity will call. Type: string (or Expression with resultType string)
  final dynamic functionName;
  /// Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  final Map<String, dynamic>? headers;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Rest API method for target endpoint.
  final String method;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Type of activity.
  /// Expected value is 'AzureFunctionActivity'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [AzureFunctionActivityResponse].
  /// [body] Represents the payload that will be sent to the endpoint. Required for POST/PUT method, not allowed for GET method Type: string (or Expression with resultType string).
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [functionName] Name of the Function that the Azure Function Activity will call. Type: string (or Expression with resultType string)
  /// [headers] Represents the headers that will be sent to the request. For example, to set the language and type on a request: "headers" : { "Accept-Language": "en-us", "Content-Type": "application/json" }. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [method] Rest API method for target endpoint.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  AzureFunctionActivityResponse({
    this.body,
    this.dependsOn,
    this.description,
    required this.functionName,
    this.headers,
    this.linkedServiceName,
    required this.method,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'functionName': functionName,
      'headers': ?headers,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'method': method,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory AzureFunctionActivityResponse.fromMap(Map<String, dynamic> map) {
    return AzureFunctionActivityResponse(
      body: map['body'] == null ? null : map['body'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      functionName: map['functionName'],
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, dynamic>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

