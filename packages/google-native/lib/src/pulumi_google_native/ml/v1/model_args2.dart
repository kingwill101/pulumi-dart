// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Model.
class ModelArgs2 {
  /// Optional. The description specified for the model when it was created.
  final Input<String>? description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  final Input<String>? etag;

  /// Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  final Input<Map<String, String>>? labels;

  /// The name specified for the model when it was created. The model name must be unique within the project it is created in.
  final Input<String>? name;

  /// Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  final Input<bool>? onlinePredictionConsoleLogging;

  /// Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  final Input<bool>? onlinePredictionLogging;
  final Input<String>? project;

  /// Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  final Input<List<String>>? regions;

  ModelArgs2({
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.onlinePredictionConsoleLogging,
    this.onlinePredictionLogging,
    this.project,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onlinePredictionConsoleLoggingValue = onlinePredictionConsoleLogging;
    if (onlinePredictionConsoleLoggingValue != null) {
      map['onlinePredictionConsoleLogging'] =
          onlinePredictionConsoleLoggingValue;
    }
    final onlinePredictionLoggingValue = onlinePredictionLogging;
    if (onlinePredictionLoggingValue != null) {
      map['onlinePredictionLogging'] = onlinePredictionLoggingValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    return map;
  }

  factory ModelArgs2.fromMap(Map<String, dynamic> map) {
    return ModelArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      onlinePredictionConsoleLogging:
          Input.asOptionalInput<bool>(map['onlinePredictionConsoleLogging']),
      onlinePredictionLogging:
          Input.asOptionalInput<bool>(map['onlinePredictionLogging']),
      project: Input.asOptionalInput<String>(map['project']),
      regions: Input.asOptionalInput<List<String>>(map['regions']),
    );
  }
}
