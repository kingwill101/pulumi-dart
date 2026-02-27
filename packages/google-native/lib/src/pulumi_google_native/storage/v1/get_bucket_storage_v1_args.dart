// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucket.
class GetBucketStorageV1Args {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String>? projection;
  final pulumi.Input<String>? userProject;

  GetBucketStorageV1Args({
    required this.bucket,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    this.projection,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final ifMetagenerationMatchValue = ifMetagenerationMatch;
    if (ifMetagenerationMatchValue != null) {
      map['ifMetagenerationMatch'] = ifMetagenerationMatchValue;
    }
    final ifMetagenerationNotMatchValue = ifMetagenerationNotMatch;
    if (ifMetagenerationNotMatchValue != null) {
      map['ifMetagenerationNotMatch'] = ifMetagenerationNotMatchValue;
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = projectionValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetBucketStorageV1Args.fromMap(Map<String, dynamic> map) {
    return GetBucketStorageV1Args(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      ifMetagenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      projection: pulumi.Input.asOptionalInput<String>(map['projection']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
