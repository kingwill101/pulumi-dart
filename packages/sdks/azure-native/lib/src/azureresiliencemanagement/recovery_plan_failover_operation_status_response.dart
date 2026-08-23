// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Details of the recovery orchestration plan failover operation execution.
class RecoveryPlanFailoverOperationStatusResponse {
  /// Error details for the most recent execution of the recovery orchestration plan.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// The most recent execution time of the recovery orchestration plan in UTC.
  final pulumi.Input<String> lastExecutedAt;
  /// The status of the most recent execution of the recovery orchestration plan.
  final pulumi.Input<String> operationStatus;
  /// The actual recovery time of the most recent recovery orchestration plan.
  final pulumi.Input<String> recoveryTimeActual;

  /// Creates a new [RecoveryPlanFailoverOperationStatusResponse].
  /// [errorDetails] Error details for the most recent execution of the recovery orchestration plan.
  /// [lastExecutedAt] The most recent execution time of the recovery orchestration plan in UTC.
  /// [operationStatus] The status of the most recent execution of the recovery orchestration plan.
  /// [recoveryTimeActual] The actual recovery time of the most recent recovery orchestration plan.
  const RecoveryPlanFailoverOperationStatusResponse({
    required this.errorDetails,
    required this.lastExecutedAt,
    required this.operationStatus,
    required this.recoveryTimeActual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'lastExecutedAt': lastExecutedAt,
      'operationStatus': operationStatus,
      'recoveryTimeActual': recoveryTimeActual,
    };
  }

  factory RecoveryPlanFailoverOperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanFailoverOperationStatusResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      lastExecutedAt: pulumi.Input.fromValue(map['lastExecutedAt'] as String),
      operationStatus: pulumi.Input.fromValue(map['operationStatus'] as String),
      recoveryTimeActual: pulumi.Input.fromValue(map['recoveryTimeActual'] as String),
    );
  }
}
