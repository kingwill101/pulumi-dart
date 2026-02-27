// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_measurement_response.dart';
import 'google_cloud_aiplatform_v1beta1_trial_parameter_response.dart';

/// Result data returned by getTrial.
class GetTrialResult2 {
  /// The identifier of the client that originally requested this Trial. Each client is identified by a unique client_id. When a client asks for a suggestion, Vertex AI Vizier will assign it a Trial. The client should evaluate the Trial, complete it, and report back to Vertex AI Vizier. If suggestion is asked again by same client_id before the Trial is completed, the same Trial will be returned. Multiple clients with different client_ids can ask for suggestions simultaneously, each of them will get their own Trial.
  final String clientId;

  /// The CustomJob name linked to the Trial. It's set for a HyperparameterTuningJob's Trial.
  final String customJob;

  /// Time when the Trial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  final String endTime;

  /// The final measurement containing the objective value.
  final GoogleCloudAiplatformV1beta1MeasurementResponse finalMeasurement;

  /// A human readable string describing why the Trial is infeasible. This is set only if Trial state is `INFEASIBLE`.
  final String infeasibleReason;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_duration). These are used for early stopping computations.
  final List<GoogleCloudAiplatformV1beta1MeasurementResponse> measurements;

  /// Resource name of the Trial assigned by the service.
  final String name;

  /// The parameters of the Trial.
  final List<GoogleCloudAiplatformV1beta1TrialParameterResponse> parameters;

  /// Time when the Trial was started.
  final String startTime;

  /// The detailed state of the Trial.
  final String state;

  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a HyperparameterTuningJob and the job's trial_job_spec.enable_web_access field is `true`. The keys are names of each node used for the trial; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  final Map<String, String> webAccessUris;

  GetTrialResult2({
    required this.clientId,
    required this.customJob,
    required this.endTime,
    required this.finalMeasurement,
    required this.infeasibleReason,
    required this.measurements,
    required this.name,
    required this.parameters,
    required this.startTime,
    required this.state,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['customJob'] = customJob;
    map['endTime'] = endTime;
    map['finalMeasurement'] = finalMeasurement.toMap();
    map['infeasibleReason'] = infeasibleReason;
    map['measurements'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1MeasurementResponse,
        Map<String, dynamic>>(measurements, (value) => value.toMap());
    map['name'] = name;
    map['parameters'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1TrialParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['startTime'] = startTime;
    map['state'] = state;
    map['webAccessUris'] = webAccessUris;
    return map;
  }

  factory GetTrialResult2.fromMap(Map<String, dynamic> map) {
    return GetTrialResult2(
      clientId: map['clientId'] as String,
      customJob: map['customJob'] as String,
      endTime: map['endTime'] as String,
      finalMeasurement: GoogleCloudAiplatformV1beta1MeasurementResponse.fromMap(
          (map['finalMeasurement'] as Map).cast<String, dynamic>()),
      infeasibleReason: map['infeasibleReason'] as String,
      measurements:
          Input.decodeList<GoogleCloudAiplatformV1beta1MeasurementResponse>(
              map['measurements'],
              (value) =>
                  GoogleCloudAiplatformV1beta1MeasurementResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters:
          Input.decodeList<GoogleCloudAiplatformV1beta1TrialParameterResponse>(
              map['parameters'],
              (value) =>
                  GoogleCloudAiplatformV1beta1TrialParameterResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      webAccessUris: (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}
