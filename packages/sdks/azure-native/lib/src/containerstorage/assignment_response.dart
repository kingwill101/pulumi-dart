// ignore_for_file: unused_element, unnecessary_cast

import 'assignment_status_response.dart';

/// Assignment Properties
class AssignmentResponse {
  /// Resource id for the assigned resource
  final String id;
  /// Indicates if the assignment is in a usable state
  final AssignmentStatusResponse status;

  /// Creates a new [AssignmentResponse].
  /// [id] Resource id for the assigned resource
  /// [status] Indicates if the assignment is in a usable state
  AssignmentResponse({
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status.toMap(),
    };
  }

  factory AssignmentResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentResponse(
      id: map['id'] as String,
      status: AssignmentStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

