import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_version_response.dart';
import 'model_args2.dart';

/// Creates a model which will later contain one or more versions. You must add at least one version before you can request predictions from the model. Add versions by calling projects.models.versions.create.
class Model2 extends CustomResource {
  /// The default version of the model. This version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.models.versions.setDefault.
  late final Output<GoogleCloudMlV1VersionResponse> defaultVersion;

  /// Optional. The description specified for the model when it was created.
  late final Output<String> description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.
  late final Output<String> etag;

  /// Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  late final Output<Map<String, String>> labels;

  /// The name specified for the model when it was created. The model name must be unique within the project it is created in.
  late final Output<String> name;

  /// Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
  late final Output<bool> onlinePredictionConsoleLogging;

  /// Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
  late final Output<bool> onlinePredictionLogging;
  late final Output<String> project;

  /// Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
  late final Output<List<String>> regions;

  Model2(
    String name, {
    ModelArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:ml/v1:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultVersion =
        registerOutput<GoogleCloudMlV1VersionResponse>('defaultVersion');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.onlinePredictionConsoleLogging =
        registerOutput<bool>('onlinePredictionConsoleLogging');
    this.onlinePredictionLogging =
        registerOutput<bool>('onlinePredictionLogging');
    this.project = registerOutput<String>('project');
    this.regions = registerOutput<List<String>>('regions');
  }
}
