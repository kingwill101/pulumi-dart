// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_service_identity_service_identity_args_doc}
/// The set of arguments for ServiceIdentity.
/// {@endtemplate}
/// {@macro pulumi_projects_service_identity_service_identity_args_doc}
class ServiceIdentityArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String> service;

  /// Creates a new [ServiceIdentityArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The service to generate identity for.
  ServiceIdentityArgs({
    String? project,
    required String service,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory ServiceIdentityArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityArgs(
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}
