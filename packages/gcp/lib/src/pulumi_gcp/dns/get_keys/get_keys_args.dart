// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeys.
class GetKeysArgs {
  /// The name or id of the Cloud DNS managed zone.
  final pulumi.Input<String> managedZone;

  /// The ID of the project in which the resource belongs. If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetKeysArgs({
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetKeysArgs(
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
