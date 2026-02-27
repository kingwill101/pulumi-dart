import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_feature_online_store_bigtable/ai_feature_online_store_bigtable.dart';
import '../ai_feature_online_store_dedicated_serving_endpoint/ai_feature_online_store_dedicated_serving_endpoint.dart';
import '../ai_feature_online_store_embedding_management/ai_feature_online_store_embedding_management.dart';
import '../ai_feature_online_store_encryption_spec/ai_feature_online_store_encryption_spec.dart';
import 'ai_feature_online_store_args.dart';

/// Vertex AI Feature Online Store provides a centralized repository for serving ML features and embedding indexes at low latency. The Feature Online Store is a top-level container.
///
///
/// To get more information about FeatureOnlineStore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Feature Online Store
///
///
///
/// ### Vertex Ai Featureonlinestore With Optimized
///
///
///
/// ### Vertex Ai Featureonlinestore With Beta Fields Bigtable
///
///
///
///
/// ## Import
///
/// FeatureOnlineStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FeatureOnlineStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{name}}
/// ```
class AiFeatureOnlineStore extends pulumi.CustomResource {
  /// Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreBigtable?> bigtable;

  /// The timestamp of when the feature online store was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreDedicatedServingEndpoint>
      dedicatedServingEndpoint;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// Structure is documented below.
  ///
  /// > **Warning:** `embedding_management` is deprecated. This field is no longer needed anymore and embedding management is automatically enabled when specifying Optimized storage type
  late final pulumi.Output<AiFeatureOnlineStoreEmbeddingManagement>
      embeddingManagement;

  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;

  /// If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  late final pulumi.Output<bool?> forceDestroy;

  /// The labels with user-defined metadata to organize your feature online stores.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;

  /// Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  late final pulumi.Output<Map<String, dynamic>?> optimized;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of feature online store. eg us-central1
  late final pulumi.Output<String> region;

  /// The state of the Feature Online Store. See the possible states in [this link](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores#state).
  late final pulumi.Output<String> state;

  /// The timestamp of when the feature online store was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  AiFeatureOnlineStore(
    String name, {
    AiFeatureOnlineStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigtable = registerOutput<AiFeatureOnlineStoreBigtable?>('bigtable');
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedServingEndpoint =
        registerOutput<AiFeatureOnlineStoreDedicatedServingEndpoint>(
            'dedicatedServingEndpoint');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.embeddingManagement =
        registerOutput<AiFeatureOnlineStoreEmbeddingManagement>(
            'embeddingManagement');
    this.encryptionSpec =
        registerOutput<AiFeatureOnlineStoreEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.optimized = registerOutput<Map<String, dynamic>?>('optimized');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
