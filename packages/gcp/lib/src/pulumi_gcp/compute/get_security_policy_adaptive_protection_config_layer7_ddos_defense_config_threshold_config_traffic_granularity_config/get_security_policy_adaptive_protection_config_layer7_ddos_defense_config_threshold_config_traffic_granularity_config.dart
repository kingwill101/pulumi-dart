// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig {
  /// If enabled, traffic matching each unique value for the specified type constitutes a separate traffic unit. It can only be set to true if value is empty.
  final bool enableEachUniqueValue;

  /// Type of this configuration.
  final String type;

  /// Requests that match this value constitute a granular traffic unit.
  final String value;

  GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig({
    required this.enableEachUniqueValue,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableEachUniqueValue'] = enableEachUniqueValue;
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig(
      enableEachUniqueValue: map['enableEachUniqueValue'] as bool,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
