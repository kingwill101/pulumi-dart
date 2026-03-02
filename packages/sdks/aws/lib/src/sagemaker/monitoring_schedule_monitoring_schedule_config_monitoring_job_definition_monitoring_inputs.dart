// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_endpoint_input.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs {
  /// Input object for the batch transform job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput>? batchTransformInput;
  /// Endpoint for a monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput>? endpointInput;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs].
  /// [batchTransformInput] Input object for the batch transform job. Fields are documented below.
  /// [endpointInput] Endpoint for a monitoring job. Fields are documented below.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs({
    this.batchTransformInput,
    this.endpointInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchTransformInput': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput, Map<String, dynamic>>(batchTransformInput, (value) => value.toMap()),
      'endpointInput': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput, Map<String, dynamic>>(endpointInput, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs(
      batchTransformInput: map['batchTransformInput'] == null ? null : ((MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput.fromMap((map['batchTransformInput']! as Map).cast<String, dynamic>())).input()).input(),
      endpointInput: map['endpointInput'] == null ? null : ((MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput.fromMap((map['endpointInput']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

