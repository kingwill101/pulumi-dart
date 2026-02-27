// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for FolderBucketLink.
class FolderBucketLinkArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  final Input<Map<String, dynamic>>? bigqueryDataset;
  final Input<String> bucketId;

  /// Describes this link.The maximum length of the description is 8000 characters.
  final Input<String>? description;
  final Input<String> folderId;

  /// Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  final Input<String> linkId;
  final Input<String>? location;

  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  final Input<String>? name;

  FolderBucketLinkArgs({
    this.bigqueryDataset,
    required this.bucketId,
    this.description,
    required this.folderId,
    required this.linkId,
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDatasetValue = bigqueryDataset;
    if (bigqueryDatasetValue != null) {
      map['bigqueryDataset'] = bigqueryDatasetValue;
    }
    map['bucketId'] = bucketId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folderId'] = folderId;
    map['linkId'] = linkId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return FolderBucketLinkArgs(
      bigqueryDataset:
          Input.asOptionalInput<Map<String, dynamic>>(map['bigqueryDataset']),
      bucketId: Input.asInput<String>(map['bucketId']),
      description: Input.asOptionalInput<String>(map['description']),
      folderId: Input.asInput<String>(map['folderId']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
