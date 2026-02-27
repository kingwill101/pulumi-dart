// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBucketView.
class GetBucketViewArgs {
  final Input<String> bucketId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> viewId;

  GetBucketViewArgs({
    required this.bucketId,
    required this.location,
    this.project,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['viewId'] = viewId;
    return map;
  }

  factory GetBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketViewArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      viewId: Input.asInput<String>(map['viewId']),
    );
  }
}
