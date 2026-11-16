// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_configuration_waf_config.dart';

class PolicyConfiguration {
  /// Whether to automatically remediate noncompliant resources.
  final pulumi.Input<bool> remediationEnabled;
  /// Whether to automatically remove the resources the service created when they are no longer needed. The service currently only accepts `true`.
  final pulumi.Input<bool> resourcesCleanUp;
  /// AWS WAF-specific settings. Required for `WAF` policies. See `wafConfig` below.
  final pulumi.Input<PolicyConfigurationWafConfig?>? wafConfig;

  /// Creates a new [PolicyConfiguration].
  /// [remediationEnabled] Whether to automatically remediate noncompliant resources.
  /// [resourcesCleanUp] Whether to automatically remove the resources the service created when they are no longer needed. The service currently only accepts `true`.
  /// [wafConfig] AWS WAF-specific settings. Required for `WAF` policies. See `wafConfig` below.
  const PolicyConfiguration({
    required this.remediationEnabled,
    required this.resourcesCleanUp,
    this.wafConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remediationEnabled': remediationEnabled,
      'resourcesCleanUp': resourcesCleanUp,
      'wafConfig': ?pulumi.Input.mapOptionalInputValue<PolicyConfigurationWafConfig, Map<String, dynamic>>(wafConfig, (value) => value.toMap()),
    };
  }

  factory PolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return PolicyConfiguration(
      remediationEnabled: pulumi.Input.fromValue(map['remediationEnabled'] as bool),
      resourcesCleanUp: pulumi.Input.fromValue(map['resourcesCleanUp'] as bool),
      wafConfig: (() { final guardedValue = map['wafConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyConfigurationWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
