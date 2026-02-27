// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectServiceAccount.
class GetProjectServiceAccountStorageArgs {
  /// The project the unique service account was created for. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The project the lookup originates from. This field is used if you are making the request
  /// from a different account than the one you are finding the service account for.
  final pulumi.Input<String>? userProject;

  GetProjectServiceAccountStorageArgs({
    this.project,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetProjectServiceAccountStorageArgs.fromMap(
      Map<String, dynamic> map) {
    return GetProjectServiceAccountStorageArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
