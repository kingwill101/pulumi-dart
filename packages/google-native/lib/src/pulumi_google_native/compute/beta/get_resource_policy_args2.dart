// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResourcePolicy.
class GetResourcePolicyArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> resourcePolicy;

  GetResourcePolicyArgs2({
    this.project,
    required this.region,
    required this.resourcePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['resourcePolicy'] = resourcePolicy;
    return map;
  }

  factory GetResourcePolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      resourcePolicy: Input.asInput<String>(map['resourcePolicy']),
    );
  }
}
