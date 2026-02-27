// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServiceIdentity.
class ServiceIdentityProjectsArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String> service;

  ServiceIdentityProjectsArgs({
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory ServiceIdentityProjectsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityProjectsArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
