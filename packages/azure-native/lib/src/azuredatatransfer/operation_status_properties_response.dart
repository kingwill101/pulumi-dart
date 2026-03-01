// ignore_for_file: unused_element, unnecessary_cast


/// Operation status associated with the last patch request
class OperationStatusPropertiesResponse {
  /// Operation status ID of the last patch request for this connection.
  final String id;
  /// Message for the operation for the last patch request for this connection.
  final String message;
  /// Operation status for the last patch request for this connection.
  final String status;

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
      id: map['id'] as String,
      message: map['message'] as String,
      status: map['status'] as String,
    );
  }
}

