import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_view_args.dart';
import 'google_cloud_aiplatform_v1_feature_view_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source_response.dart';
import 'google_cloud_aiplatform_v1_feature_view_sync_config_response.dart';

/// Creates a new FeatureView in a given FeatureOnlineStore.
/// Auto-naming is currently not supported for this resource.
class FeatureView extends pulumi.CustomResource {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  late final pulumi.Output<GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse> bigQuerySource;
  /// Timestamp when this FeatureView was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> featureOnlineStoreId;
  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  late final pulumi.Output<GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse> featureRegistrySource;
  /// Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  late final pulumi.Output<String> featureViewId;
  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Name of the FeatureView. Format: `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  late final pulumi.Output<bool?> runSyncImmediately;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  late final pulumi.Output<GoogleCloudAiplatformV1FeatureViewSyncConfigResponse> syncConfig;
  /// Timestamp when this FeatureView was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FeatureView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureView]. {@macro pulumi_aiplatform_v1_feature_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureView(
    String name, {
    FeatureViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:FeatureView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQuerySource = registerOutput<GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse>('bigQuerySource');
    this.createTime = registerOutput<String>('createTime');
    this.etag = registerOutput<String>('etag');
    this.featureOnlineStoreId = registerOutput<String>('featureOnlineStoreId');
    this.featureRegistrySource = registerOutput<GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceResponse>('featureRegistrySource');
    this.featureViewId = registerOutput<String>('featureViewId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.runSyncImmediately = registerOutput<bool?>('runSyncImmediately');
    this.syncConfig = registerOutput<GoogleCloudAiplatformV1FeatureViewSyncConfigResponse>('syncConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
