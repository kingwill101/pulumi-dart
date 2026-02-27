import 'package:pulumi/pulumi.dart' hide Config;
import 'big_query_dataset_response.dart';
import 'folder_bucket_link_args.dart';

/// Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.
/// Auto-naming is currently not supported for this resource.
class FolderBucketLink extends CustomResource {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  late final Output<BigQueryDatasetResponse> bigqueryDataset;
  late final Output<String> bucketId;

  /// The creation timestamp of the link.
  late final Output<String> createTime;

  /// Describes this link.The maximum length of the description is 8000 characters.
  late final Output<String> description;
  late final Output<String> folderId;

  /// The resource lifecycle state.
  late final Output<String> lifecycleState;

  /// Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  late final Output<String> linkId;
  late final Output<String> location;

  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  late final Output<String> name;

  FolderBucketLink(
    String name, {
    FolderBucketLinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:logging/v2:FolderBucketLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryDataset =
        registerOutput<BigQueryDatasetResponse>('bigqueryDataset');
    this.bucketId = registerOutput<String>('bucketId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.folderId = registerOutput<String>('folderId');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.linkId = registerOutput<String>('linkId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
  }
}
