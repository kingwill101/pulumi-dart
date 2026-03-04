// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_scaling_rules_get_scaling_rules_args_doc}
/// Arguments for getScalingRules.
/// {@endtemplate}
/// {@macro pulumi_ess_get_scaling_rules_get_scaling_rules_args_doc}
class GetScalingRulesArgs {
  /// A list of scaling rule IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter resulting scaling rules by name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Scaling group id the scaling rules belong to.
  final pulumi.Input<String>? scalingGroupId;

  /// Type of scaling rule.
  final pulumi.Input<String>? type;

  /// Creates a new [GetScalingRulesArgs].
  /// [ids] A list of scaling rule IDs.
  /// [nameRegex] A regex string to filter resulting scaling rules by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scalingGroupId] Scaling group id the scaling rules belong to.
  /// [type] Type of scaling rule.
  GetScalingRulesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.scalingGroupId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
      'type': ?type,
    };
  }

  factory GetScalingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingGroupId: (() {
        final guardedValue = map['scalingGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
