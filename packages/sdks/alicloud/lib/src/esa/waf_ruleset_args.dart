// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_waf_ruleset_waf_ruleset_args_doc}
/// The set of arguments for WafRuleset.
/// {@endtemplate}
/// {@macro pulumi_esa_waf_ruleset_waf_ruleset_args_doc}
class WafRulesetArgs {
  /// The ruleset name.
  final pulumi.Input<String>? name;
  /// The WAF phase
  final pulumi.Input<String> phase;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String> siteId;
  final pulumi.Input<int>? siteVersion;
  /// Rule Set Status
  final pulumi.Input<String>? status;

  /// Creates a new [WafRulesetArgs].
  /// [name] The ruleset name.
  /// [phase] The WAF phase
  /// [siteId] The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] Optional.
  /// [status] Rule Set Status
  WafRulesetArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> phase,
    required pulumi.Output<String> siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? status,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      phase = pulumi.Input.asInput<String>(phase),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'phase': phase,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'status': ?status,
    };
  }

  factory WafRulesetArgs.fromMap(Map<String, dynamic> map) {
    return WafRulesetArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      phase: pulumi.Output.create<String>(map['phase'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

