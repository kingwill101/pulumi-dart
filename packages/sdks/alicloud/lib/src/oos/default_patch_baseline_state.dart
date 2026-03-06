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
  const DefaultPatchBaselineState({
    this.patchBaselineId,
    this.patchBaselineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchBaselineId': ?patchBaselineId,
      'patchBaselineName': ?patchBaselineName,
    };
  }

  factory DefaultPatchBaselineState.fromMap(Map<String, dynamic> map) {
    return DefaultPatchBaselineState(
      patchBaselineId: (() { final guardedValue = map['patchBaselineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchBaselineName: (() { final guardedValue = map['patchBaselineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

