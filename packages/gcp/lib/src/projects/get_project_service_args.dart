// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_project_service_get_project_service_args_doc}
/// Arguments for getProjectService.
/// {@endtemplate}
/// {@macro pulumi_projects_get_project_service_get_project_service_args_doc}
class GetProjectServiceArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Google Platform project service.
  ///
  /// - - -
  final pulumi.Input<String> service;

  /// Creates a new [GetProjectServiceArgs].
  /// [project] The project in which the resource belongs. If it
  /// [service] The name of the Google Platform project service.
  GetProjectServiceArgs({String? project, required String service})
    : project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'service': service};
  }

  factory GetProjectServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceArgs(
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}
