// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_routing_rule_condition.dart';
import 'bucket_website_configuration_routing_rule_redirect.dart';

class BucketWebsiteConfigurationRoutingRule {
  /// Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  final pulumi.Input<BucketWebsiteConfigurationRoutingRuleCondition>? condition;
  /// Configuration block for redirect information. See below.
  final pulumi.Input<BucketWebsiteConfigurationRoutingRuleRedirect> redirect;

  /// Creates a new [BucketWebsiteConfigurationRoutingRule].
  /// [condition] Configuration block for describing a condition that must be met for the specified redirect to apply. See below.
  /// [redirect] Configuration block for redirect information. See below.
  const BucketWebsiteConfigurationRoutingRule({
    this.condition,
    required this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<BucketWebsiteConfigurationRoutingRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<BucketWebsiteConfigurationRoutingRuleRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory BucketWebsiteConfigurationRoutingRule.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationRoutingRule(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketWebsiteConfigurationRoutingRuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirect: pulumi.Input.fromValue(BucketWebsiteConfigurationRoutingRuleRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())),
    );
  }
}

