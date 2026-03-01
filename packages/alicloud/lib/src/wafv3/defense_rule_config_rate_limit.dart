// ignore_for_file: unused_element, unnecessary_cast

import 'defense_rule_config_rate_limit_status.dart';

class DefenseRuleConfigRateLimit {
  /// The statistical period, in seconds. This parameter specifies the period during which access counts are collected, and works with the Threshold parameter.
  /// Valid values: 1 to 1800 seconds.
  final int? interval;
  /// Response code frequency setting. The description is in the JSON string format. See `status` below.
  final DefenseRuleConfigRateLimitStatus? status;
  /// The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  final String? subKey;
  /// The type of the statistical object. Valid values:
  /// - remote_addr (default): indicates IP.
  /// - cookie.acw_tc: indicates session.
  /// - header: indicates custom header. If you use custom headers, you must specify the headers in subkey.
  /// - queryarg: indicates custom parameters. If you use custom parameters, you must specify the parameters in subkey.
  /// - cookie: indicates custom cookies. If you use custom cookies, you must specify the cookies in subkey.
  final String? target;
  /// The maximum number of requests that can be sent from a statistical object.
  final int? threshold;
  /// The period of time during which you want the specified action to be valid. Unit: seconds.
  /// Valid values: 60 to 86400.
  final int? ttl;

  /// Creates a new [DefenseRuleConfigRateLimit].
  /// [interval] The statistical period, in seconds. This parameter specifies the period during which access counts are collected, and works with the Threshold parameter.
  /// [status] Response code frequency setting. The description is in the JSON string format. See `status` below.
  /// [subKey] The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  /// [target] The type of the statistical object. Valid values:
  /// [threshold] The maximum number of requests that can be sent from a statistical object.
  /// [ttl] The period of time during which you want the specified action to be valid. Unit: seconds.
  DefenseRuleConfigRateLimit({
    this.interval,
    this.status,
    this.subKey,
    this.target,
    this.threshold,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'status': ?status == null ? null : status!.toMap(),
      'subKey': ?subKey,
      'target': ?target,
      'threshold': ?threshold,
      'ttl': ?ttl,
    };
  }

  factory DefenseRuleConfigRateLimit.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigRateLimit(
      interval: map['interval'] == null ? null : map['interval'] as int,
      status: map['status'] == null ? null : DefenseRuleConfigRateLimitStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      subKey: map['subKey'] == null ? null : map['subKey'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

