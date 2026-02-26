// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResourcePolicy.
class GetResourcePolicyArgs {
  /// The name of the Resource Policy.
  final Input<String> name;

  /// Project from which to list the Resource Policy. Defaults to project declared in the provider.
  final Input<String>? project;

  /// Region where the Resource Policy resides.
  final Input<String>? region;

  GetResourcePolicyArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
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

  factory GetResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
