// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_resource_policy_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_resource_policy_args_doc}
class GetResourcePolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  /// Creates a new [GetResourcePolicyArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [resourcePolicy] Required.
  GetResourcePolicyArgs({
    String? project,
    required String region,
    required String resourcePolicy,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy);

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
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      resourcePolicy: map['resourcePolicy'] as String,
    );
  }
}
