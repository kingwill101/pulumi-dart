// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getResourcePolicy.
class GetResourcePolicyArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> resourcePolicy;

  GetResourcePolicyArgs({
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

  factory GetResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      resourcePolicy: Input.asInput<String>(map['resourcePolicy']),
    );
  }
}
