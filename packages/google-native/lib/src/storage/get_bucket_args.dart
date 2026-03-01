// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_args_doc}
/// Arguments for getBucket.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_args_doc}
class GetBucketArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String>? projection;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetBucketArgs].
  /// [bucket] Required.
  /// [ifMetagenerationMatch] Optional.
  /// [ifMetagenerationNotMatch] Optional.
  /// [projection] Optional.
  /// [userProject] Optional.
  GetBucketArgs({
    required String bucket,
    String? ifMetagenerationMatch,
    String? ifMetagenerationNotMatch,
    String? projection,
    String? userProject,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       ifMetagenerationMatch = pulumi.Input.asOptionalInput<String>(
         ifMetagenerationMatch,
       ),
       ifMetagenerationNotMatch = pulumi.Input.asOptionalInput<String>(
         ifMetagenerationNotMatch,
       ),
       projection = pulumi.Input.asOptionalInput<String>(projection),
       userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'projection': ?projection,
      'userProject': ?userProject,
    };
  }

  factory GetBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs(
      bucket: map['bucket'] as String,
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null
          ? null
          : map['ifMetagenerationMatch'] as String,
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null
          ? null
          : map['ifMetagenerationNotMatch'] as String,
      projection: map['projection'] == null
          ? null
          : map['projection'] as String,
      userProject: map['userProject'] == null
          ? null
          : map['userProject'] as String,
    );
  }
}
