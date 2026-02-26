// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagedZones.
class GetManagedZonesArgs {
  /// The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  final Input<String>? project;

  GetManagedZonesArgs({
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

  factory GetManagedZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesArgs(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
