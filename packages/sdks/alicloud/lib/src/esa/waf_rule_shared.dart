// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_shared_actions.dart';
import 'waf_rule_shared_match.dart';

class WafRuleShared {
  /// The default action executed under shared configuration.
  final pulumi.Input<String>? action;
  /// Extended action configurations under shared settings. See `actions` below.
  final pulumi.Input<WafRuleSharedActions>? actions;
  /// Specify the cross-domain site ID.
  final pulumi.Input<int>? crossSiteId;
  /// The match expression used in shared configuration.
  final pulumi.Input<String>? expression;
  /// Configuration of the request matching logic engine. See `match` below.
  final pulumi.Input<WafRuleSharedMatch>? match;
  /// The integration mode of the Web SDK:
  final pulumi.Input<String>? mode;
  /// The display name of the ruleset.
  final pulumi.Input<String>? name;
  /// The target type protected by this rule: web or app.
  final pulumi.Input<String>? target;

  /// Creates a new [WafRuleShared].
  /// [action] The default action executed under shared configuration.
  /// [actions] Extended action configurations under shared settings. See `actions` below.
  /// [crossSiteId] Specify the cross-domain site ID.
  /// [expression] The match expression used in shared configuration.
  /// [match] Configuration of the request matching logic engine. See `match` below.
  /// [mode] The integration mode of the Web SDK:
  /// [name] The display name of the ruleset.
  /// [target] The target type protected by this rule: web or app.
  WafRuleShared({
    this.action,
    this.actions,
    this.crossSiteId,
    this.expression,
    this.match,
    this.mode,
    this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'actions': ?pulumi.Input.mapOptionalInputValue<WafRuleSharedActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'crossSiteId': ?crossSiteId,
      'expression': ?expression,
      'match': ?pulumi.Input.mapOptionalInputValue<WafRuleSharedMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'mode': ?mode,
      'name': ?name,
      'target': ?target,
    };
  }

  factory WafRuleShared.fromMap(Map<String, dynamic> map) {
    return WafRuleShared(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      actions: map['actions'] == null ? null : (WafRuleSharedActions.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      crossSiteId: map['crossSiteId'] == null ? null : (map['crossSiteId'] as int).input(),
      expression: map['expression'] == null ? null : (map['expression'] as String).input(),
      match: map['match'] == null ? null : (WafRuleSharedMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

