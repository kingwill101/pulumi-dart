// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketObject.
class GetBucketObjectArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String>? ifGenerationMatch;
  final pulumi.Input<String>? ifGenerationNotMatch;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? projection;
  final pulumi.Input<bool>? softDeleted;
  final pulumi.Input<String>? userProject;

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      generation: pulumi.Input.asOptionalInput<String>(map['generation']),
      ifGenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifGenerationMatch']),
      ifGenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifGenerationNotMatch']),
      ifMetagenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      object: pulumi.Input.asInput<String>(map['object']),
      projection: pulumi.Input.asOptionalInput<String>(map['projection']),
      softDeleted: pulumi.Input.asOptionalInput<bool>(map['softDeleted']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
