// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_rule_detail_condition.dart';
import 'coo_web_cc_rule_rule_detail_rate_limit.dart';
import 'coo_web_cc_rule_rule_detail_statistics.dart';
import 'coo_web_cc_rule_rule_detail_status_code.dart';

class CooWebCcRuleRuleDetail {
  /// The action to take when a match occurs. Valid values:
  final pulumi.Input<String> action;
  /// List of matching conditions.   See `condition` below.
  final pulumi.Input<List<CooWebCcRuleRuleDetailCondition>> conditions;
  /// Rate limiting statistics. See `rate_limit` below.
  final pulumi.Input<CooWebCcRuleRuleDetailRateLimit> rateLimit;
  /// Deduplicated statistics. This parameter is optional. If omitted, deduplication is not applied. See `statistics` below.
  final pulumi.Input<CooWebCcRuleRuleDetailStatistics>? statistics;
  /// The HTTP status code. See `status_code` below.
  final pulumi.Input<CooWebCcRuleRuleDetailStatusCode>? statusCode;

  /// Creates a new [CooWebCcRuleRuleDetail].
  /// [action] The action to take when a match occurs. Valid values:
  /// [conditions] List of matching conditions.   See `condition` below.
  /// [rateLimit] Rate limiting statistics. See `rate_limit` below.
  /// [statistics] Deduplicated statistics. This parameter is optional. If omitted, deduplication is not applied. See `statistics` below.
  /// [statusCode] The HTTP status code. See `status_code` below.
  CooWebCcRuleRuleDetail({
    required this.action,
    required this.conditions,
    required this.rateLimit,
    this.statistics,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions': pulumi.Input.mapInputValue<List<CooWebCcRuleRuleDetailCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CooWebCcRuleRuleDetailCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateLimit': pulumi.Input.mapInputValue<CooWebCcRuleRuleDetailRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'statistics': ?pulumi.Input.mapOptionalInputValue<CooWebCcRuleRuleDetailStatistics, Map<String, dynamic>>(statistics, (value) => value.toMap()),
      'statusCode': ?pulumi.Input.mapOptionalInputValue<CooWebCcRuleRuleDetailStatusCode, Map<String, dynamic>>(statusCode, (value) => value.toMap()),
    };
  }

  factory CooWebCcRuleRuleDetail.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetail(
      action: (map['action'] as String).input(),
      conditions: (pulumi.Input.decodeList<CooWebCcRuleRuleDetailCondition>(map['conditions'], (value) => CooWebCcRuleRuleDetailCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rateLimit: (CooWebCcRuleRuleDetailRateLimit.fromMap((map['rateLimit'] as Map).cast<String, dynamic>())).input(),
      statistics: map['statistics'] == null ? null : (CooWebCcRuleRuleDetailStatistics.fromMap((map['statistics']! as Map).cast<String, dynamic>())).input(),
      statusCode: map['statusCode'] == null ? null : (CooWebCcRuleRuleDetailStatusCode.fromMap((map['statusCode']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

