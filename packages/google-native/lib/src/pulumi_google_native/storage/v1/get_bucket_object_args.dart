// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketObject.
class GetBucketObjectArgs {
  final Input<String> bucket;
  final Input<String>? generation;
  final Input<String>? ifGenerationMatch;
  final Input<String>? ifGenerationNotMatch;
  final Input<String>? ifMetagenerationMatch;
  final Input<String>? ifMetagenerationNotMatch;
  final Input<String> object;
  final Input<String>? projection;
  final Input<bool>? softDeleted;
  final Input<String>? userProject;

  GetBucketObjectArgs({
    required this.bucket,
    this.generation,
    this.ifGenerationMatch,
    this.ifGenerationNotMatch,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    required this.object,
    this.projection,
    this.softDeleted,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final ifGenerationMatchValue = ifGenerationMatch;
    if (ifGenerationMatchValue != null) {
      map['ifGenerationMatch'] = ifGenerationMatchValue;
    }
    final ifGenerationNotMatchValue = ifGenerationNotMatch;
    if (ifGenerationNotMatchValue != null) {
      map['ifGenerationNotMatch'] = ifGenerationNotMatchValue;
    }
    final ifMetagenerationMatchValue = ifMetagenerationMatch;
    if (ifMetagenerationMatchValue != null) {
      map['ifMetagenerationMatch'] = ifMetagenerationMatchValue;
    }
    final ifMetagenerationNotMatchValue = ifMetagenerationNotMatch;
    if (ifMetagenerationNotMatchValue != null) {
      map['ifMetagenerationNotMatch'] = ifMetagenerationNotMatchValue;
    }
    map['object'] = object;
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = projectionValue;
    }
    final softDeletedValue = softDeleted;
    if (softDeletedValue != null) {
      map['softDeleted'] = softDeletedValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: Input.asInput<String>(map['bucket']),
      generation: Input.asOptionalInput<String>(map['generation']),
      ifGenerationMatch:
          Input.asOptionalInput<String>(map['ifGenerationMatch']),
      ifGenerationNotMatch:
          Input.asOptionalInput<String>(map['ifGenerationNotMatch']),
      ifMetagenerationMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      object: Input.asInput<String>(map['object']),
      projection: Input.asOptionalInput<String>(map['projection']),
      softDeleted: Input.asOptionalInput<bool>(map['softDeleted']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
