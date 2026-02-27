// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProject.
class GetProjectArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? projectId;

  GetProjectArgs({
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      projectId: pulumi.Input.asOptionalInput<String>(map['projectId']),
    );
  }
}
