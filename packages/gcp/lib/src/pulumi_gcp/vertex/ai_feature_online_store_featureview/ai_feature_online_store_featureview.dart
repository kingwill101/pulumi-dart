import 'package:pulumi/pulumi.dart';
import '../ai_feature_online_store_featureview_big_query_source/ai_feature_online_store_featureview_big_query_source.dart';
import '../ai_feature_online_store_featureview_feature_registry_source/ai_feature_online_store_featureview_feature_registry_source.dart';
import '../ai_feature_online_store_featureview_sync_config/ai_feature_online_store_featureview_sync_config.dart';
import '../ai_feature_online_store_featureview_vector_search_config/ai_feature_online_store_featureview_vector_search_config.dart';
import 'ai_feature_online_store_featureview_args.dart';

/// FeatureView is representation of values that the FeatureOnlineStore will serve based on its syncConfig.
///
///
/// To get more information about FeatureOnlineStoreFeatureview, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores.featureViews)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featureonlinestore Featureview
///
///
///
/// ### Vertex Ai Featureonlinestore Featureview Feature Registry
///
///
///
/// ### Vertex Ai Featureonlinestore Featureview Cross Project
///
///
///
/// ### Vertex Ai Featureonlinestore Featureview With Vector Search
///
///
///
///
/// ## Import
///
/// FeatureOnlineStoreFeatureview can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}/featureViews/{{name}}`
///
/// * `{{project}}/{{region}}/{{feature_online_store}}/{{name}}`
///
/// * `{{region}}/{{feature_online_store}}/{{name}}`
///
/// * `{{feature_online_store}}/{{name}}`
///
/// When using the `pulumi import` command, FeatureOnlineStoreFeatureview can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}/featureViews/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{project}}/{{region}}/{{feature_online_store}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{region}}/{{feature_online_store}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{feature_online_store}}/{{name}}
/// ```
class AiFeatureOnlineStoreFeatureview extends CustomResource {
  /// Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  late final Output<AiFeatureOnlineStoreFeatureviewBigQuerySource?>
      bigQuerySource;

  /// The timestamp of when the featureOnlinestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The name of the FeatureOnlineStore to use for the featureview.
  late final Output<String> featureOnlineStore;

  /// Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  late final Output<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource?>
      featureRegistrySource;

  /// A set of key/value label pairs to assign to this FeatureView.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region for the resource. It should be the same as the featureonlinestore region.
  late final Output<String> region;

  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// Structure is documented below.
  late final Output<AiFeatureOnlineStoreFeatureviewSyncConfig?> syncConfig;

  /// The timestamp of when the featureOnlinestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  /// Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  /// Structure is documented below.
  late final Output<AiFeatureOnlineStoreFeatureviewVectorSearchConfig?>
      vectorSearchConfig;

  AiFeatureOnlineStoreFeatureview(
    String name, {
    AiFeatureOnlineStoreFeatureviewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigQuerySource =
        registerOutput<AiFeatureOnlineStoreFeatureviewBigQuerySource?>(
            'bigQuerySource');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.featureOnlineStore = registerOutput<String>('featureOnlineStore');
    this.featureRegistrySource =
        registerOutput<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource?>(
            'featureRegistrySource');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.syncConfig =
        registerOutput<AiFeatureOnlineStoreFeatureviewSyncConfig?>(
            'syncConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.vectorSearchConfig =
        registerOutput<AiFeatureOnlineStoreFeatureviewVectorSearchConfig?>(
            'vectorSearchConfig');
  }
}
