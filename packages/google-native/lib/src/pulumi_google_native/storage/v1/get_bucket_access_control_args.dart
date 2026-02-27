// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketAccessControl.
class GetBucketAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? userProject;

  GetBucketAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetBucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketAccessControlArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      entity: pulumi.Input.asInput<String>(map['entity']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
