// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_project_service_account_get_project_service_account_args_doc}
/// Arguments for getProjectServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_project_service_account_get_project_service_account_args_doc}
class GetProjectServiceAccountArgs {
  /// The project the unique service account was created for. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The project the lookup originates from. This field is used if you are making the request
  /// from a different account than the one you are finding the service account for.
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetProjectServiceAccountArgs].
  /// [project] The project the unique service account was created for. If it is not provided, the provider project is used.
  /// [userProject] The project the lookup originates from. This field is used if you are making the request
  GetProjectServiceAccountArgs({
    String? project,
    String? userProject,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'userProject': ?userProject,
    };
  }

  factory GetProjectServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountArgs(
      project: map['project'] == null ? null : map['project'] as String,
      userProject: map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}

