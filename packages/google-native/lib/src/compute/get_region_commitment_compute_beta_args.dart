// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_commitment_compute_beta_args_doc}
/// Arguments for getRegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_commitment_compute_beta_args_doc}
class GetRegionCommitmentComputeBetaArgs {
  final pulumi.Input<String> commitment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionCommitmentComputeBetaArgs].
  /// [commitment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionCommitmentComputeBetaArgs({
    required String commitment,
    String? project,
    required String region,
  }) :
      commitment = pulumi.Input.asInput<String>(commitment),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitment': commitment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionCommitmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeBetaArgs(
      commitment: map['commitment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

