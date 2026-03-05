// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_rewrite_url_rule_rewrite_url_rule_args_doc}
/// The set of arguments for RewriteUrlRule.
/// {@endtemplate}
/// {@macro pulumi_esa_rewrite_url_rule_rewrite_url_rule_args_doc}
class RewriteUrlRuleArgs {
  /// The desired query string to which you want to rewrite the query string in the original request.
  final pulumi.Input<String>? queryString;
  /// Query string rewrite type. Value range:
  final pulumi.Input<String>? rewriteQueryStringType;
  /// URI rewrite type. Value range:
  final pulumi.Input<String>? rewriteUriType;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// ‒ on: open.
  /// ‒ off: close.
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String> siteId;
  /// Version number of the site configuration. For a site with configuration version management enabled, you can use this parameter to specify the site version in which the configuration takes effect. The default version is 0.
  final pulumi.Input<int>? siteVersion;
  /// The desired URI to which you want to rewrite the path in the original request.
  final pulumi.Input<String>? uri;

  /// Creates a new [RewriteUrlRuleArgs].
  /// [queryString] The desired query string to which you want to rewrite the query string in the original request.
  /// [rewriteQueryStringType] Query string rewrite type. Value range:
  /// [rewriteUriType] URI rewrite type. Value range:
  /// [rule] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] Version number of the site configuration. For a site with configuration version management enabled, you can use this parameter to specify the site version in which the configuration takes effect. The default version is 0.
  /// [uri] The desired URI to which you want to rewrite the path in the original request.
  RewriteUrlRuleArgs({
    this.queryString,
    this.rewriteQueryStringType,
    this.rewriteUriType,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    required this.siteId,
    this.siteVersion,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryString': ?queryString,
      'rewriteQueryStringType': ?rewriteQueryStringType,
      'rewriteUriType': ?rewriteUriType,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'uri': ?uri,
    };
  }

  factory RewriteUrlRuleArgs.fromMap(Map<String, dynamic> map) {
    return RewriteUrlRuleArgs(
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteQueryStringType: (() { final guardedValue = map['rewriteQueryStringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriteUriType: (() { final guardedValue = map['rewriteUriType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

