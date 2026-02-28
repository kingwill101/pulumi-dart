// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_model_model_features_config.dart';
import 'model_filtering_option.dart';
import 'model_periodic_tuning_state.dart';
import 'model_training_state.dart';

/// {@template pulumi_retail_v2_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_model_args_doc}
class ModelArgs {
  final pulumi.Input<String> catalogId;
  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  final pulumi.Input<bool>? dryRun;
  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final pulumi.Input<ModelFilteringOption>? filteringOption;
  final pulumi.Input<String>? location;
  /// Optional. Additional model features config.
  final pulumi.Input<GoogleCloudRetailV2ModelModelFeaturesConfig>? modelFeaturesConfig;
  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final pulumi.Input<String>? name;
  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String>? optimizationObjective;
  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final pulumi.Input<ModelPeriodicTuningState>? periodicTuningState;
  final pulumi.Input<String>? project;
  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final pulumi.Input<ModelTrainingState>? trainingState;
  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String> type;

  /// Creates a new [ModelArgs].
  /// [catalogId] Required.
  /// [displayName] The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  /// [dryRun] Optional. Whether to run a dry run to validate the request (without actually creating the model).
  /// [filteringOption] Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  /// [location] Optional.
  /// [modelFeaturesConfig] Optional. Additional model features config.
  /// [name] The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  /// [optimizationObjective] Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  /// [periodicTuningState] Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  /// [project] Optional.
  /// [trainingState] Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  /// [type] The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  ModelArgs({
    required String catalogId,
    required String displayName,
    bool? dryRun,
    ModelFilteringOption? filteringOption,
    String? location,
    GoogleCloudRetailV2ModelModelFeaturesConfig? modelFeaturesConfig,
    String? name,
    String? optimizationObjective,
    ModelPeriodicTuningState? periodicTuningState,
    String? project,
    ModelTrainingState? trainingState,
    required String type,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      displayName = pulumi.Input.asInput<String>(displayName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      filteringOption = pulumi.Input.asOptionalInput<ModelFilteringOption>(filteringOption),
      location = pulumi.Input.asOptionalInput<String>(location),
      modelFeaturesConfig = pulumi.Input.asOptionalInput<GoogleCloudRetailV2ModelModelFeaturesConfig>(modelFeaturesConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimizationObjective = pulumi.Input.asOptionalInput<String>(optimizationObjective),
      periodicTuningState = pulumi.Input.asOptionalInput<ModelPeriodicTuningState>(periodicTuningState),
      project = pulumi.Input.asOptionalInput<String>(project),
      trainingState = pulumi.Input.asOptionalInput<ModelTrainingState>(trainingState),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'displayName': displayName,
      'dryRun': ?dryRun,
      'filteringOption': ?pulumi.Input.mapOptionalInputValue<ModelFilteringOption, String>(filteringOption, (value) => value.value),
      'location': ?location,
      'modelFeaturesConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2ModelModelFeaturesConfig, Map<String, dynamic>>(modelFeaturesConfig, (value) => value.toMap()),
      'name': ?name,
      'optimizationObjective': ?optimizationObjective,
      'periodicTuningState': ?pulumi.Input.mapOptionalInputValue<ModelPeriodicTuningState, String>(periodicTuningState, (value) => value.value),
      'project': ?project,
      'trainingState': ?pulumi.Input.mapOptionalInputValue<ModelTrainingState, String>(trainingState, (value) => value.value),
      'type': type,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      catalogId: map['catalogId'] as String,
      displayName: map['displayName'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      filteringOption: map['filteringOption'] == null ? null : ModelFilteringOption.fromValue(map['filteringOption'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      modelFeaturesConfig: map['modelFeaturesConfig'] == null ? null : GoogleCloudRetailV2ModelModelFeaturesConfig.fromMap((map['modelFeaturesConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      optimizationObjective: map['optimizationObjective'] == null ? null : map['optimizationObjective'] as String,
      periodicTuningState: map['periodicTuningState'] == null ? null : ModelPeriodicTuningState.fromValue(map['periodicTuningState'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      trainingState: map['trainingState'] == null ? null : ModelTrainingState.fromValue(map['trainingState'] as String),
      type: map['type'] as String,
    );
  }
}

