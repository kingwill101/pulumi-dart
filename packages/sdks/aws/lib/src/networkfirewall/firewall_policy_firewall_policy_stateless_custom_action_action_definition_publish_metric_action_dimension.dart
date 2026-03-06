// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension {
  /// The string value to use in the custom metric dimension.
  final pulumi.Input<String> value;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension].
  /// [value] The string value to use in the custom metric dimension.
  const FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

