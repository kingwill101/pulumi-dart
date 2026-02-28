// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_window_task_task_invocation_parameters_automation_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_lambda_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_step_functions_parameters.dart';

class MaintenanceWindowTaskTaskInvocationParameters {
  /// The parameters for an AUTOMATION task type. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersAutomationParameters?
      automationParameters;

  /// The parameters for a LAMBDA task type. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersLambdaParameters?
      lambdaParameters;

  /// The parameters for a RUN_COMMAND task type. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters?
      runCommandParameters;

  /// The parameters for a STEP_FUNCTIONS task type. Documented below.
  final MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters?
      stepFunctionsParameters;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParameters].
  /// [automationParameters] The parameters for an AUTOMATION task type. Documented below.
  /// [lambdaParameters] The parameters for a LAMBDA task type. Documented below.
  /// [runCommandParameters] The parameters for a RUN_COMMAND task type. Documented below.
  /// [stepFunctionsParameters] The parameters for a STEP_FUNCTIONS task type. Documented below.
  MaintenanceWindowTaskTaskInvocationParameters({
    this.automationParameters,
    this.lambdaParameters,
    this.runCommandParameters,
    this.stepFunctionsParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automationParametersValue = automationParameters;
    if (automationParametersValue != null) {
      map['automationParameters'] = automationParametersValue.toMap();
    }
    final lambdaParametersValue = lambdaParameters;
    if (lambdaParametersValue != null) {
      map['lambdaParameters'] = lambdaParametersValue.toMap();
    }
    final runCommandParametersValue = runCommandParameters;
    if (runCommandParametersValue != null) {
      map['runCommandParameters'] = runCommandParametersValue.toMap();
    }
    final stepFunctionsParametersValue = stepFunctionsParameters;
    if (stepFunctionsParametersValue != null) {
      map['stepFunctionsParameters'] = stepFunctionsParametersValue.toMap();
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParameters.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParameters(
      automationParameters: map['automationParameters'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersAutomationParameters
              .fromMap(
                  (map['automationParameters'] as Map).cast<String, dynamic>()),
      lambdaParameters: map['lambdaParameters'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersLambdaParameters
              .fromMap(
                  (map['lambdaParameters'] as Map).cast<String, dynamic>()),
      runCommandParameters: map['runCommandParameters'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters
              .fromMap(
                  (map['runCommandParameters'] as Map).cast<String, dynamic>()),
      stepFunctionsParameters: map['stepFunctionsParameters'] == null
          ? null
          : MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters
              .fromMap((map['stepFunctionsParameters'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
