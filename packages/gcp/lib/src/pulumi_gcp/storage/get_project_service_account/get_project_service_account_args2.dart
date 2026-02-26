// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProjectServiceAccount.
class GetProjectServiceAccountArgs2 {
  /// The project the unique service account was created for. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The project the lookup originates from. This field is used if you are making the request
  /// from a different account than the one you are finding the service account for.
  final Input<String>? userProject;

  GetProjectServiceAccountArgs2({
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

  factory GetProjectServiceAccountArgs2.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
