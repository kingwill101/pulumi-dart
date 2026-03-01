// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_quota_rule.dart';

class QuotaRule {
  /// The location rules.
  final List<LocationQuotaRule>? locationRules;
  /// The quota policy.
  final String? quotaPolicy;
  /// The required features.
  final List<String>? requiredFeatures;

  /// Creates a new [QuotaRule].
  /// [locationRules] The location rules.
  /// [quotaPolicy] The quota policy.
  /// [requiredFeatures] The required features.
  QuotaRule({
    this.locationRules,
    this.quotaPolicy,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRules': ?locationRules == null ? null : pulumi.Input.encodeList<LocationQuotaRule, Map<String, dynamic>>(locationRules!, (value) => value.toMap()),
      'quotaPolicy': ?quotaPolicy,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory QuotaRule.fromMap(Map<String, dynamic> map) {
    return QuotaRule(
      locationRules: map['locationRules'] == null ? null : pulumi.Input.decodeList<LocationQuotaRule>(map['locationRules'], (value) => LocationQuotaRule.fromMap((value as Map).cast<String, dynamic>())),
      quotaPolicy: map['quotaPolicy'] == null ? null : map['quotaPolicy'] as String,
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
    );
  }
}

