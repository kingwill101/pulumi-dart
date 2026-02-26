// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_prediction_input.dart';
import 'google_cloud_ml_v1_prediction_output.dart';
import 'google_cloud_ml_v1_training_input.dart';
import 'google_cloud_ml_v1_training_output.dart';

/// The set of arguments for Job.
class JobArgs10 {
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  final Input<String>? etag;

  /// The user-specified id of the job.
  final Input<String> jobId;

  /// Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  final Input<Map<String, String>>? labels;

  /// Input parameters to create a prediction job.
  final Input<GoogleCloudMlV1PredictionInput>? predictionInput;

  /// The current prediction job result.
  final Input<GoogleCloudMlV1PredictionOutput>? predictionOutput;
  final Input<String>? project;

  /// Input parameters to create a training job.
  final Input<GoogleCloudMlV1TrainingInput>? trainingInput;

  /// The current training job result.
  final Input<GoogleCloudMlV1TrainingOutput>? trainingOutput;

  JobArgs10({
    this.etag,
    required this.jobId,
    this.labels,
    this.predictionInput,
    this.predictionOutput,
    this.project,
    this.trainingInput,
    this.trainingOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['jobId'] = jobId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final predictionInputValue = predictionInput;
    if (predictionInputValue != null) {
      map['predictionInput'] = Input.mapOptionalInputValue<
          GoogleCloudMlV1PredictionInput,
          Map<String, dynamic>>(predictionInputValue, (value) => value.toMap());
    }
    final predictionOutputValue = predictionOutput;
    if (predictionOutputValue != null) {
      map['predictionOutput'] = Input.mapOptionalInputValue<
              GoogleCloudMlV1PredictionOutput, Map<String, dynamic>>(
          predictionOutputValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trainingInputValue = trainingInput;
    if (trainingInputValue != null) {
      map['trainingInput'] = Input.mapOptionalInputValue<
          GoogleCloudMlV1TrainingInput,
          Map<String, dynamic>>(trainingInputValue, (value) => value.toMap());
    }
    final trainingOutputValue = trainingOutput;
    if (trainingOutputValue != null) {
      map['trainingOutput'] = Input.mapOptionalInputValue<
          GoogleCloudMlV1TrainingOutput,
          Map<String, dynamic>>(trainingOutputValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobArgs10.fromMap(Map<String, dynamic> map) {
    return JobArgs10(
      etag: Input.asOptionalInput<String>(map['etag']),
      jobId: Input.asInput<String>(map['jobId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      predictionInput: Input.asOptionalInput<GoogleCloudMlV1PredictionInput>(
          map['predictionInput']),
      predictionOutput: Input.asOptionalInput<GoogleCloudMlV1PredictionOutput>(
          map['predictionOutput']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingInput: Input.asOptionalInput<GoogleCloudMlV1TrainingInput>(
          map['trainingInput']),
      trainingOutput: Input.asOptionalInput<GoogleCloudMlV1TrainingOutput>(
          map['trainingOutput']),
    );
  }
}
