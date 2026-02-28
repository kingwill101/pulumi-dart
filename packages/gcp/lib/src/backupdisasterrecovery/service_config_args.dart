// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_service_config_service_config_args_doc}
/// The set of arguments for ServiceConfig.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_service_config_service_config_args_doc}
class ServiceConfigArgs {
  /// The location in which the Service config is to be initialized.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type to which the default service config will be applied.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ServiceConfigArgs].
  /// [location] The location in which the Service config is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] The resource type to which the default service config will be applied.
  ServiceConfigArgs({
    required String location,
    String? project,
    required String resourceType,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceType = pulumi.Input.asInput<String>(resourceType);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
