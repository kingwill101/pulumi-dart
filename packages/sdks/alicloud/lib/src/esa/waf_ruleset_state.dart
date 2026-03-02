// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WafRuleset resources.
class WafRulesetState {
  /// The ruleset name.
  final pulumi.Input<String>? name;
  /// The WAF phase
  final pulumi.Input<String>? phase;
  /// waf rule set id
  final pulumi.Input<int>? rulesetId;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String>? siteId;
  final pulumi.Input<int>? siteVersion;
  /// Rule Set Status
  final pulumi.Input<String>? status;

  /// Creates a new [WafRulesetState].
  /// [name] The ruleset name.
  /// [phase] The WAF phase
  /// [rulesetId] waf rule set id
  /// [siteId] The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] Optional.
  /// [status] Rule Set Status
  WafRulesetState({
    this.name,
    this.phase,
    this.rulesetId,
    this.siteId,
    this.siteVersion,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'phase': ?phase,
      'rulesetId': ?rulesetId,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'status': ?status,
    };
  }

  factory WafRulesetState.fromMap(Map<String, dynamic> map) {
    return WafRulesetState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      phase: map['phase'] == null ? null : (map['phase']! as String).input(),
      rulesetId: map['rulesetId'] == null ? null : (map['rulesetId']! as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

