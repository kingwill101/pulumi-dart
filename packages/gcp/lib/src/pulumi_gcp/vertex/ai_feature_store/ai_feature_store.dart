import 'package:pulumi/pulumi.dart';
import '../ai_feature_store_encryption_spec/ai_feature_store_encryption_spec.dart';
import '../ai_feature_store_online_serving_config/ai_feature_store_online_serving_config.dart';
import 'ai_feature_store_args.dart';

/// A collection of DataItems and Annotations on them.
///
///
/// To get more information about Featurestore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore
///
///
///
/// ### Vertex Ai Featurestore With Beta Fields
///
///
///
/// ### Vertex Ai Featurestore Scaling
///
///
///
///
/// ## Import
///
/// Featurestore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featurestores/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Featurestore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default projects/{{project}}/locations/{{region}}/featurestores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{name}}
/// ```
class AiFeatureStore extends CustomResource {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  late final Output<AiFeatureStoreEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final Output<String> etag;

  /// If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  late final Output<bool?> forceDestroy;

  /// A set of key/value label pairs to assign to this Featurestore.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final Output<String> name;

  /// Config for online serving resources.
  /// Structure is documented below.
  late final Output<AiFeatureStoreOnlineServingConfig?> onlineServingConfig;

  /// TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  late final Output<int?> onlineStorageTtlDays;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the dataset. eg us-central1
  late final Output<String> region;

  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiFeatureStore(
    String name, {
    AiFeatureStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStore:AiFeatureStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiFeatureStoreEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.onlineServingConfig =
        registerOutput<AiFeatureStoreOnlineServingConfig?>(
            'onlineServingConfig');
    this.onlineStorageTtlDays = registerOutput<int?>('onlineStorageTtlDays');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
