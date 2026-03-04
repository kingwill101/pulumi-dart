// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// operation detail.
class OperationDetailResponse {
  /// operation description.
  final pulumi.Input<String> description;

  /// error details.
  final pulumi.Input<ErrorDetailResponse> error;

  /// operation id.
  final pulumi.Input<String> id;

  /// operation name.
  final pulumi.Input<String> name;

  /// operation resource id.
  final pulumi.Input<String> resourceId;

  /// operation status.
  final pulumi.Input<String> status;

  /// operation type.
  final pulumi.Input<String> type;

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
      'error':
          pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(
            error,
            (value) => value.toMap(),
          ),
      'id': id,
      'name': name,
      'resourceId': resourceId,
      'status': status,
      'type': type,
    };
  }

  factory OperationDetailResponse.fromMap(Map<String, dynamic> map) {
    return OperationDetailResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      error: pulumi.Input.fromValue(
        ErrorDetailResponse.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
