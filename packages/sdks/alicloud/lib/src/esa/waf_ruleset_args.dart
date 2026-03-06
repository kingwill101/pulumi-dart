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
  const WafRulesetArgs({
    this.name,
    required this.phase,
    required this.siteId,
    this.siteVersion,
    this.status,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phase: pulumi.Input.fromValue(map['phase'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

