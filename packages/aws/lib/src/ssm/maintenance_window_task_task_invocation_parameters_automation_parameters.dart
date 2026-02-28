// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_task_task_invocation_parameters_automation_parameters_parameter.dart';

class MaintenanceWindowTaskTaskInvocationParametersAutomationParameters {
  /// The version of an Automation document to use during task execution.
  final String? documentVersion;

  /// The parameters for the RUN_COMMAND task execution. Documented below.
  final List<
          MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter>?
      parameters;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersAutomationParameters].
  /// [documentVersion] The version of an Automation document to use during task execution.
  /// [parameters] The parameters for the RUN_COMMAND task execution. Documented below.
  MaintenanceWindowTaskTaskInvocationParametersAutomationParameters({
    this.documentVersion,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParametersAutomationParameters.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersAutomationParameters(
      documentVersion: map['documentVersion'] == null
          ? null
          : map['documentVersion'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter>(
              map['parameters'],
              (value) =>
                  MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
