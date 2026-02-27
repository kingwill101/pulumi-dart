// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceFilestoreArgs {
  /// The name of the location of the instance. This
  /// can be a region for ENTERPRISE tier instances. If it is not provided,
  /// the provider region or zone is used.
  final pulumi.Input<String>? location;

  /// The name of a Filestore instance.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetInstanceFilestoreArgs({
    this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceFilestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceFilestoreArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
