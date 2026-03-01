// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_header_modification_rule_request_header_modification.dart';

/// Input properties used for looking up and filtering HttpRequestHeaderModificationRule resources.
class HttpRequestHeaderModificationRuleState {
  /// Config Id
  final pulumi.Input<int>? configId;
  /// The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  final pulumi.Input<List<HttpRequestHeaderModificationRuleRequestHeaderModification>>? requestHeaderModifications;
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
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpRequestHeaderModificationRuleState].
  /// [configId] Config Id
  /// [requestHeaderModifications] The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  HttpRequestHeaderModificationRuleState({
    pulumi.Output<int>? configId,
    pulumi.Output<List<HttpRequestHeaderModificationRuleRequestHeaderModification>>? requestHeaderModifications,
    pulumi.Output<String>? rule,
    pulumi.Output<String>? ruleEnable,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? sequence,
    pulumi.Output<String>? siteId,
    pulumi.Output<int>? siteVersion,
  }) :
      configId = pulumi.Input.asOptionalInput<int>(configId),
      requestHeaderModifications = pulumi.Input.asOptionalInput<List<HttpRequestHeaderModificationRuleRequestHeaderModification>>(requestHeaderModifications),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'requestHeaderModifications': ?pulumi.Input.mapOptionalInputValue<List<HttpRequestHeaderModificationRuleRequestHeaderModification>, List<Map<String, dynamic>>>(requestHeaderModifications, (value) => pulumi.Input.encodeList<HttpRequestHeaderModificationRuleRequestHeaderModification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpRequestHeaderModificationRuleState.fromMap(Map<String, dynamic> map) {
    return HttpRequestHeaderModificationRuleState(
      configId: map['configId'] == null ? null : pulumi.Output.create<int>(map['configId'] as int),
      requestHeaderModifications: map['requestHeaderModifications'] == null ? null : pulumi.Output.create<List<HttpRequestHeaderModificationRuleRequestHeaderModification>>(pulumi.Input.decodeList<HttpRequestHeaderModificationRuleRequestHeaderModification>(map['requestHeaderModifications'], (value) => HttpRequestHeaderModificationRuleRequestHeaderModification.fromMap((value as Map).cast<String, dynamic>()))),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      ruleEnable: map['ruleEnable'] == null ? null : pulumi.Output.create<String>(map['ruleEnable'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      sequence: map['sequence'] == null ? null : pulumi.Output.create<int>(map['sequence'] as int),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
    );
  }
}

