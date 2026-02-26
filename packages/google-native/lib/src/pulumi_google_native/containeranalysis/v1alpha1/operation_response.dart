// ignore_for_file: unused_element, unnecessary_cast

import 'status_response11.dart';

/// This resource represents a long-running operation that is the result of a network API call.
class OperationResponse {
  /// If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.
  final bool done;

  /// The error result of the operation in case of failure or cancellation.
  final StatusResponse11 error;

  /// Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
  final Map<String, String> metadata;

  /// The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.
  final String name;

  /// The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  final Map<String, String> response;

  OperationResponse({
    required this.done,
    required this.error,
    required this.metadata,
    required this.name,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['done'] = done;
    map['error'] = error.toMap();
    map['metadata'] = metadata;
    map['name'] = name;
    map['response'] = response;
    return map;
  }

  factory OperationResponse.fromMap(Map<String, dynamic> map) {
    return OperationResponse(
      done: map['done'] as bool,
      error: StatusResponse11.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      response: (map['response'] as Map).cast<String, String>(),
    );
  }
}
