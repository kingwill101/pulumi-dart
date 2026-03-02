// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_v2_routing_rule_condition.dart';
import 'bucket_website_configuration_v2_routing_rule_redirect.dart';

class BucketWebsiteConfigurationV2RoutingRule {
  /// Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  final pulumi.Input<BucketWebsiteConfigurationV2RoutingRuleCondition>? condition;
  /// Configuration block for redirect information. See below.
  final pulumi.Input<BucketWebsiteConfigurationV2RoutingRuleRedirect> redirect;

  /// Creates a new [BucketWebsiteConfigurationV2RoutingRule].
  /// [condition] Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  /// [redirect] Configuration block for redirect information. See below.
  BucketWebsiteConfigurationV2RoutingRule({
    this.condition,
    required this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationV2RoutingRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<BucketWebsiteConfigurationV2RoutingRuleRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteConfigurationV2RoutingRule.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2RoutingRule(
      condition: map['condition'] == null ? null : (BucketWebsiteConfigurationV2RoutingRuleCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      redirect: (BucketWebsiteConfigurationV2RoutingRuleRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

