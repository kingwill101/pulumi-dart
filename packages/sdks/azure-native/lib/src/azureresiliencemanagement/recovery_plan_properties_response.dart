// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'recovery_groups_setting_response.dart';
import 'recovery_plan_failover_operation_status_response.dart';
import 'recovery_plan_operation_status_response.dart';

/// Properties of the recovery orchestration plan.
class RecoveryPlanPropertiesResponse {
  /// Error details associated with the resource.
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// The status of the most recent failover operation executed.
  final pulumi.Input<RecoveryPlanFailoverOperationStatusResponse> latestFailoverStatus;
  /// The status of the most recent validation performed.
  final pulumi.Input<RecoveryPlanOperationStatusResponse> latestValidationStatus;
  /// A description of the recovery orchestration plan.
  final pulumi.Input<String> planDescription;
  /// The current state of the recovery orchestration plan.
  final pulumi.Input<String> planState;
  /// The provisioning state of the recovery orchestration plan.
  final pulumi.Input<String> provisioningState;
  /// Settings for the recovery orchestration groups associated with the recovery orchestration plan.
  final pulumi.Input<RecoveryGroupsSettingResponse> recoveryGroupsSetting;

  /// Creates a new [RecoveryPlanPropertiesResponse].
  /// [errorDetails] Error details associated with the resource.
  /// [latestFailoverStatus] The status of the most recent failover operation executed.
  /// [latestValidationStatus] The status of the most recent validation performed.
  /// [planDescription] A description of the recovery orchestration plan.
  /// [planState] The current state of the recovery orchestration plan.
  /// [provisioningState] The provisioning state of the recovery orchestration plan.
  /// [recoveryGroupsSetting] Settings for the recovery orchestration groups associated with the recovery orchestration plan.
  const RecoveryPlanPropertiesResponse({
    required this.errorDetails,
    required this.latestFailoverStatus,
    required this.latestValidationStatus,
    required this.planDescription,
    required this.planState,
    required this.provisioningState,
    required this.recoveryGroupsSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'latestFailoverStatus': pulumi.Input.mapInputValue<RecoveryPlanFailoverOperationStatusResponse, Map<String, dynamic>>(latestFailoverStatus, (value) => value.toMap()),
      'latestValidationStatus': pulumi.Input.mapInputValue<RecoveryPlanOperationStatusResponse, Map<String, dynamic>>(latestValidationStatus, (value) => value.toMap()),
      'planDescription': planDescription,
      'planState': planState,
      'provisioningState': provisioningState,
      'recoveryGroupsSetting': pulumi.Input.mapInputValue<RecoveryGroupsSettingResponse, Map<String, dynamic>>(recoveryGroupsSetting, (value) => value.toMap()),
    };
  }

  factory RecoveryPlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanPropertiesResponse(
      errorDetails: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
      latestFailoverStatus: pulumi.Input.fromValue(RecoveryPlanFailoverOperationStatusResponse.fromMap((map['latestFailoverStatus']! as Map).cast<String, dynamic>())),
      latestValidationStatus: pulumi.Input.fromValue(RecoveryPlanOperationStatusResponse.fromMap((map['latestValidationStatus']! as Map).cast<String, dynamic>())),
      planDescription: pulumi.Input.fromValue(map['planDescription'] as String),
      planState: pulumi.Input.fromValue(map['planState'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      recoveryGroupsSetting: pulumi.Input.fromValue(RecoveryGroupsSettingResponse.fromMap((map['recoveryGroupsSetting']! as Map).cast<String, dynamic>())),
    );
  }
}
