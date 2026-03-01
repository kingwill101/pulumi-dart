// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension {
  /// The string value to use in the custom metric dimension.
  final String value;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension].
  /// [value] The string value to use in the custom metric dimension.
  FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension(
      value: map['value'] as String,
    );
  }
}
