// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_pool_compute_beta_args_doc}
/// Arguments for getTargetPool.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_pool_compute_beta_args_doc}
class GetTargetPoolComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetPool;

  /// Creates a new [GetTargetPoolComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [targetPool] Required.
  GetTargetPoolComputeBetaArgs({
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

  factory GetTargetPoolComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      targetPool: map['targetPool'] as String,
    );
  }
}

