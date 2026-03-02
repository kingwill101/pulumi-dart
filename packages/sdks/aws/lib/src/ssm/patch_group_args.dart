// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_patch_group_patch_group_args_doc}
/// The set of arguments for PatchGroup.
/// {@endtemplate}
/// {@macro pulumi_ssm_patch_group_patch_group_args_doc}
class PatchGroupArgs {
  /// The ID of the patch baseline to register the patch group with.
  final pulumi.Input<String> baselineId;
  /// The name of the patch group that should be registered with the patch baseline.
  final pulumi.Input<String> patchGroup;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PatchGroupArgs].
  /// [baselineId] The ID of the patch baseline to register the patch group with.
  /// [patchGroup] The name of the patch group that should be registered with the patch baseline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PatchGroupArgs({
    required this.baselineId,
    required this.patchGroup,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': baselineId,
      'patchGroup': patchGroup,
      'region': ?region,
    };
  }

  factory PatchGroupArgs.fromMap(Map<String, dynamic> map) {
    return PatchGroupArgs(
      baselineId: (map['baselineId'] as String).input(),
      patchGroup: (map['patchGroup'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

