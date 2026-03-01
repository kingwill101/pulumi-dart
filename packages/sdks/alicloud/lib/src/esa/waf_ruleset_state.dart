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
    pulumi.Output<String>? name,
    pulumi.Output<String>? phase,
    pulumi.Output<int>? rulesetId,
    pulumi.Output<String>? siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? status,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      phase = pulumi.Input.asOptionalInput<String>(phase),
      rulesetId = pulumi.Input.asOptionalInput<int>(rulesetId),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phase: map['phase'] == null ? null : pulumi.Output.create<String>(map['phase'] as String),
      rulesetId: map['rulesetId'] == null ? null : pulumi.Output.create<int>(map['rulesetId'] as int),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

