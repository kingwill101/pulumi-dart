// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RewriteUrlRule resources.
class RewriteUrlRuleState {
  /// ConfigId
  final pulumi.Input<int>? configId;
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
  final pulumi.Input<String>? siteId;
  /// Version number of the site configuration. For a site with configuration version management enabled, you can use this parameter to specify the site version in which the configuration takes effect. The default version is 0.
  final pulumi.Input<int>? siteVersion;
  /// The desired URI to which you want to rewrite the path in the original request.
  final pulumi.Input<String>? uri;

  /// Creates a new [RewriteUrlRuleState].
  /// [configId] ConfigId
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
  RewriteUrlRuleState({
    this.configId,
    this.queryString,
    this.rewriteQueryStringType,
    this.rewriteUriType,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'queryString': ?queryString,
      'rewriteQueryStringType': ?rewriteQueryStringType,
      'rewriteUriType': ?rewriteUriType,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'uri': ?uri,
    };
  }

  factory RewriteUrlRuleState.fromMap(Map<String, dynamic> map) {
    return RewriteUrlRuleState(
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      queryString: map['queryString'] == null ? null : (map['queryString']! as String).input(),
      rewriteQueryStringType: map['rewriteQueryStringType'] == null ? null : (map['rewriteQueryStringType']! as String).input(),
      rewriteUriType: map['rewriteUriType'] == null ? null : (map['rewriteUriType']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence']! as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion']! as int).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

