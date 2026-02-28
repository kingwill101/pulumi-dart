// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension {
  final String value;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension].
  /// [value] Required.
  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension(
      value: map['value'] as String,
    );
  }
}
