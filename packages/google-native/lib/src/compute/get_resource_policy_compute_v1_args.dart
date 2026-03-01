// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_resource_policy_compute_v1_args_doc}
/// Arguments for getResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_resource_policy_compute_v1_args_doc}
class GetResourcePolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resourcePolicy;

  /// Creates a new [GetResourcePolicyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [resourcePolicy] Required.
  GetResourcePolicyComputeV1Args({
    String? project,
    required String region,
    required String resourcePolicy,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'resourcePolicy': resourcePolicy,
    };
  }

  factory GetResourcePolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      resourcePolicy: map['resourcePolicy'] as String,
    );
  }
}
