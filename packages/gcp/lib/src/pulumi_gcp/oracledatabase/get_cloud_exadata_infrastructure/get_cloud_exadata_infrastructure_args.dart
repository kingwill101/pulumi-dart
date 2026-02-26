// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureArgs {
  /// The ID of the ExadataInfrastructure.
  final Input<String> cloudExadataInfrastructureId;

  /// The location of the resource.
  ///
  /// - - -
  final Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

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
          Input.asInput<String>(map['cloudExadataInfrastructureId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
