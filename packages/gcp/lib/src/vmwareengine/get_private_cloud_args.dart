// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_private_cloud_get_private_cloud_args_doc}
/// Arguments for getPrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_private_cloud_get_private_cloud_args_doc}
class GetPrivateCloudArgs {
  /// Location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudArgs].
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it
  GetPrivateCloudArgs({
    required String location,
    required String name,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetPrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudArgs(
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

