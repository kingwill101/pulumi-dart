// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_pool_compute_v1_args_doc}
/// Arguments for getTargetPool.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_pool_compute_v1_args_doc}
class GetTargetPoolComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetPool;

  /// Creates a new [GetTargetPoolComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [targetPool] Required.
  GetTargetPoolComputeV1Args({
    String? project,
    required String region,
    required String targetPool,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      targetPool = pulumi.Input.asInput<String>(targetPool);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetPool': targetPool,
    };
  }

  factory GetTargetPoolComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetPool: map['targetPool'] as String,
    );
  }
}

