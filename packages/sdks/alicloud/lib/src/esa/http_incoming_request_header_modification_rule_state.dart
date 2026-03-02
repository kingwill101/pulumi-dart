// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_incoming_request_header_modification_rule_request_header_modification.dart';

/// Input properties used for looking up and filtering HttpIncomingRequestHeaderModificationRule resources.
class HttpIncomingRequestHeaderModificationRuleState {
  /// Config Id
  final pulumi.Input<int>? configId;
  /// The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  final pulumi.Input<List<HttpIncomingRequestHeaderModificationRuleRequestHeaderModification>>? requestHeaderModifications;
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
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  final pulumi.Input<int>? sequence;
  /// The site ID.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpIncomingRequestHeaderModificationRuleState].
  /// [configId] Config Id
  /// [requestHeaderModifications] The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] Order of rule execution. The smaller the value, the higher the priority for execution.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  HttpIncomingRequestHeaderModificationRuleState({
    this.configId,
    this.requestHeaderModifications,
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
      'requestHeaderModifications': ?pulumi.Input.mapOptionalInputValue<List<HttpIncomingRequestHeaderModificationRuleRequestHeaderModification>, List<Map<String, dynamic>>>(requestHeaderModifications, (value) => pulumi.Input.encodeList<HttpIncomingRequestHeaderModificationRuleRequestHeaderModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpIncomingRequestHeaderModificationRuleState.fromMap(Map<String, dynamic> map) {
    return HttpIncomingRequestHeaderModificationRuleState(
      configId: map['configId'] == null ? null : (map['configId'] as int).input(),
      requestHeaderModifications: map['requestHeaderModifications'] == null ? null : (pulumi.Input.decodeList<HttpIncomingRequestHeaderModificationRuleRequestHeaderModification>(map['requestHeaderModifications'], (value) => HttpIncomingRequestHeaderModificationRuleRequestHeaderModification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence'] as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId'] as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion'] as int).input(),
    );
  }
}

