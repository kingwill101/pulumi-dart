// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInterconnectLocations.
class GetInterconnectLocationsArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetInterconnectLocationsArgs({
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

  factory GetInterconnectLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
