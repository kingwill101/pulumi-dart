// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_object_args_doc}
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

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] Required.
  /// [generation] Optional.
  /// [ifGenerationMatch] Optional.
  /// [ifGenerationNotMatch] Optional.
  /// [ifMetagenerationMatch] Optional.
  /// [ifMetagenerationNotMatch] Optional.
  /// [object] Required.
  /// [projection] Optional.
  /// [softDeleted] Optional.
  /// [userProject] Optional.
  GetBucketObjectArgs({
    required String bucket,
    String? generation,
    String? ifGenerationMatch,
    String? ifGenerationNotMatch,
    String? ifMetagenerationMatch,
    String? ifMetagenerationNotMatch,
    required String object,
    String? projection,
    bool? softDeleted,
    String? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      ifGenerationMatch = pulumi.Input.asOptionalInput<String>(ifGenerationMatch),
      ifGenerationNotMatch = pulumi.Input.asOptionalInput<String>(ifGenerationNotMatch),
      ifMetagenerationMatch = pulumi.Input.asOptionalInput<String>(ifMetagenerationMatch),
      ifMetagenerationNotMatch = pulumi.Input.asOptionalInput<String>(ifMetagenerationNotMatch),
      object = pulumi.Input.asInput<String>(object),
      projection = pulumi.Input.asOptionalInput<String>(projection),
      softDeleted = pulumi.Input.asOptionalInput<bool>(softDeleted),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'ifGenerationMatch': ?ifGenerationMatch,
      'ifGenerationNotMatch': ?ifGenerationNotMatch,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'object': object,
      'projection': ?projection,
      'softDeleted': ?softDeleted,
      'userProject': ?userProject,
    };
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      ifGenerationMatch: map['ifGenerationMatch'] == null ? null : map['ifGenerationMatch'] as String,
      ifGenerationNotMatch: map['ifGenerationNotMatch'] == null ? null : map['ifGenerationNotMatch'] as String,
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null ? null : map['ifMetagenerationMatch'] as String,
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null ? null : map['ifMetagenerationNotMatch'] as String,
      object: map['object'] as String,
      projection: map['projection'] == null ? null : map['projection'] as String,
      softDeleted: map['softDeleted'] == null ? null : map['softDeleted'] as bool,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

