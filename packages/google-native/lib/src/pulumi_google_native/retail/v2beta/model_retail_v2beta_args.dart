// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_model_model_features_config.dart';
import 'model_filtering_option_retail_v2beta.dart';
import 'model_periodic_tuning_state_retail_v2beta.dart';
import 'model_training_state_retail_v2beta.dart';

/// The set of arguments for Model.
class ModelRetailV2betaArgs {
  final pulumi.Input<String> catalogId;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;

  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  final pulumi.Input<bool>? dryRun;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final pulumi.Input<ModelFilteringOptionRetailV2beta>? filteringOption;
  final pulumi.Input<String>? location;

  /// Optional. Additional model features config.
  final pulumi.Input<GoogleCloudRetailV2betaModelModelFeaturesConfig>?
      modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final pulumi.Input<String>? name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String>? optimizationObjective;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final pulumi.Input<ModelPeriodicTuningStateRetailV2beta>? periodicTuningState;
  final pulumi.Input<String>? project;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final pulumi.Input<ModelTrainingStateRetailV2beta>? trainingState;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String> type;

  ModelRetailV2betaArgs({
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
      map['filteringOption'] = pulumi.Input.mapOptionalInputValue<
          ModelFilteringOptionRetailV2beta,
          String>(filteringOptionValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modelFeaturesConfigValue = modelFeaturesConfig;
    if (modelFeaturesConfigValue != null) {
      map['modelFeaturesConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudRetailV2betaModelModelFeaturesConfig,
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
      map['periodicTuningState'] = pulumi.Input.mapOptionalInputValue<
          ModelPeriodicTuningStateRetailV2beta,
          String>(periodicTuningStateValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trainingStateValue = trainingState;
    if (trainingStateValue != null) {
      map['trainingState'] = pulumi.Input.mapOptionalInputValue<
          ModelTrainingStateRetailV2beta,
          String>(trainingStateValue, (value) => value.value);
    }
    map['type'] = type;
    return map;
  }

  factory ModelRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return ModelRetailV2betaArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      dryRun: pulumi.Input.asOptionalInput<bool>(map['dryRun']),
      filteringOption:
          pulumi.Input.asOptionalInput<ModelFilteringOptionRetailV2beta>(
              map['filteringOption']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      modelFeaturesConfig: pulumi.Input.asOptionalInput<
              GoogleCloudRetailV2betaModelModelFeaturesConfig>(
          map['modelFeaturesConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      optimizationObjective:
          pulumi.Input.asOptionalInput<String>(map['optimizationObjective']),
      periodicTuningState:
          pulumi.Input.asOptionalInput<ModelPeriodicTuningStateRetailV2beta>(
              map['periodicTuningState']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      trainingState:
          pulumi.Input.asOptionalInput<ModelTrainingStateRetailV2beta>(
              map['trainingState']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
