// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for StorageBucket.
class StorageBucketArgs {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  final pulumi.Input<String>? bucketId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  StorageBucketArgs({
    this.bucketId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketIdValue = bucketId;
    if (bucketIdValue != null) {
      map['bucketId'] = bucketIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory StorageBucketArgs.fromMap(Map<String, dynamic> map) {
    return StorageBucketArgs(
      bucketId: pulumi.Input.asOptionalInput<String>(map['bucketId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
