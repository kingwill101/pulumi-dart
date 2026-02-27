// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionSecurityPolicy.
class GetRegionSecurityPolicyArgs {
  /// The name of the Region Security Policy.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the Region Security Policy resides. If not specified, the provider region is used.
  final pulumi.Input<String>? region;

  GetRegionSecurityPolicyArgs({
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

  factory GetRegionSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
