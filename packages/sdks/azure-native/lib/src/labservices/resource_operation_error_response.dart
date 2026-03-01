// ignore_for_file: unused_element, unnecessary_cast


/// Error details of the latest operation failure on this resource
class ResourceOperationErrorResponse {
  /// The operation action that failed
  final String? action;
  /// The code that corresponds to the type of operation failure
  final String? code;
  /// The operation failure message
  final String? message;
  /// The datetime of when the error occured
  final String? timestamp;

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
      action: map['action'] == null ? null : map['action'] as String,
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

