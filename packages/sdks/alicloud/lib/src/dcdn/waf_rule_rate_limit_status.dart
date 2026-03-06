// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleRateLimitStatus {
  /// The HTTP status code returned.
  final pulumi.Input<String>? code;
  /// The number of times that the HTTP status code that was returned. Valid values: 2 to 50000. You can configure only one of the `ratio` and `count` fields.
  final pulumi.Input<int>? count;
  /// The percentage of HTTP status codes. Valid values: 1 to 100. You can configure only one of the `ratio` and `count` fields.
  final pulumi.Input<int>? ratio;

  /// Creates a new [WafRuleRateLimitStatus].
  /// [code] The HTTP status code returned.
  /// [count] The number of times that the HTTP status code that was returned. Valid values: 2 to 50000. You can configure only one of the `ratio` and `count` fields.
  /// [ratio] The percentage of HTTP status codes. Valid values: 1 to 100. You can configure only one of the `ratio` and `count` fields.
  const WafRuleRateLimitStatus({
    this.code,
    this.count,
    this.ratio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'count': ?count,
      'ratio': ?ratio,
    };
  }

  factory WafRuleRateLimitStatus.fromMap(Map<String, dynamic> map) {
    return WafRuleRateLimitStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

