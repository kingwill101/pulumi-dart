// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Details of the recovery orchestration plan operation execution.
class RecoveryPlanOperationStatusResponse {
  /// Error details for the most recent execution of the recovery orchestration plan.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// The most recent execution time of the recovery orchestration plan in UTC.
  final pulumi.Input<String> lastExecutedAt;
  /// The status of the most recent execution of the recovery orchestration plan.
  final pulumi.Input<String> operationStatus;

  /// Creates a new [RecoveryPlanOperationStatusResponse].
  /// [errorDetails] Error details for the most recent execution of the recovery orchestration plan.
  /// [lastExecutedAt] The most recent execution time of the recovery orchestration plan in UTC.
  /// [operationStatus] The status of the most recent execution of the recovery orchestration plan.
  const RecoveryPlanOperationStatusResponse({
    required this.errorDetails,
    required this.lastExecutedAt,
    required this.operationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'lastExecutedAt': lastExecutedAt,
      'operationStatus': operationStatus,
    };
  }

  factory RecoveryPlanOperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanOperationStatusResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      lastExecutedAt: pulumi.Input.fromValue(map['lastExecutedAt'] as String),
      operationStatus: pulumi.Input.fromValue(map['operationStatus'] as String),
    );
  }
}
