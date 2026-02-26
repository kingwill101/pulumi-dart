// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_measurement.dart';
import 'google_cloud_ml_v1_trial_parameter.dart';
import 'trial_state.dart';

/// The set of arguments for Trial.
class TrialArgs3 {
  /// The final measurement containing the objective value.
  final Input<GoogleCloudMlV1Measurement>? finalMeasurement;
  final Input<String>? location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  final Input<List<GoogleCloudMlV1Measurement>>? measurements;

  /// The parameters of the trial.
  final Input<List<GoogleCloudMlV1TrialParameter>>? parameters;
  final Input<String>? project;

  /// The detailed state of a trial.
  final Input<TrialState>? state;
  final Input<String> studyId;

  TrialArgs3({
    this.finalMeasurement,
    this.location,
    this.measurements,
    this.parameters,
    this.project,
    this.state,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final finalMeasurementValue = finalMeasurement;
    if (finalMeasurementValue != null) {
      map['finalMeasurement'] = Input.mapOptionalInputValue<
              GoogleCloudMlV1Measurement, Map<String, dynamic>>(
          finalMeasurementValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final measurementsValue = measurements;
    if (measurementsValue != null) {
      map['measurements'] = Input.mapOptionalInputValue<
              List<GoogleCloudMlV1Measurement>, List<Map<String, dynamic>>>(
          measurementsValue,
          (value) => Input.encodeList<GoogleCloudMlV1Measurement,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<GoogleCloudMlV1TrialParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<GoogleCloudMlV1TrialParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<TrialState, String>(
          stateValue, (value) => value.value);
    }
    map['studyId'] = studyId;
    return map;
  }

  factory TrialArgs3.fromMap(Map<String, dynamic> map) {
    return TrialArgs3(
      finalMeasurement: Input.asOptionalInput<GoogleCloudMlV1Measurement>(
          map['finalMeasurement']),
      location: Input.asOptionalInput<String>(map['location']),
      measurements: Input.asOptionalInput<List<GoogleCloudMlV1Measurement>>(
          map['measurements']),
      parameters: Input.asOptionalInput<List<GoogleCloudMlV1TrialParameter>>(
          map['parameters']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<TrialState>(map['state']),
      studyId: Input.asInput<String>(map['studyId']),
    );
  }
}
