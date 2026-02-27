// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResourcePolicy.
class GetResourcePolicyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  GetResourcePolicyComputeBetaArgs({
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

  factory GetResourcePolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      resourcePolicy: pulumi.Input.asInput<String>(map['resourcePolicy']),
    );
  }
}
