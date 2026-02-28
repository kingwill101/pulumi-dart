// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_dataset_response.dart';

/// Result data returned by getFolderBucketLink.
class GetFolderBucketLinkResult {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  final BigQueryDatasetResponse bigqueryDataset;
  /// The creation timestamp of the link.
  final String createTime;
  /// Describes this link.The maximum length of the description is 8000 characters.
  final String description;
  /// The resource lifecycle state.
  final String lifecycleState;
  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  final String name;

  /// Creates a new [GetFolderBucketLinkResult].
  /// [bigqueryDataset] The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  /// [createTime] The creation timestamp of the link.
  /// [description] Describes this link.The maximum length of the description is 8000 characters.
  /// [lifecycleState] The resource lifecycle state.
  /// [name] The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  GetFolderBucketLinkResult({
    required this.bigqueryDataset,
    required this.createTime,
    required this.description,
    required this.lifecycleState,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': bigqueryDataset.toMap(),
      'createTime': createTime,
      'description': description,
      'lifecycleState': lifecycleState,
      'name': name,
    };
  }

  factory GetFolderBucketLinkResult.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketLinkResult(
      bigqueryDataset: BigQueryDatasetResponse.fromMap((map['bigqueryDataset'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
    );
  }
}

