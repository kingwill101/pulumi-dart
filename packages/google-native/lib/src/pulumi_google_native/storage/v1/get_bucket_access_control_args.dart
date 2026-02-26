// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketAccessControl.
class GetBucketAccessControlArgs {
  final Input<String> bucket;
  final Input<String> entity;
  final Input<String>? userProject;

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
      bucket: Input.asInput<String>(map['bucket']),
      entity: Input.asInput<String>(map['entity']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
