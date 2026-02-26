import 'package:pulumi/pulumi.dart';
import 'feature_group_feature_args.dart';
import 'google_cloud_aiplatform_v1_feature_monitoring_stats_anomaly_response.dart';

/// Creates a new Feature in a given FeatureGroup.
/// Auto-naming is currently not supported for this resource.
class FeatureGroupFeature extends CustomResource {
  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  late final Output<String> createTime;

  /// Description of the Feature.
  late final Output<String> description;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  late final Output<bool> disableMonitoring;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;
  late final Output<String> featureGroupId;

  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  late final Output<String> featureId;

  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  late final Output<
          List<GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse>>
      monitoringStatsAnomalies;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  late final Output<String> name;
  late final Output<String> project;

  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  late final Output<String> updateTime;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  late final Output<String> valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  late final Output<String> versionColumnName;

  FeatureGroupFeature(
    String name, {
    FeatureGroupFeatureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:FeatureGroupFeature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.disableMonitoring = Output.createUnknown<bool>();
    this.etag = Output.createUnknown<String>();
    this.featureGroupId = Output.createUnknown<String>();
    this.featureId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.monitoringStatsAnomalies = Output.createUnknown<
        List<GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.valueType = Output.createUnknown<String>();
    this.versionColumnName = Output.createUnknown<String>();
  }
}
