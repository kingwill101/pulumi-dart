// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// operation detail.
class OperationDetailResponse {
  /// operation description.
  final String description;
  /// error details.
  final ErrorDetailResponse error;
  /// operation id.
  final String id;
  /// operation name.
  final String name;
  /// operation resource id.
  final String resourceId;
  /// operation status.
  final String status;
  /// operation type.
  final String type;

  /// Creates a new [OperationDetailResponse].
  /// [description] operation description.
  /// [error] error details.
  /// [id] operation id.
  /// [name] operation name.
  /// [resourceId] operation resource id.
  /// [status] operation status.
  /// [type] operation type.
  OperationDetailResponse({
    required this.description,
    required this.error,
    required this.id,
    required this.name,
    required this.resourceId,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'error': error.toMap(),
      'id': id,
      'name': name,
      'resourceId': resourceId,
      'status': status,
      'type': type,
    };
  }

  factory OperationDetailResponse.fromMap(Map<String, dynamic> map) {
    return OperationDetailResponse(
      description: map['description'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

