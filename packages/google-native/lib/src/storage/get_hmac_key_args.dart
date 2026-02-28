// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_hmac_key_args_doc}
/// Arguments for getHmacKey.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_hmac_key_args_doc}
class GetHmacKeyArgs {
  final pulumi.Input<String> accessId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetHmacKeyArgs].
  /// [accessId] Required.
  /// [project] Optional.
  /// [userProject] Optional.
  GetHmacKeyArgs({
    required String accessId,
    String? project,
    String? userProject,
  })  : accessId = pulumi.Input.asInput<String>(accessId),
        project = pulumi.Input.asOptionalInput<String>(project),
        userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessId'] = accessId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetHmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyArgs(
      accessId: map['accessId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      userProject:
          map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}
