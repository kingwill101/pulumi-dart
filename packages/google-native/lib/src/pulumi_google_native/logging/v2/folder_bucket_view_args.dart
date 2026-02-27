// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for FolderBucketView.
class FolderBucketViewArgs {
  final Input<String> bucketId;

  /// Describes this view.
  final Input<String>? description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final Input<String>? filter;
  final Input<String> folderId;
  final Input<String>? location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final Input<String>? name;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final Input<String> viewId;

  FolderBucketViewArgs({
    required this.bucketId,
    this.description,
    this.filter,
    required this.folderId,
    this.location,
    this.name,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['folderId'] = folderId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['viewId'] = viewId;
    return map;
  }

  factory FolderBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return FolderBucketViewArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asOptionalInput<String>(map['filter']),
      folderId: Input.asInput<String>(map['folderId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      viewId: Input.asInput<String>(map['viewId']),
    );
  }
}
