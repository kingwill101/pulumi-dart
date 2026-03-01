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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? scalingGroupId,
    pulumi.Output<String>? type,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

