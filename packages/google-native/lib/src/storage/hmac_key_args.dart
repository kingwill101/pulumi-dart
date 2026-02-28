// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_hmac_key_args_doc}
/// The set of arguments for HmacKey.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_hmac_key_args_doc}
class HmacKeyArgs {
  final pulumi.Input<String>? project;
  /// Email address of the service account.
  final pulumi.Input<String> serviceAccountEmail;
  /// The project to be billed for this request.
  final pulumi.Input<String>? userProject;

  /// Creates a new [HmacKeyArgs].
  /// [project] Optional.
  /// [serviceAccountEmail] Email address of the service account.
  /// [userProject] The project to be billed for this request.
  HmacKeyArgs({
    String? project,
    required String serviceAccountEmail,
    String? userProject,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccountEmail = pulumi.Input.asInput<String>(serviceAccountEmail),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceAccountEmail': serviceAccountEmail,
      'userProject': ?userProject,
    };
  }

  factory HmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return HmacKeyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

