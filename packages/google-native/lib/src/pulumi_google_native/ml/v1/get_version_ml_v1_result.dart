// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_accelerator_config_response.dart';
import 'google_cloud_ml_v1_auto_scaling_response.dart';
import 'google_cloud_ml_v1_container_spec_response.dart';
import 'google_cloud_ml_v1_explanation_config_response.dart';
import 'google_cloud_ml_v1_manual_scaling_response.dart';
import 'google_cloud_ml_v1_request_logging_config_response.dart';
import 'google_cloud_ml_v1_route_map_response.dart';

/// Result data returned by getVersion.
class GetVersionMlV1Result {
  /// Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the `machineType` field. Learn more about [using GPUs for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
  final GoogleCloudMlV1AcceleratorConfigResponse acceleratorConfig;

  /// Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.
  final GoogleCloudMlV1AutoScalingResponse autoScaling;

  /// Optional. Specifies a custom container to use for serving predictions. If you specify this field, then `machineType` is required. If you specify this field, then `deploymentUri` is optional. If you specify this field, then you must not specify `runtimeVersion`, `packageUris`, `framework`, `pythonVersion`, or `predictionClass`.
  final GoogleCloudMlV1ContainerSpecResponse container;

  /// The time the version was created.
  final String createTime;

  /// The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the [guide to deploying models](/ai-platform/prediction/docs/deploying-models) for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn [how to use this field with a custom container](/ai-platform/prediction/docs/custom-container-requirements#artifacts).
  final String deploymentUri;

  /// Optional. The description specified for the version when it was created.
  final String description;

  /// The details of a failure or a cancellation.
  final String errorMessage;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetVersion`, and systems are expected to put that etag in the request to `UpdateVersion` to ensure that their change will be applied to the model as intended.
  final String etag;

  /// Optional. Configures explainability features on the model's version. Some explanation features require additional metadata to be loaded as part of the model payload.
  final GoogleCloudMlV1ExplanationConfigResponse explanationConfig;

  /// Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).
  final String framework;

  /// If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.
  final bool isDefault;

  /// Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  final Map<String, String> labels;

  /// The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models) ID for the last [model migration](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  final String lastMigrationModelId;

  /// The last time this version was successfully [migrated to AI Platform (Unified)](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  final String lastMigrationTime;

  /// The time the version was last used for prediction.
  final String lastUseTime;

  /// Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read [Choosing a machine type for online prediction](/ai-platform/prediction/docs/machine-types-online-prediction). If this field is not specified and you are using a [regional endpoint](/ai-platform/prediction/docs/regional-endpoints), then the machine type defaults to `n1-standard-2`. If this field is not specified and you are using the global endpoint (`ml.googleapis.com`), then the machine type defaults to `mls1-c1-m2`.
  final String machineType;

  /// Manually select the number of nodes to use for serving the model. You should generally use `auto_scaling` with an appropriate `min_nodes` instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.
  final GoogleCloudMlV1ManualScalingResponse manualScaling;

  /// The name specified for the version when it was created. The version name must be unique within the model it is created in.
  final String name;

  /// Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code). For a custom prediction routine, one of these packages must contain your Predictor class (see [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list). If you specify this field, you must also set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.
  final List<String> packageUris;

  /// Optional. The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [`packageUris` field](#Version.FIELDS.package_uris). Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater and you must set `machineType` to a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction). The following code sample provides the Predictor interface: class Predictor(object): """Interface for constructing custom predictors.""" def predict(self, instances, **kwargs): """Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. **kwargs: A dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. """ raise NotImplementedError() @classmethod def from_path(cls, model_dir): """Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. """ raise NotImplementedError() Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines).
  final String predictionClass;

  /// The version of Python used in prediction. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  final String pythonVersion;

  /// Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.
  final GoogleCloudMlV1RequestLoggingConfigResponse requestLoggingConfig;

  /// Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the `container` field. If you specify the `container` field and do not specify this field, it defaults to the following: ```json { "predict": "/v1/models/MODEL/versions/VERSION:predict", "health": "/v1/models/MODEL/versions/VERSION" } ``` See RouteMap for more details about these default values.
  final GoogleCloudMlV1RouteMapResponse routes;

  /// The AI Platform runtime version to use for this deployment. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning).
  final String runtimeVersion;

  /// Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the `containerSpec` or the `predictionClass` field. Learn more about [using a custom service account](/ai-platform/prediction/docs/custom-service-account).
  final String serviceAccount;

  /// The state of a version.
  final String state;

  GetVersionMlV1Result({
    required this.acceleratorConfig,
    required this.autoScaling,
    required this.container,
    required this.createTime,
    required this.deploymentUri,
    required this.description,
    required this.errorMessage,
    required this.etag,
    required this.explanationConfig,
    required this.framework,
    required this.isDefault,
    required this.labels,
    required this.lastMigrationModelId,
    required this.lastMigrationTime,
    required this.lastUseTime,
    required this.machineType,
    required this.manualScaling,
    required this.name,
    required this.packageUris,
    required this.predictionClass,
    required this.pythonVersion,
    required this.requestLoggingConfig,
    required this.routes,
    required this.runtimeVersion,
    required this.serviceAccount,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorConfig'] = acceleratorConfig.toMap();
    map['autoScaling'] = autoScaling.toMap();
    map['container'] = container.toMap();
    map['createTime'] = createTime;
    map['deploymentUri'] = deploymentUri;
    map['description'] = description;
    map['errorMessage'] = errorMessage;
    map['etag'] = etag;
    map['explanationConfig'] = explanationConfig.toMap();
    map['framework'] = framework;
    map['isDefault'] = isDefault;
    map['labels'] = labels;
    map['lastMigrationModelId'] = lastMigrationModelId;
    map['lastMigrationTime'] = lastMigrationTime;
    map['lastUseTime'] = lastUseTime;
    map['machineType'] = machineType;
    map['manualScaling'] = manualScaling.toMap();
    map['name'] = name;
    map['packageUris'] = packageUris;
    map['predictionClass'] = predictionClass;
    map['pythonVersion'] = pythonVersion;
    map['requestLoggingConfig'] = requestLoggingConfig.toMap();
    map['routes'] = routes.toMap();
    map['runtimeVersion'] = runtimeVersion;
    map['serviceAccount'] = serviceAccount;
    map['state'] = state;
    return map;
  }

  factory GetVersionMlV1Result.fromMap(Map<String, dynamic> map) {
    return GetVersionMlV1Result(
      acceleratorConfig: GoogleCloudMlV1AcceleratorConfigResponse.fromMap(
          (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      autoScaling: GoogleCloudMlV1AutoScalingResponse.fromMap(
          (map['autoScaling'] as Map).cast<String, dynamic>()),
      container: GoogleCloudMlV1ContainerSpecResponse.fromMap(
          (map['container'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deploymentUri: map['deploymentUri'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      etag: map['etag'] as String,
      explanationConfig: GoogleCloudMlV1ExplanationConfigResponse.fromMap(
          (map['explanationConfig'] as Map).cast<String, dynamic>()),
      framework: map['framework'] as String,
      isDefault: map['isDefault'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastMigrationModelId: map['lastMigrationModelId'] as String,
      lastMigrationTime: map['lastMigrationTime'] as String,
      lastUseTime: map['lastUseTime'] as String,
      machineType: map['machineType'] as String,
      manualScaling: GoogleCloudMlV1ManualScalingResponse.fromMap(
          (map['manualScaling'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      packageUris: (map['packageUris'] as List).cast<String>(),
      predictionClass: map['predictionClass'] as String,
      pythonVersion: map['pythonVersion'] as String,
      requestLoggingConfig: GoogleCloudMlV1RequestLoggingConfigResponse.fromMap(
          (map['requestLoggingConfig'] as Map).cast<String, dynamic>()),
      routes: GoogleCloudMlV1RouteMapResponse.fromMap(
          (map['routes'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] as String,
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
    );
  }
}
