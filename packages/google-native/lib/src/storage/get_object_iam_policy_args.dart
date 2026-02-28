// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_object_iam_policy_args_doc}
/// Arguments for getObjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_object_iam_policy_args_doc}
class GetObjectIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetObjectIamPolicyArgs].
  /// [bucket] Required.
  /// [generation] Optional.
  /// [object] Required.
  /// [userProject] Optional.
  GetObjectIamPolicyArgs({
    required String bucket,
    String? generation,
    required String object,
    String? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      object = pulumi.Input.asInput<String>(object),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
      'userProject': ?userProject,
    };
  }

  factory GetObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectIamPolicyArgs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

