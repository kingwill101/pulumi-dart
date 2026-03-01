// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_rule_detail_condition.dart';
import 'coo_web_cc_rule_rule_detail_rate_limit.dart';
import 'coo_web_cc_rule_rule_detail_statistics.dart';
import 'coo_web_cc_rule_rule_detail_status_code.dart';

class CooWebCcRuleRuleDetail {
  /// The action to take when a match occurs. Valid values:
  final String action;
  /// List of matching conditions.   See `condition` below.
  final List<CooWebCcRuleRuleDetailCondition> conditions;
  /// Rate limiting statistics. See `rate_limit` below.
  final CooWebCcRuleRuleDetailRateLimit rateLimit;
  /// Deduplicated statistics. This parameter is optional. If omitted, deduplication is not applied. See `statistics` below.
  final CooWebCcRuleRuleDetailStatistics? statistics;
  /// The HTTP status code. See `status_code` below.
  final CooWebCcRuleRuleDetailStatusCode? statusCode;

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
      'conditions': pulumi.Input.encodeList<CooWebCcRuleRuleDetailCondition, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'rateLimit': rateLimit.toMap(),
      'statistics': ?statistics == null ? null : statistics!.toMap(),
      'statusCode': ?statusCode == null ? null : statusCode!.toMap(),
    };
  }

  factory CooWebCcRuleRuleDetail.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetail(
      action: map['action'] as String,
      conditions: pulumi.Input.decodeList<CooWebCcRuleRuleDetailCondition>(map['conditions'], (value) => CooWebCcRuleRuleDetailCondition.fromMap((value as Map).cast<String, dynamic>())),
      rateLimit: CooWebCcRuleRuleDetailRateLimit.fromMap((map['rateLimit'] as Map).cast<String, dynamic>()),
      statistics: map['statistics'] == null ? null : CooWebCcRuleRuleDetailStatistics.fromMap((map['statistics'] as Map).cast<String, dynamic>()),
      statusCode: map['statusCode'] == null ? null : CooWebCcRuleRuleDetailStatusCode.fromMap((map['statusCode'] as Map).cast<String, dynamic>()),
    );
  }
}

