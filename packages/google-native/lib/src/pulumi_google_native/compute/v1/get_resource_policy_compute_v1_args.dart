// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResourcePolicy.
class GetResourcePolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  GetResourcePolicyComputeV1Args({
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

  factory GetResourcePolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      resourcePolicy: pulumi.Input.asInput<String>(map['resourcePolicy']),
    );
  }
}
