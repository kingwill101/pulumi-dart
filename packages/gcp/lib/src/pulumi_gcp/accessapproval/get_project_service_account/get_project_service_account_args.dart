// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectServiceAccount.
class GetProjectServiceAccountArgs {
  /// The project ID the service account was created for.
  final pulumi.Input<String> projectId;

  GetProjectServiceAccountArgs({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectId'] = projectId;
    return map;
  }

  factory GetProjectServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountArgs(
      projectId: pulumi.Input.asInput<String>(map['projectId']),
    );
  }
}
