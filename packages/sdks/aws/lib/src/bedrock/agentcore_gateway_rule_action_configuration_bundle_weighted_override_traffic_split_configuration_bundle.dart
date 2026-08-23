// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle {
  /// ARN of the configuration bundle to apply.
  final pulumi.Input<String> bundleArn;
  /// Version (UUID) of the configuration bundle to apply.
  final pulumi.Input<String> bundleVersion;

  /// Creates a new [AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle].
  /// [bundleArn] ARN of the configuration bundle to apply.
  /// [bundleVersion] Version (UUID) of the configuration bundle to apply.
  const AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle({
    required this.bundleArn,
    required this.bundleVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleArn': bundleArn,
      'bundleVersion': bundleVersion,
    };
  }

  factory AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionConfigurationBundleWeightedOverrideTrafficSplitConfigurationBundle(
      bundleArn: pulumi.Input.fromValue(map['bundleArn'] as String),
      bundleVersion: pulumi.Input.fromValue(map['bundleVersion'] as String),
    );
  }
}
