// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucket.
class GetBucketArgs2 {
  final Input<String> bucket;
  final Input<String>? ifMetagenerationMatch;
  final Input<String>? ifMetagenerationNotMatch;
  final Input<String>? projection;
  final Input<String>? userProject;

  GetBucketArgs2({
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

  factory GetBucketArgs2.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs2(
      bucket: Input.asInput<String>(map['bucket']),
      ifMetagenerationMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      projection: Input.asOptionalInput<String>(map['projection']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
