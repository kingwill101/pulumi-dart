// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_header_modification_rule_request_header_modification.dart';

/// {@template pulumi_esa_http_request_header_modification_rule_http_request_header_modification_rule_args_doc}
/// The set of arguments for HttpRequestHeaderModificationRule.
/// {@endtemplate}
/// {@macro pulumi_esa_http_request_header_modification_rule_http_request_header_modification_rule_args_doc}
class HttpRequestHeaderModificationRuleArgs {
  /// The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  final pulumi.Input<List<HttpRequestHeaderModificationRuleRequestHeaderModification>> requestHeaderModifications;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// The site ID.
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpRequestHeaderModificationRuleArgs].
  /// [requestHeaderModifications] The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  HttpRequestHeaderModificationRuleArgs({
    required this.requestHeaderModifications,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    required this.siteId,
    this.siteVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderModifications': pulumi.Input.mapInputValue<List<HttpRequestHeaderModificationRuleRequestHeaderModification>, List<Map<String, dynamic>>>(requestHeaderModifications, (value) => pulumi.Input.encodeList<HttpRequestHeaderModificationRuleRequestHeaderModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpRequestHeaderModificationRuleArgs.fromMap(Map<String, dynamic> map) {
    return HttpRequestHeaderModificationRuleArgs(
      requestHeaderModifications: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRequestHeaderModificationRuleRequestHeaderModification>(map['requestHeaderModifications']!, (value) => HttpRequestHeaderModificationRuleRequestHeaderModification.fromMap((value as Map).cast<String, dynamic>()))),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

