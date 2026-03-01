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
    pulumi.Output<String>? baselineId,
    pulumi.Output<String>? patchGroup,
    pulumi.Output<String>? region,
  }) :
      baselineId = pulumi.Input.asOptionalInput<String>(baselineId),
      patchGroup = pulumi.Input.asOptionalInput<String>(patchGroup),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineId': ?baselineId,
      'patchGroup': ?patchGroup,
      'region': ?region,
    };
  }

  factory PatchGroupState.fromMap(Map<String, dynamic> map) {
    return PatchGroupState(
      baselineId: map['baselineId'] == null ? null : pulumi.Output.create<String>(map['baselineId'] as String),
      patchGroup: map['patchGroup'] == null ? null : pulumi.Output.create<String>(map['patchGroup'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

