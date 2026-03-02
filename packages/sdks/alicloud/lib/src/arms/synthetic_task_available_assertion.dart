// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskAvailableAssertion {
  /// Expected value.
  final pulumi.Input<String> expect;
  /// Condition: gt: greater than; gte: greater than or equal to; lt: less than; te: less than or equal to; eq: equal to; neq: not equal to; ctn: contains; nctn: does not contain; exist: exists; n_exist: does not exist; belong: belongs to; reg_match: regular matching.
  final pulumi.Input<String> operator;
  /// Check the target. If the target is HttpResCode, HttpResBody, or httpressetime, you do not need to specify the target. If the target is HttpResHead, you need to specify the key in the header. If the target is HttpResHead, you need to use jsonPath.
  final pulumi.Input<String>? target;
  /// Assertion type, including: httpresead, httpresead, HttpResBody, HttpResBodyJson, httpressetime, IcmpPackLoss (packet loss rate), IcmpPackMaxLatency (maximum packet delay ms), icmppackwebscreen, fmppackavglatency (average delay rendering), TraceRouteHops (number of hops), dnsarecname, websiteOnload (full load time), see the supplement below for specific use.
  final pulumi.Input<String> type;

  /// Creates a new [SyntheticTaskAvailableAssertion].
  /// [expect] Expected value.
  /// [operator] Condition: gt: greater than; gte: greater than or equal to; lt: less than; te: less than or equal to; eq: equal to; neq: not equal to; ctn: contains; nctn: does not contain; exist: exists; n_exist: does not exist; belong: belongs to; reg_match: regular matching.
  /// [target] Check the target. If the target is HttpResCode, HttpResBody, or httpressetime, you do not need to specify the target. If the target is HttpResHead, you need to specify the key in the header. If the target is HttpResHead, you need to use jsonPath.
  /// [type] Assertion type, including: httpresead, httpresead, HttpResBody, HttpResBodyJson, httpressetime, IcmpPackLoss (packet loss rate), IcmpPackMaxLatency (maximum packet delay ms), icmppackwebscreen, fmppackavglatency (average delay rendering), TraceRouteHops (number of hops), dnsarecname, websiteOnload (full load time), see the supplement below for specific use.
  SyntheticTaskAvailableAssertion({
    required this.expect,
    required this.operator,
    this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expect': expect,
      'operator': operator,
      'target': ?target,
      'type': type,
    };
  }

  factory SyntheticTaskAvailableAssertion.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskAvailableAssertion(
      expect: (map['expect'] as String).input(),
      operator: (map['operator'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

