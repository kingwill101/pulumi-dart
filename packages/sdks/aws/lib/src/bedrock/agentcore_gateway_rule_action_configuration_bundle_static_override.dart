// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleActionConfigurationBundleStaticOverride {
  /// ARN of the configuration bundle to apply.
  final pulumi.Input<String> bundleArn;
  /// Version (UUID) of the configuration bundle to apply.
  final pulumi.Input<String> bundleVersion;

  /// Creates a new [AgentcoreGatewayRuleActionConfigurationBundleStaticOverride].
  /// [bundleArn] ARN of the configuration bundle to apply.
  /// [bundleVersion] Version (UUID) of the configuration bundle to apply.
  const AgentcoreGatewayRuleActionConfigurationBundleStaticOverride({
    required this.bundleArn,
    required this.bundleVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleArn': bundleArn,
      'bundleVersion': bundleVersion,
    };
  }

  factory AgentcoreGatewayRuleActionConfigurationBundleStaticOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleActionConfigurationBundleStaticOverride(
      bundleArn: pulumi.Input.fromValue(map['bundleArn'] as String),
      bundleVersion: pulumi.Input.fromValue(map['bundleVersion'] as String),
    );
  }
}
