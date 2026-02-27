import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_feature_group_big_query/ai_feature_group_big_query.dart';
import 'ai_feature_group_args.dart';

/// Vertex AI Feature Group.
///
///
/// To get more information about FeatureGroup, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureGroups)
/// * How-to Guides
/// * [Creating a Feature Group](https://cloud.google.com/vertex-ai/docs/featurestore/latest/create-featuregroup)
///
/// ## Example Usage
///
/// ### Vertex Ai Feature Group
///
///
///
///
/// ## Import
///
/// FeatureGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureGroups/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FeatureGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default projects/{{project}}/locations/{{region}}/featureGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{name}}
/// ```
class AiFeatureGroup extends pulumi.CustomResource {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureGroupBigQuery?> bigQuery;

  /// The timestamp of when the FeatureGroup was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The description of the FeatureGroup.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name of the Feature Group.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of feature group. eg us-central1
  late final pulumi.Output<String> region;

  /// The timestamp of when the FeatureGroup was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  AiFeatureGroup(
    String name, {
    AiFeatureGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureGroup:AiFeatureGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQuery = registerOutput<AiFeatureGroupBigQuery?>('bigQuery');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
