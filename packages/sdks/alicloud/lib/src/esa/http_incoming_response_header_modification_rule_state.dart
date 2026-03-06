// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_incoming_response_header_modification_rule_response_header_modification.dart';

/// Input properties used for looking up and filtering HttpIncomingResponseHeaderModificationRule resources.
class HttpIncomingResponseHeaderModificationRuleState {
  /// Config Id
  final pulumi.Input<int>? configId;
  /// Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  final pulumi.Input<List<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>>? responseHeaderModifications;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  final pulumi.Input<int>? sequence;
  /// The site ID.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpIncomingResponseHeaderModificationRuleState].
  /// [configId] Config Id
  /// [responseHeaderModifications] Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] Order of rule execution. The smaller the value, the higher the priority for execution.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  const HttpIncomingResponseHeaderModificationRuleState({
    this.configId,
    this.responseHeaderModifications,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'responseHeaderModifications': ?pulumi.Input.mapOptionalInputValue<List<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>, List<Map<String, dynamic>>>(responseHeaderModifications, (value) => pulumi.Input.encodeList<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpIncomingResponseHeaderModificationRuleState.fromMap(Map<String, dynamic> map) {
    return HttpIncomingResponseHeaderModificationRuleState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      responseHeaderModifications: (() { final guardedValue = map['responseHeaderModifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>(guardedValue, (value) => HttpIncomingResponseHeaderModificationRuleResponseHeaderModification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

