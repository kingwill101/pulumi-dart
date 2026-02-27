// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAncestry.
class GetAncestryArgs {
  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetAncestryArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAncestryArgs.fromMap(Map<String, dynamic> map) {
    return GetAncestryArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
