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
    pulumi.Output<String>? queryString,
    pulumi.Output<String>? rewriteQueryStringType,
    pulumi.Output<String>? rewriteUriType,
    pulumi.Output<String>? rule,
    pulumi.Output<String>? ruleEnable,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? sequence,
    required pulumi.Output<String> siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? uri,
  }) :
      queryString = pulumi.Input.asOptionalInput<String>(queryString),
      rewriteQueryStringType = pulumi.Input.asOptionalInput<String>(rewriteQueryStringType),
      rewriteUriType = pulumi.Input.asOptionalInput<String>(rewriteUriType),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      uri = pulumi.Input.asOptionalInput<String>(uri);

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
      queryString: map['queryString'] == null ? null : pulumi.Output.create<String>(map['queryString'] as String),
      rewriteQueryStringType: map['rewriteQueryStringType'] == null ? null : pulumi.Output.create<String>(map['rewriteQueryStringType'] as String),
      rewriteUriType: map['rewriteUriType'] == null ? null : pulumi.Output.create<String>(map['rewriteUriType'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      ruleEnable: map['ruleEnable'] == null ? null : pulumi.Output.create<String>(map['ruleEnable'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      sequence: map['sequence'] == null ? null : pulumi.Output.create<int>(map['sequence'] as int),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

