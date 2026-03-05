// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_task_invocation_parameters_automation_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_lambda_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_run_command_parameters.dart';
import 'maintenance_window_task_task_invocation_parameters_step_functions_parameters.dart';

class MaintenanceWindowTaskTaskInvocationParameters {
  /// The parameters for an AUTOMATION task type. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersAutomationParameters>? automationParameters;
  /// The parameters for a LAMBDA task type. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersLambdaParameters>? lambdaParameters;
  /// The parameters for a RUN_COMMAND task type. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters>? runCommandParameters;
  /// The parameters for a STEP_FUNCTIONS task type. Documented below.
  final pulumi.Input<MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters>? stepFunctionsParameters;

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
    return <String, dynamic>{
      'automationParameters': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersAutomationParameters, Map<String, dynamic>>(automationParameters, (value) => value.toMap()),
      'lambdaParameters': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersLambdaParameters, Map<String, dynamic>>(lambdaParameters, (value) => value.toMap()),
      'runCommandParameters': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters, Map<String, dynamic>>(runCommandParameters, (value) => value.toMap()),
      'stepFunctionsParameters': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters, Map<String, dynamic>>(stepFunctionsParameters, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParameters.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParameters(
      automationParameters: (() { final guardedValue = map['automationParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersAutomationParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaParameters: (() { final guardedValue = map['lambdaParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersLambdaParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runCommandParameters: (() { final guardedValue = map['runCommandParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersRunCommandParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepFunctionsParameters: (() { final guardedValue = map['stepFunctionsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

