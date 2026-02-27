// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Link.
class LinkArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  final pulumi.Input<Map<String, dynamic>>? bigqueryDataset;
  final pulumi.Input<String> bucketId;

  /// Describes this link.The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  final pulumi.Input<String> linkId;
  final pulumi.Input<String>? location;

  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  LinkArgs({
    this.bigqueryDataset,
    required this.bucketId,
    this.description,
    required this.linkId,
    this.location,
    this.name,
    this.project,
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
    map['linkId'] = linkId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      bigqueryDataset: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['bigqueryDataset']),
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      linkId: pulumi.Input.asInput<String>(map['linkId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
