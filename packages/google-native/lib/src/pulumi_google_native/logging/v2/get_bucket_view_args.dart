// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketView.
class GetBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> viewId;

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
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      viewId: pulumi.Input.asInput<String>(map['viewId']),
    );
  }
}
