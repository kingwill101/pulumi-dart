// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_prediction_input.dart';
import 'google_cloud_ml_v1_prediction_output.dart';
import 'google_cloud_ml_v1_training_input.dart';
import 'google_cloud_ml_v1_training_output.dart';

/// {@template pulumi_ml_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_job_args_doc}
class JobArgs {
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  final pulumi.Input<String>? etag;

  /// The user-specified id of the job.
  final pulumi.Input<String> jobId;

  /// Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// Input parameters to create a prediction job.
  final pulumi.Input<GoogleCloudMlV1PredictionInput>? predictionInput;

  /// The current prediction job result.
  final pulumi.Input<GoogleCloudMlV1PredictionOutput>? predictionOutput;
  final pulumi.Input<String>? project;

  /// Input parameters to create a training job.
  final pulumi.Input<GoogleCloudMlV1TrainingInput>? trainingInput;

  /// The current training job result.
  final pulumi.Input<GoogleCloudMlV1TrainingOutput>? trainingOutput;

  /// Creates a new [JobArgs].
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  /// [jobId] The user-specified id of the job.
  /// [labels] Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  /// [predictionInput] Input parameters to create a prediction job.
  /// [predictionOutput] The current prediction job result.
  /// [project] Optional.
  /// [trainingInput] Input parameters to create a training job.
  /// [trainingOutput] The current training job result.
  JobArgs({
    String? etag,
    required String jobId,
    Map<String, String>? labels,
    GoogleCloudMlV1PredictionInput? predictionInput,
    GoogleCloudMlV1PredictionOutput? predictionOutput,
    String? project,
    GoogleCloudMlV1TrainingInput? trainingInput,
    GoogleCloudMlV1TrainingOutput? trainingOutput,
  }) : etag = pulumi.Input.asOptionalInput<String>(etag),
       jobId = pulumi.Input.asInput<String>(jobId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       predictionInput =
           pulumi.Input.asOptionalInput<GoogleCloudMlV1PredictionInput>(
             predictionInput,
           ),
       predictionOutput =
           pulumi.Input.asOptionalInput<GoogleCloudMlV1PredictionOutput>(
             predictionOutput,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       trainingInput = pulumi
           .Input.asOptionalInput<GoogleCloudMlV1TrainingInput>(trainingInput),
       trainingOutput =
           pulumi.Input.asOptionalInput<GoogleCloudMlV1TrainingOutput>(
             trainingOutput,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'jobId': jobId,
      'labels': ?labels,
      'predictionInput':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1PredictionInput,
            Map<String, dynamic>
          >(predictionInput, (value) => value.toMap()),
      'predictionOutput':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1PredictionOutput,
            Map<String, dynamic>
          >(predictionOutput, (value) => value.toMap()),
      'project': ?project,
      'trainingInput':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1TrainingInput,
            Map<String, dynamic>
          >(trainingInput, (value) => value.toMap()),
      'trainingOutput':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1TrainingOutput,
            Map<String, dynamic>
          >(trainingOutput, (value) => value.toMap()),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      etag: map['etag'] == null ? null : map['etag'] as String,
      jobId: map['jobId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      predictionInput: map['predictionInput'] == null
          ? null
          : GoogleCloudMlV1PredictionInput.fromMap(
              (map['predictionInput'] as Map).cast<String, dynamic>(),
            ),
      predictionOutput: map['predictionOutput'] == null
          ? null
          : GoogleCloudMlV1PredictionOutput.fromMap(
              (map['predictionOutput'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      trainingInput: map['trainingInput'] == null
          ? null
          : GoogleCloudMlV1TrainingInput.fromMap(
              (map['trainingInput'] as Map).cast<String, dynamic>(),
            ),
      trainingOutput: map['trainingOutput'] == null
          ? null
          : GoogleCloudMlV1TrainingOutput.fromMap(
              (map['trainingOutput'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
