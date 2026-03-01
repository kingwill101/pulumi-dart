// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_default_patch_baseline_default_patch_baseline_args_doc}
/// The set of arguments for DefaultPatchBaseline.
/// {@endtemplate}
/// {@macro pulumi_oos_default_patch_baseline_default_patch_baseline_args_doc}
class DefaultPatchBaselineArgs {
  /// The name of the patch baseline.
  final pulumi.Input<String> patchBaselineName;

  /// Creates a new [DefaultPatchBaselineArgs].
  /// [patchBaselineName] The name of the patch baseline.
  DefaultPatchBaselineArgs({
    required pulumi.Output<String> patchBaselineName,
  }) :
      patchBaselineName = pulumi.Input.asInput<String>(patchBaselineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchBaselineName': patchBaselineName,
    };
  }

  factory DefaultPatchBaselineArgs.fromMap(Map<String, dynamic> map) {
    return DefaultPatchBaselineArgs(
      patchBaselineName: pulumi.Output.create<String>(map['patchBaselineName'] as String),
    );
  }
}

