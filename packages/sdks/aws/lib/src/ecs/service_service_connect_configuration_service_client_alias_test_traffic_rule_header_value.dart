// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue {
  /// Exact string value to match in the header.
  final pulumi.Input<String> exact;

  /// Creates a new [ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue].
  /// [exact] Exact string value to match in the header.
  const ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceClientAliasTestTrafficRuleHeaderValue(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}
