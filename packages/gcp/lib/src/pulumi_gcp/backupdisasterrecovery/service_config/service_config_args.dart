// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceConfig.
class ServiceConfigArgs {
  /// The location in which the Service config is to be initialized.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The resource type to which the default service config will be applied.
  final Input<String> resourceType;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceType: Input.asInput<String>(map['resourceType']),
    );
  }
}
