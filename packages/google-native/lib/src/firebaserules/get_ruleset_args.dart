// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaserules_v1_get_ruleset_args_doc}
/// Arguments for getRuleset.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_v1_get_ruleset_args_doc}
class GetRulesetArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rulesetId;

  /// Creates a new [GetRulesetArgs].
  /// [project] Optional.
  /// [rulesetId] Required.
  GetRulesetArgs({
    String? project,
    required String rulesetId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      rulesetId = pulumi.Input.asInput<String>(rulesetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'rulesetId': rulesetId,
    };
  }

  factory GetRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesetArgs(
      project: map['project'] == null ? null : map['project'] as String,
      rulesetId: map['rulesetId'] as String,
    );
  }
}

