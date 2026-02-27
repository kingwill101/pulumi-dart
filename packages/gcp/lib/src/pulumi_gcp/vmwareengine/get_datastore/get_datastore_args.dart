// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatastore.
class GetDatastoreArgs {
  /// either regional or zonal location of the resource.
  final pulumi.Input<String> location;

  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  GetDatastoreArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
