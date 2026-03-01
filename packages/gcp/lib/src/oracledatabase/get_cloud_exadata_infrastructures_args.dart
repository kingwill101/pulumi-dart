// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
/// Arguments for getCloudExadataInfrastructures.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_cloud_exadata_infrastructures_get_cloud_exadata_infrastructures_args_doc}
class GetCloudExadataInfrastructuresArgs {
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCloudExadataInfrastructuresArgs].
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  GetCloudExadataInfrastructuresArgs({
    required String location,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location, 'project': ?project};
  }

  factory GetCloudExadataInfrastructuresArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
