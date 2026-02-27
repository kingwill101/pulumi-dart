// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for DebugSession.
class DebugSessionArgs {
  final Input<String> apiId;

  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  final Input<int>? count;
  final Input<String> environmentId;

  /// Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  final Input<String>? filter;

  /// A unique ID for this DebugSession.
  final Input<String>? name;
  final Input<String> organizationId;
  final Input<String> revisionId;

  /// Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.
  final Input<String>? timeout;

  /// Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  final Input<int>? tracesize;

  /// Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  final Input<int>? validity;

  DebugSessionArgs({
    required this.apiId,
    this.count,
    required this.environmentId,
    this.filter,
    this.name,
    required this.organizationId,
    required this.revisionId,
    this.timeout,
    this.tracesize,
    this.validity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    map['environmentId'] = environmentId;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['revisionId'] = revisionId;
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final tracesizeValue = tracesize;
    if (tracesizeValue != null) {
      map['tracesize'] = tracesizeValue;
    }
    final validityValue = validity;
    if (validityValue != null) {
      map['validity'] = validityValue;
    }
    return map;
  }

  factory DebugSessionArgs.fromMap(Map<String, dynamic> map) {
    return DebugSessionArgs(
      apiId: Input.asInput<String>(map['apiId']),
      count: Input.asOptionalInput<int>(map['count']),
      environmentId: Input.asInput<String>(map['environmentId']),
      filter: Input.asOptionalInput<String>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      revisionId: Input.asInput<String>(map['revisionId']),
      timeout: Input.asOptionalInput<String>(map['timeout']),
      tracesize: Input.asOptionalInput<int>(map['tracesize']),
      validity: Input.asOptionalInput<int>(map['validity']),
    );
  }
}
