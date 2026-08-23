// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_task_invocation_parameters_automation_parameters_parameter.dart';

class MaintenanceWindowTaskTaskInvocationParametersAutomationParameters {
  /// The version of an Automation document to use during task execution.
  final pulumi.Input<String>? documentVersion;
  /// The parameters for the RUN_COMMAND task execution. Documented below.
  final pulumi.Input<List<MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter>>? parameters;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersAutomationParameters].
  /// [documentVersion] The version of an Automation document to use during task execution.
  /// [parameters] The parameters for the RUN_COMMAND task execution. Documented below.
  const MaintenanceWindowTaskTaskInvocationParametersAutomationParameters({
    this.documentVersion,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentVersion': ?documentVersion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersAutomationParameters.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersAutomationParameters(
      documentVersion: (() { final guardedValue = map['documentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter>(guardedValue, (value) => MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
