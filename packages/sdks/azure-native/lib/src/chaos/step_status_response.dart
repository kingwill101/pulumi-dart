// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_status_response.dart';

/// Model that represents the a list of branches and branch statuses.
class StepStatusResponse {
  /// The array of branches.
  final List<BranchStatusResponse> branches;
  /// The value of the status of the step.
  final String status;
  /// The id of the step.
  final String stepId;
  /// The name of the step.
  final String stepName;

  /// Creates a new [StepStatusResponse].
  /// [branches] The array of branches.
  /// [status] The value of the status of the step.
  /// [stepId] The id of the step.
  /// [stepName] The name of the step.
  StepStatusResponse({
    required this.branches,
    required this.status,
    required this.stepId,
    required this.stepName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.encodeList<BranchStatusResponse, Map<String, dynamic>>(branches, (value) => value.toMap()),
      'status': status,
      'stepId': stepId,
      'stepName': stepName,
    };
  }

  factory StepStatusResponse.fromMap(Map<String, dynamic> map) {
    return StepStatusResponse(
      branches: pulumi.Input.decodeList<BranchStatusResponse>(map['branches'], (value) => BranchStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      stepId: map['stepId'] as String,
      stepName: map['stepName'] as String,
    );
  }
}

