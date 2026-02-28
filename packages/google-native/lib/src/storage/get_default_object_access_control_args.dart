// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_default_object_access_control_args_doc}
/// Arguments for getDefaultObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_default_object_access_control_args_doc}
class GetDefaultObjectAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetDefaultObjectAccessControlArgs].
  /// [bucket] Required.
  /// [entity] Required.
  /// [userProject] Optional.
  GetDefaultObjectAccessControlArgs({
    required String bucket,
    required String entity,
    String? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'userProject': ?userProject,
    };
  }

  factory GetDefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultObjectAccessControlArgs(
      bucket: map['bucket'] as String,
      entity: map['entity'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

