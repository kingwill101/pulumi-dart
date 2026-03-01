// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_condition_include_header.dart';

class BucketWebsiteRoutingRulesRoutingRuleCondition {
  /// When the specified Object is accessed, this status is returned to match this rule. This field must be 404 when the jump rule is mirrored back to the source.
  final String? httpErrorCodeReturnedEquals;
  /// This rule can only be matched if the request contains the specified Header and the value is the specified value. You can specify up to 10 containers. See `include_headers` below.
  final List<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader>? includeHeaders;
  /// Only objects that match this prefix can match this rule.
  final String? keyPrefixEquals;
  /// Only objects that match this suffix can match this rule.
  final String? keySuffixEquals;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleCondition].
  /// [httpErrorCodeReturnedEquals] When the specified Object is accessed, this status is returned to match this rule. This field must be 404 when the jump rule is mirrored back to the source.
  /// [includeHeaders] This rule can only be matched if the request contains the specified Header and the value is the specified value. You can specify up to 10 containers. See `include_headers` below.
  /// [keyPrefixEquals] Only objects that match this prefix can match this rule.
  /// [keySuffixEquals] Only objects that match this suffix can match this rule.
  BucketWebsiteRoutingRulesRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.includeHeaders,
    this.keyPrefixEquals,
    this.keySuffixEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorCodeReturnedEquals': ?httpErrorCodeReturnedEquals,
      'includeHeaders': ?includeHeaders == null ? null : pulumi.Input.encodeList<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader, Map<String, dynamic>>(includeHeaders!, (value) => value.toMap()),
      'keyPrefixEquals': ?keyPrefixEquals,
      'keySuffixEquals': ?keySuffixEquals,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleCondition(
      httpErrorCodeReturnedEquals: map['httpErrorCodeReturnedEquals'] == null ? null : map['httpErrorCodeReturnedEquals'] as String,
      includeHeaders: map['includeHeaders'] == null ? null : pulumi.Input.decodeList<BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader>(map['includeHeaders'], (value) => BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader.fromMap((value as Map).cast<String, dynamic>())),
      keyPrefixEquals: map['keyPrefixEquals'] == null ? null : map['keyPrefixEquals'] as String,
      keySuffixEquals: map['keySuffixEquals'] == null ? null : map['keySuffixEquals'] as String,
    );
  }
}

