import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_store_feature_aiplatform_v1beta1_args.dart';
import 'google_cloud_aiplatform_v1beta1_feature_monitoring_stats_anomaly_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_stats_anomaly_response.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_response.dart';

/// Creates a new Feature in a given EntityType.
class FeatureStoreFeatureAiplatformV1beta1 extends pulumi.CustomResource {
  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  late final pulumi.Output<String> createTime;

  /// Description of the Feature.
  late final pulumi.Output<String> description;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  late final pulumi.Output<bool> disableMonitoring;
  late final pulumi.Output<String> entityTypeId;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;

  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  late final pulumi.Output<String> featureId;
  late final pulumi.Output<String> featurestoreId;

  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  late final pulumi.Output<
    GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse
  >
  monitoringConfig;

  /// Only applicable for Vertex AI Feature Store (Legacy). A list of historical SnapshotAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
  late final pulumi.Output<
    List<GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse>
  >
  monitoringStats;

  /// Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  late final pulumi.Output<
    List<GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse>
  >
  monitoringStatsAnomalies;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  late final pulumi.Output<String> valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  late final pulumi.Output<String> versionColumnName;

  /// Creates a new [FeatureStoreFeatureAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureStoreFeatureAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_feature_store_feature_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureStoreFeatureAiplatformV1beta1(
    String name, {
    FeatureStoreFeatureAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:FeatureStoreFeature',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.disableMonitoring = registerOutput<bool>('disableMonitoring');
    this.entityTypeId = registerOutput<String>('entityTypeId');
    this.etag = registerOutput<String>('etag');
    this.featureId = registerOutput<String>('featureId');
    this.featurestoreId = registerOutput<String>('featurestoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.monitoringConfig =
        registerOutput<
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse
        >('monitoringConfig');
    this.monitoringStats =
        registerOutput<
          List<GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse>
        >('monitoringStats');
    this.monitoringStatsAnomalies =
        registerOutput<
          List<
            GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse
          >
        >('monitoringStatsAnomalies');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.valueType = registerOutput<String>('valueType');
    this.versionColumnName = registerOutput<String>('versionColumnName');
  }
}
