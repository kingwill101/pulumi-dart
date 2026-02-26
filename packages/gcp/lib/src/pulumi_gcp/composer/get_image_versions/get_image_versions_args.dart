// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImageVersions.
class GetImageVersionsArgs {
  /// The ID of the project to list versions in.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location to list versions in.
  /// If it is not provider, the provider region is used.
  final Input<String>? region;

  GetImageVersionsArgs({
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetImageVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
