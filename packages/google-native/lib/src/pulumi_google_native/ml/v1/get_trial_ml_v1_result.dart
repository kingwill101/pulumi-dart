// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_response.dart';
import 'google_cloud_ml_v1_trial_parameter_response.dart';

/// Result data returned by getTrial.
class GetTrialMlV1Result {
  /// The identifier of the client that originally requested this trial.
  final String clientId;

  /// Time at which the trial's status changed to COMPLETED.
  final String endTime;

  /// The final measurement containing the objective value.
  final GoogleCloudMlV1MeasurementResponse finalMeasurement;

  /// A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
  final String infeasibleReason;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  final List<GoogleCloudMlV1MeasurementResponse> measurements;

  /// Name of the trial assigned by the service.
  final String name;

  /// The parameters of the trial.
  final List<GoogleCloudMlV1TrialParameterResponse> parameters;

  /// Time at which the trial was started.
  final String startTime;

  /// The detailed state of a trial.
  final String state;

  /// If true, the parameters in this trial are not attempted again.
  final bool trialInfeasible;

  GetTrialMlV1Result({
    required this.clientId,
    required this.endTime,
    required this.finalMeasurement,
    required this.infeasibleReason,
    required this.measurements,
    required this.name,
    required this.parameters,
    required this.startTime,
    required this.state,
    required this.trialInfeasible,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['endTime'] = endTime;
    map['finalMeasurement'] = finalMeasurement.toMap();
    map['infeasibleReason'] = infeasibleReason;
    map['measurements'] = pulumi.Input.encodeList<
        GoogleCloudMlV1MeasurementResponse,
        Map<String, dynamic>>(measurements, (value) => value.toMap());
    map['name'] = name;
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudMlV1TrialParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['startTime'] = startTime;
    map['state'] = state;
    map['trialInfeasible'] = trialInfeasible;
    return map;
  }

  factory GetTrialMlV1Result.fromMap(Map<String, dynamic> map) {
    return GetTrialMlV1Result(
      clientId: map['clientId'] as String,
      endTime: map['endTime'] as String,
      finalMeasurement: GoogleCloudMlV1MeasurementResponse.fromMap(
          (map['finalMeasurement'] as Map).cast<String, dynamic>()),
      infeasibleReason: map['infeasibleReason'] as String,
      measurements: pulumi.Input.decodeList<GoogleCloudMlV1MeasurementResponse>(
          map['measurements'],
          (value) => GoogleCloudMlV1MeasurementResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters:
          pulumi.Input.decodeList<GoogleCloudMlV1TrialParameterResponse>(
              map['parameters'],
              (value) => GoogleCloudMlV1TrialParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      trialInfeasible: map['trialInfeasible'] as bool,
    );
  }
}
