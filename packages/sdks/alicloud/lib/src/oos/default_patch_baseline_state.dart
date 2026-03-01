// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultPatchBaseline resources.
class DefaultPatchBaselineState {
  /// The ID of the patch baseline.
  final pulumi.Input<String>? patchBaselineId;
  /// The name of the patch baseline.
  final pulumi.Input<String>? patchBaselineName;

  /// Creates a new [DefaultPatchBaselineState].
  /// [patchBaselineId] The ID of the patch baseline.
  /// [patchBaselineName] The name of the patch baseline.
  DefaultPatchBaselineState({
    pulumi.Output<String>? patchBaselineId,
    pulumi.Output<String>? patchBaselineName,
  }) :
      patchBaselineId = pulumi.Input.asOptionalInput<String>(patchBaselineId),
      patchBaselineName = pulumi.Input.asOptionalInput<String>(patchBaselineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchBaselineId': ?patchBaselineId,
      'patchBaselineName': ?patchBaselineName,
    };
  }

  factory DefaultPatchBaselineState.fromMap(Map<String, dynamic> map) {
    return DefaultPatchBaselineState(
      patchBaselineId: map['patchBaselineId'] == null ? null : pulumi.Output.create<String>(map['patchBaselineId'] as String),
      patchBaselineName: map['patchBaselineName'] == null ? null : pulumi.Output.create<String>(map['patchBaselineName'] as String),
    );
  }
}

