// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_debug_session_args_doc}
/// The set of arguments for DebugSession.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_debug_session_args_doc}
class DebugSessionArgs {
  final pulumi.Input<String> apiId;

  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  final pulumi.Input<int>? count;
  final pulumi.Input<String> environmentId;

  /// Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  final pulumi.Input<String>? filter;

  /// A unique ID for this DebugSession.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> revisionId;

  /// Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  final pulumi.Input<String>? timeout;

  /// Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  final pulumi.Input<int>? tracesize;

  /// Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  final pulumi.Input<int>? validity;

  /// Creates a new [DebugSessionArgs].
  /// [apiId] Required.
  /// [count] Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  /// [environmentId] Required.
  /// [filter] Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  /// [name] A unique ID for this DebugSession.
  /// [organizationId] Required.
  /// [revisionId] Required.
  /// [timeout] Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  /// [tracesize] Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  /// [validity] Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  DebugSessionArgs({
    required String apiId,
    int? count,
    required String environmentId,
    String? filter,
    String? name,
    required String organizationId,
    required String revisionId,
    String? timeout,
    int? tracesize,
    int? validity,
  }) : apiId = pulumi.Input.asInput<String>(apiId),
       count = pulumi.Input.asOptionalInput<int>(count),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       filter = pulumi.Input.asOptionalInput<String>(filter),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       revisionId = pulumi.Input.asInput<String>(revisionId),
       timeout = pulumi.Input.asOptionalInput<String>(timeout),
       tracesize = pulumi.Input.asOptionalInput<int>(tracesize),
       validity = pulumi.Input.asOptionalInput<int>(validity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'count': ?count,
      'environmentId': environmentId,
      'filter': ?filter,
      'name': ?name,
      'organizationId': organizationId,
      'revisionId': revisionId,
      'timeout': ?timeout,
      'tracesize': ?tracesize,
      'validity': ?validity,
    };
  }

  factory DebugSessionArgs.fromMap(Map<String, dynamic> map) {
    return DebugSessionArgs(
      apiId: map['apiId'] as String,
      count: map['count'] == null ? null : map['count'] as int,
      environmentId: map['environmentId'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      revisionId: map['revisionId'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      tracesize: map['tracesize'] == null ? null : map['tracesize'] as int,
      validity: map['validity'] == null ? null : map['validity'] as int,
    );
  }
}
