// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstance.
class GetInstanceArgs3 {
  /// The name of the location of the instance. This
  /// can be a region for ENTERPRISE tier instances. If it is not provided,
  /// the provider region or zone is used.
  final Input<String>? location;

  /// The name of a Filestore instance.
  ///
  /// - - -
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetInstanceArgs3({
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

  factory GetInstanceArgs3.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs3(
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
