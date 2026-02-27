// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureArgs {
  /// The ID of the ExadataInfrastructure.
  final pulumi.Input<String> cloudExadataInfrastructureId;

  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetCloudExadataInfrastructureArgs({
    required this.cloudExadataInfrastructureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId:
          pulumi.Input.asInput<String>(map['cloudExadataInfrastructureId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
