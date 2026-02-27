import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2alpha_model_model_features_config_response.dart';
import 'google_cloud_retail_v2alpha_model_page_optimization_config_response.dart';
import 'google_cloud_retail_v2alpha_model_serving_config_list_response.dart';
import 'model_args4.dart';

/// Creates a new model.
class Model4 extends CustomResource {
  late final Output<String> catalogId;

  /// Timestamp the Recommendation Model was created at.
  late final Output<String> createTime;

  /// The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommendation model cannot be trained if the data is in `DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if serving state is `ACTIVE`: models were trained successfully before, but cannot be refreshed because model no longer has sufficient data for training.
  late final Output<String> dataState;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  late final Output<String> displayName;

  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  late final Output<bool?> dryRun;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  late final Output<String> filteringOption;

  /// The timestamp when the latest successful tune finished.
  late final Output<String> lastTuneTime;
  late final Output<String> location;

  /// Optional. Additional model features config.
  late final Output<GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse>
      modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  late final Output<String> name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  late final Output<String> optimizationObjective;

  /// Optional. The page optimization config.
  late final Output<GoogleCloudRetailV2alphaModelPageOptimizationConfigResponse>
      pageOptimizationConfig;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  late final Output<String> periodicTuningState;
  late final Output<String> project;

  /// The list of valid serving configs associated with the PageOptimizationConfig.
  late final Output<
          List<GoogleCloudRetailV2alphaModelServingConfigListResponse>>
      servingConfigLists;

  /// The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  late final Output<String> servingState;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  late final Output<String> trainingState;

  /// The tune operation associated with the model. Can be used to determine if there is an ongoing tune for this recommendation. Empty field implies no tune is goig on.
  late final Output<String> tuningOperation;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  late final Output<String> type;

  /// Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model was paused - this would be the time the pause was initiated.
  late final Output<String> updateTime;

  Model4(
    String name, {
    ModelArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:retail/v2alpha:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.createTime = registerOutput<String>('createTime');
    this.dataState = registerOutput<String>('dataState');
    this.displayName = registerOutput<String>('displayName');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.filteringOption = registerOutput<String>('filteringOption');
    this.lastTuneTime = registerOutput<String>('lastTuneTime');
    this.location = registerOutput<String>('location');
    this.modelFeaturesConfig = registerOutput<
            GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse>(
        'modelFeaturesConfig');
    this.name = registerOutput<String>('name');
    this.optimizationObjective =
        registerOutput<String>('optimizationObjective');
    this.pageOptimizationConfig = registerOutput<
            GoogleCloudRetailV2alphaModelPageOptimizationConfigResponse>(
        'pageOptimizationConfig');
    this.periodicTuningState = registerOutput<String>('periodicTuningState');
    this.project = registerOutput<String>('project');
    this.servingConfigLists = registerOutput<
            List<GoogleCloudRetailV2alphaModelServingConfigListResponse>>(
        'servingConfigLists');
    this.servingState = registerOutput<String>('servingState');
    this.trainingState = registerOutput<String>('trainingState');
    this.tuningOperation = registerOutput<String>('tuningOperation');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
