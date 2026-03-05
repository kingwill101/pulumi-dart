// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Operation status associated with the last patch request
class OperationStatusPropertiesResponse {
  /// Operation status ID of the last patch request for this connection.
  final pulumi.Input<String> id;
  /// Message for the operation for the last patch request for this connection.
  final pulumi.Input<String> message;
  /// Operation status for the last patch request for this connection.
  final pulumi.Input<String> status;

  /// Creates a new [OperationStatusPropertiesResponse].
  /// [id] Operation status ID of the last patch request for this connection.
  /// [message] Message for the operation for the last patch request for this connection.
  /// [status] Operation status for the last patch request for this connection.
  OperationStatusPropertiesResponse({
    required this.id,
    required this.message,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'message': message,
      'status': status,
    };
  }

  factory OperationStatusPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OperationStatusPropertiesResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

