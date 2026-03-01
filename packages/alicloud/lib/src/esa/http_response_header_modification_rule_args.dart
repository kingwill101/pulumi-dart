// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_response_header_modification_rule_response_header_modification.dart';

/// {@template pulumi_esa_http_response_header_modification_rule_http_response_header_modification_rule_args_doc}
/// The set of arguments for HttpResponseHeaderModificationRule.
/// {@endtemplate}
/// {@macro pulumi_esa_http_response_header_modification_rule_http_response_header_modification_rule_args_doc}
class HttpResponseHeaderModificationRuleArgs {
  /// Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  final pulumi.Input<List<HttpResponseHeaderModificationRuleResponseHeaderModification>> responseHeaderModifications;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// The site ID.
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpResponseHeaderModificationRuleArgs].
  /// [responseHeaderModifications] Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  HttpResponseHeaderModificationRuleArgs({
    required List<HttpResponseHeaderModificationRuleResponseHeaderModification> responseHeaderModifications,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    required String siteId,
    int? siteVersion,
  }) :
      responseHeaderModifications = pulumi.Input.asInput<List<HttpResponseHeaderModificationRuleResponseHeaderModification>>(responseHeaderModifications),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseHeaderModifications': pulumi.Input.mapInputValue<List<HttpResponseHeaderModificationRuleResponseHeaderModification>, List<Map<String, dynamic>>>(responseHeaderModifications, (value) => pulumi.Input.encodeList<HttpResponseHeaderModificationRuleResponseHeaderModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpResponseHeaderModificationRuleArgs.fromMap(Map<String, dynamic> map) {
    return HttpResponseHeaderModificationRuleArgs(
      responseHeaderModifications: pulumi.Input.decodeList<HttpResponseHeaderModificationRuleResponseHeaderModification>(map['responseHeaderModifications'], (value) => HttpResponseHeaderModificationRuleResponseHeaderModification.fromMap((value as Map).cast<String, dynamic>())),
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
    );
  }
}

