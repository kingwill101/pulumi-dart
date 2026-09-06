// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error details of the latest operation failure on this resource
class ResourceOperationErrorResponse {
  /// The operation action that failed
  final pulumi.Input<String?>? action;
  /// The code that corresponds to the type of operation failure
  final pulumi.Input<String?>? code;
  /// The operation failure message
  final pulumi.Input<String?>? message;
  /// The datetime of when the error occured
  final pulumi.Input<String?>? timestamp;

  /// Creates a new [ResourceOperationErrorResponse].
  /// [action] The operation action that failed
  /// [code] The code that corresponds to the type of operation failure
  /// [message] The operation failure message
  /// [timestamp] The datetime of when the error occured
  const ResourceOperationErrorResponse({
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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
