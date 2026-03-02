// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PatchGroup resources.
class PatchGroupState {
  /// The ID of the patch baseline to register the patch group with.
  final pulumi.Input<String>? baselineId;
  /// The name of the patch group that should be registered with the patch baseline.
  final pulumi.Input<String>? patchGroup;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PatchGroupState].
  /// [baselineId] The ID of the patch baseline to register the patch group with.
  /// [patchGroup] The name of the patch group that should be registered with the patch baseline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PatchGroupState({
    this.baselineId,
    this.patchGroup,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': ?baselineId,
      'patchGroup': ?patchGroup,
      'region': ?region,
    };
  }

  factory PatchGroupState.fromMap(Map<String, dynamic> map) {
    return PatchGroupState(
      baselineId: map['baselineId'] == null ? null : ((map['baselineId'] as String).input()).input(),
      patchGroup: map['patchGroup'] == null ? null : ((map['patchGroup'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

