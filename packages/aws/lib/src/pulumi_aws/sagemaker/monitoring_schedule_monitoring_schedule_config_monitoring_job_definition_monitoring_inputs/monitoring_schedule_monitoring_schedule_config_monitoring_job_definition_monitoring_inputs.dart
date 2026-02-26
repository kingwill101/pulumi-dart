// ignore_for_file: unused_element, unnecessary_cast

import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input.dart';
import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_endpoint_input/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_endpoint_input.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs {
  /// Input object for the batch transform job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput?
      batchTransformInput;

  /// Endpoint for a monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput?
      endpointInput;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs({
    this.batchTransformInput,
    this.endpointInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchTransformInputValue = batchTransformInput;
    if (batchTransformInputValue != null) {
      map['batchTransformInput'] = batchTransformInputValue.toMap();
    }
    final endpointInputValue = endpointInput;
    if (endpointInputValue != null) {
      map['endpointInput'] = endpointInputValue.toMap();
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs(
      batchTransformInput: map['batchTransformInput'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInput
              .fromMap(
                  (map['batchTransformInput'] as Map).cast<String, dynamic>()),
      endpointInput: map['endpointInput'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsEndpointInput
              .fromMap((map['endpointInput'] as Map).cast<String, dynamic>()),
    );
  }
}
