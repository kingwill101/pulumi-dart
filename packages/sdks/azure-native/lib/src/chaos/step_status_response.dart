// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_status_response.dart';

/// Model that represents the a list of branches and branch statuses.
class StepStatusResponse {
  /// The array of branches.
  final pulumi.Input<List<BranchStatusResponse>> branches;
  /// The value of the status of the step.
  final pulumi.Input<String> status;
  /// The id of the step.
  final pulumi.Input<String> stepId;
  /// The name of the step.
  final pulumi.Input<String> stepName;

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
      'branches': pulumi.Input.mapInputValue<List<BranchStatusResponse>, List<Map<String, dynamic>>>(branches, (value) => pulumi.Input.encodeList<BranchStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'stepId': stepId,
      'stepName': stepName,
    };
  }

  factory StepStatusResponse.fromMap(Map<String, dynamic> map) {
    return StepStatusResponse(
      branches: pulumi.Input.fromValue(pulumi.Input.decodeList<BranchStatusResponse>(map['branches']!, (value) => BranchStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
      stepName: pulumi.Input.fromValue(map['stepName'] as String),
    );
  }
}

