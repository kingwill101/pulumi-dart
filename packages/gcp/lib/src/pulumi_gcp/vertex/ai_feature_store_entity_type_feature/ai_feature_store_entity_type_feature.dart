import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_feature_args.dart';

/// Feature Metadata information that describes an attribute of an entity type. For example, apple is an entity type, and color is a feature that describes apple.
///
///
/// To get more information about FeaturestoreEntitytypeFeature, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore Entitytype Feature
///
///
///
/// ### Vertex Ai Featurestore Entitytype Feature With Beta Fields
///
///
///
///
/// ## Import
///
/// FeaturestoreEntitytypeFeature can be imported using any of these accepted formats:
///
/// * `{{entitytype}}/features/{{name}}`
///
/// When using the `pulumi import` command, FeaturestoreEntitytypeFeature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeFeature:AiFeatureStoreEntityTypeFeature default {{entitytype}}/features/{{name}}
/// ```
class AiFeatureStoreEntityTypeFeature extends pulumi.CustomResource {
  /// The timestamp of when the entity type was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// Description of the feature.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  late final pulumi.Output<String> entitytype;

  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;

  /// A set of key/value label pairs to assign to the feature.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  late final pulumi.Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the feature
  late final pulumi.Output<String> region;

  /// The timestamp when the entity type was most recently updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  late final pulumi.Output<String> valueType;

  AiFeatureStoreEntityTypeFeature(
    String name, {
    AiFeatureStoreEntityTypeFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeFeature:AiFeatureStoreEntityTypeFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitytype = registerOutput<String>('entitytype');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
    this.valueType = registerOutput<String>('valueType');
  }
}
