// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement.dart';
import 'google_cloud_ml_v1_trial_parameter.dart';
import 'trial_state.dart';

/// The set of arguments for Trial.
class TrialMlV1Args {
  /// The final measurement containing the objective value.
  final pulumi.Input<GoogleCloudMlV1Measurement>? finalMeasurement;
  final pulumi.Input<String>? location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  final pulumi.Input<List<GoogleCloudMlV1Measurement>>? measurements;

  /// The parameters of the trial.
  final pulumi.Input<List<GoogleCloudMlV1TrialParameter>>? parameters;
  final pulumi.Input<String>? project;

  /// The detailed state of a trial.
  final pulumi.Input<TrialState>? state;
  final pulumi.Input<String> studyId;

  TrialMlV1Args({
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
      map['finalMeasurement'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudMlV1Measurement, Map<String, dynamic>>(
          finalMeasurementValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final measurementsValue = measurements;
    if (measurementsValue != null) {
      map['measurements'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudMlV1Measurement>, List<Map<String, dynamic>>>(
          measurementsValue,
          (value) => pulumi.Input.encodeList<GoogleCloudMlV1Measurement,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudMlV1TrialParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<GoogleCloudMlV1TrialParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<TrialState, String>(
          stateValue, (value) => value.value);
    }
    map['studyId'] = studyId;
    return map;
  }

  factory TrialMlV1Args.fromMap(Map<String, dynamic> map) {
    return TrialMlV1Args(
      finalMeasurement:
          pulumi.Input.asOptionalInput<GoogleCloudMlV1Measurement>(
              map['finalMeasurement']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      measurements:
          pulumi.Input.asOptionalInput<List<GoogleCloudMlV1Measurement>>(
              map['measurements']),
      parameters:
          pulumi.Input.asOptionalInput<List<GoogleCloudMlV1TrialParameter>>(
              map['parameters']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asOptionalInput<TrialState>(map['state']),
      studyId: pulumi.Input.asInput<String>(map['studyId']),
    );
  }
}
