// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_ssl_policy_compute_v1_args_doc}
/// Arguments for getRegionSslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_ssl_policy_compute_v1_args_doc}
class GetRegionSslPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslPolicy;

  /// Creates a new [GetRegionSslPolicyComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [sslPolicy] Required.
  GetRegionSslPolicyComputeV1Args({
    String? project,
    required String region,
    required String sslPolicy,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       sslPolicy = pulumi.Input.asInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslPolicy': sslPolicy,
    };
  }

  factory GetRegionSslPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionSslPolicyComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      sslPolicy: map['sslPolicy'] as String,
    );
  }
}
