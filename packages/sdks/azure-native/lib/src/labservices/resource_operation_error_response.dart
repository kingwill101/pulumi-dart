// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error details of the latest operation failure on this resource
class ResourceOperationErrorResponse {
  /// The operation action that failed
  final pulumi.Input<String>? action;
  /// The code that corresponds to the type of operation failure
  final pulumi.Input<String>? code;
  /// The operation failure message
  final pulumi.Input<String>? message;
  /// The datetime of when the error occured
  final pulumi.Input<String>? timestamp;

  /// Creates a new [ResourceOperationErrorResponse].
  /// [action] The operation action that failed
  /// [code] The code that corresponds to the type of operation failure
  /// [message] The operation failure message
  /// [timestamp] The datetime of when the error occured
  ResourceOperationErrorResponse({
    this.action,
    this.code,
    this.message,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'code': ?code,
      'message': ?message,
      'timestamp': ?timestamp,
    };
  }

  factory ResourceOperationErrorResponse.fromMap(Map<String, dynamic> map) {
    return ResourceOperationErrorResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      timestamp: map['timestamp'] == null ? null : (map['timestamp']! as String).input(),
    );
  }
}

