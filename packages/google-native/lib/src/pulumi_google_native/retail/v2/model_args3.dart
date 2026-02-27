// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2_model_model_features_config.dart';
import 'model_filtering_option.dart';
import 'model_periodic_tuning_state.dart';
import 'model_training_state.dart';

/// The set of arguments for Model.
class ModelArgs3 {
  final Input<String> catalogId;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> displayName;

  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  final Input<bool>? dryRun;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final Input<ModelFilteringOption>? filteringOption;
  final Input<String>? location;

  /// Optional. Additional model features config.
  final Input<GoogleCloudRetailV2ModelModelFeaturesConfig>? modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final Input<String>? name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final Input<String>? optimizationObjective;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final Input<ModelPeriodicTuningState>? periodicTuningState;
  final Input<String>? project;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final Input<ModelTrainingState>? trainingState;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final Input<String> type;

  ModelArgs3({
    required this.catalogId,
    required this.displayName,
    this.dryRun,
    this.filteringOption,
    this.location,
    this.modelFeaturesConfig,
    this.name,
    this.optimizationObjective,
    this.periodicTuningState,
    this.project,
    this.trainingState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['displayName'] = displayName;
    final dryRunValue = dryRun;
    if (dryRunValue != null) {
      map['dryRun'] = dryRunValue;
    }
    final filteringOptionValue = filteringOption;
    if (filteringOptionValue != null) {
      map['filteringOption'] =
          Input.mapOptionalInputValue<ModelFilteringOption, String>(
              filteringOptionValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modelFeaturesConfigValue = modelFeaturesConfig;
    if (modelFeaturesConfigValue != null) {
      map['modelFeaturesConfig'] = Input.mapOptionalInputValue<
              GoogleCloudRetailV2ModelModelFeaturesConfig,
              Map<String, dynamic>>(
          modelFeaturesConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optimizationObjectiveValue = optimizationObjective;
    if (optimizationObjectiveValue != null) {
      map['optimizationObjective'] = optimizationObjectiveValue;
    }
    final periodicTuningStateValue = periodicTuningState;
    if (periodicTuningStateValue != null) {
      map['periodicTuningState'] =
          Input.mapOptionalInputValue<ModelPeriodicTuningState, String>(
              periodicTuningStateValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trainingStateValue = trainingState;
    if (trainingStateValue != null) {
      map['trainingState'] =
          Input.mapOptionalInputValue<ModelTrainingState, String>(
              trainingStateValue, (value) => value.value);
    }
    map['type'] = type;
    return map;
  }

  factory ModelArgs3.fromMap(Map<String, dynamic> map) {
    return ModelArgs3(
      catalogId: Input.asInput<String>(map['catalogId']),
      displayName: Input.asInput<String>(map['displayName']),
      dryRun: Input.asOptionalInput<bool>(map['dryRun']),
      filteringOption:
          Input.asOptionalInput<ModelFilteringOption>(map['filteringOption']),
      location: Input.asOptionalInput<String>(map['location']),
      modelFeaturesConfig:
          Input.asOptionalInput<GoogleCloudRetailV2ModelModelFeaturesConfig>(
              map['modelFeaturesConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      optimizationObjective:
          Input.asOptionalInput<String>(map['optimizationObjective']),
      periodicTuningState: Input.asOptionalInput<ModelPeriodicTuningState>(
          map['periodicTuningState']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingState:
          Input.asOptionalInput<ModelTrainingState>(map['trainingState']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
