// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServiceConfig.
class ServiceConfigArgs {
  /// The location in which the Service config is to be initialized.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type to which the default service config will be applied.
  final pulumi.Input<String> resourceType;

  ServiceConfigArgs({
    required this.location,
    this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceType'] = resourceType;
    return map;
  }

  factory ServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
    );
  }
}
