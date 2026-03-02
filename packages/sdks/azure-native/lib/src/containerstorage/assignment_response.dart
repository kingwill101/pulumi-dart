// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_status_response.dart';

/// Assignment Properties
class AssignmentResponse {
  /// Resource id for the assigned resource
  final pulumi.Input<String> id;
  /// Indicates if the assignment is in a usable state
  final pulumi.Input<AssignmentStatusResponse> status;

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
      'status': pulumi.Input.mapInputValue<AssignmentStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory AssignmentResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentResponse(
      id: (map['id'] as String).input(),
      status: (AssignmentStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

