// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresArgs {
  /// The location of the resource.
  ///
  /// - - -
  final Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetCloudExadataInfrastructuresArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudExadataInfrastructuresArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
