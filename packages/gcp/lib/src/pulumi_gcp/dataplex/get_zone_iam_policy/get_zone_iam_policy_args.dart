// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getZoneIamPolicy.
class GetZoneIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> dataplexZone;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> lake;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetZoneIamPolicyArgs({
    required this.dataplexZone,
    required this.lake,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataplexZone'] = dataplexZone;
    map['lake'] = lake;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneIamPolicyArgs(
      dataplexZone: Input.asInput<String>(map['dataplexZone']),
      lake: Input.asInput<String>(map['lake']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
