// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RedirectRule resources.
class RedirectRuleState {
  /// Config Id
  final pulumi.Input<int>? configId;
  /// Indicates whether the feature of retaining the query string is enabled. Valid values:
  ///
  /// - on
  /// - off
  final pulumi.Input<String>? reserveQueryString;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// ● Match all incoming requests: value set to true
  /// ● Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  final pulumi.Input<int>? sequence;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// The response code that you want to use to indicate URL redirection. Valid values:
  ///
  /// - 301
  /// - 302
  /// - 303
  /// - 307
  /// - 308
  final pulumi.Input<String>? statusCode;
  /// The destination URL to which requests are redirected.
  final pulumi.Input<String>? targetUrl;
  /// The redirection type. Value range:
  /// - static: static mode.
  /// - dynamic: dynamic mode.
  final pulumi.Input<String>? type;

  /// Creates a new [RedirectRuleState].
  /// [configId] Config Id
  /// [reserveQueryString] Indicates whether the feature of retaining the query string is enabled. Valid values:
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] Order of rule execution. The smaller the value, the higher the priority for execution.
  /// [siteId] The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [statusCode] The response code that you want to use to indicate URL redirection. Valid values:
  /// [targetUrl] The destination URL to which requests are redirected.
  /// [type] The redirection type. Value range:
  const RedirectRuleState({
    this.configId,
    this.reserveQueryString,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
    this.statusCode,
    this.targetUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'reserveQueryString': ?reserveQueryString,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'statusCode': ?statusCode,
      'targetUrl': ?targetUrl,
      'type': ?type,
    };
  }

  factory RedirectRuleState.fromMap(Map<String, dynamic> map) {
    return RedirectRuleState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reserveQueryString: (() { final guardedValue = map['reserveQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUrl: (() { final guardedValue = map['targetUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

