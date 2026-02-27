import 'package:pulumi/pulumi.dart' hide Config;
import 'feature_group_args.dart';
import 'google_cloud_aiplatform_v1_feature_group_big_query_response.dart';

/// Creates a new FeatureGroup in a given project and location.
/// Auto-naming is currently not supported for this resource.
class FeatureGroup extends CustomResource {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  late final Output<GoogleCloudAiplatformV1FeatureGroupBigQueryResponse>
      bigQuery;

  /// Timestamp when this FeatureGroup was created.
  late final Output<String> createTime;

  /// Optional. Description of the FeatureGroup.
  late final Output<String> description;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  late final Output<String> featureGroupId;

  /// Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the FeatureGroup. Format: `projects/{project}/locations/{location}/featureGroups/{featureGroup}`
  late final Output<String> name;
  late final Output<String> project;

  /// Timestamp when this FeatureGroup was last updated.
  late final Output<String> updateTime;

  FeatureGroup(
    String name, {
    FeatureGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:FeatureGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigQuery =
        registerOutput<GoogleCloudAiplatformV1FeatureGroupBigQueryResponse>(
            'bigQuery');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.featureGroupId = registerOutput<String>('featureGroupId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
