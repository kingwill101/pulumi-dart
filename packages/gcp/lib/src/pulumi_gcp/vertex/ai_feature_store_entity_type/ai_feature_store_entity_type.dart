import 'package:pulumi/pulumi.dart';
import '../ai_feature_store_entity_type_monitoring_config/ai_feature_store_entity_type_monitoring_config.dart';
import 'ai_feature_store_entity_type_args.dart';

/// An entity type is a type of object in a system that needs to be modeled and have stored information about. For example, driver is an entity type, and driver0 is an instance of an entity type driver.
///
///
/// To get more information about FeaturestoreEntitytype, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore Entitytype
///
///
///
/// ### Vertex Ai Featurestore Entitytype With Beta Fields
///
///
///
///
/// ## Import
///
/// FeaturestoreEntitytype can be imported using any of these accepted formats:
///
/// * `{{featurestore}}/entityTypes/{{name}}`
///
/// When using the `pulumi import` command, FeaturestoreEntitytype can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityType:AiFeatureStoreEntityType default {{featurestore}}/entityTypes/{{name}}
/// ```
class AiFeatureStoreEntityType extends CustomResource {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// Optional. Description of the EntityType.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Used to perform consistent read-modify-write updates.
  late final Output<String> etag;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  late final Output<String> featurestore;

  /// A set of key/value label pairs to assign to this EntityType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The default monitoring configuration for all Features under this EntityType.
  /// If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// Structure is documented below.
  late final Output<AiFeatureStoreEntityTypeMonitoringConfig?> monitoringConfig;

  /// The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final Output<String> name;

  /// Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  late final Output<int?> offlineStorageTtlDays;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the EntityType.
  late final Output<String> region;

  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiFeatureStoreEntityType(
    String name, {
    AiFeatureStoreEntityTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityType:AiFeatureStoreEntityType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.featurestore = registerOutput<String>('featurestore');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.monitoringConfig =
        registerOutput<AiFeatureStoreEntityTypeMonitoringConfig?>(
            'monitoringConfig');
    this.name = registerOutput<String>('name');
    this.offlineStorageTtlDays = registerOutput<int?>('offlineStorageTtlDays');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
