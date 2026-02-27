// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDbServers.
class GetDbServersArgs {
  /// The Exadata Infrastructure id.
  final pulumi.Input<String> cloudExadataInfrastructure;

  /// The location of resource.
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetDbServersArgs({
    required this.cloudExadataInfrastructure,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructure'] = cloudExadataInfrastructure;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDbServersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServersArgs(
      cloudExadataInfrastructure:
          pulumi.Input.asInput<String>(map['cloudExadataInfrastructure']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
