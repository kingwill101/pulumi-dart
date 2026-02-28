// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_commitment_args_doc}
/// Arguments for getRegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_commitment_args_doc}
class GetRegionCommitmentArgs {
  final pulumi.Input<String> commitment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionCommitmentArgs].
  /// [commitment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionCommitmentArgs({
    required String commitment,
    String? project,
    required String region,
  })  : commitment = pulumi.Input.asInput<String>(commitment),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitment'] = commitment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentArgs(
      commitment: map['commitment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
