// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig {
  /// If enabled, traffic matching each unique value for the specified type constitutes a separate traffic unit. It can only be set to true if value is empty.
  final bool? enableEachUniqueValue;

  /// The type of this configuration, a granular traffic unit can be one of the following:
  /// * `HTTP_HEADER_HOST`
  /// * `HTTP_PATH`
  final String type;

  /// Requests that match this value constitute a granular traffic unit.
  final String? value;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig].
  /// [enableEachUniqueValue] If enabled, traffic matching each unique value for the specified type constitutes a separate traffic unit. It can only be set to true if value is empty.
  /// [type] The type of this configuration, a granular traffic unit can be one of the following:
  /// [value] Requests that match this value constitute a granular traffic unit.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig({
    this.enableEachUniqueValue,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableEachUniqueValueValue = enableEachUniqueValue;
    if (enableEachUniqueValueValue != null) {
      map['enableEachUniqueValue'] = enableEachUniqueValueValue;
    }
    map['type'] = type;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig(
      enableEachUniqueValue: map['enableEachUniqueValue'] == null
          ? null
          : map['enableEachUniqueValue'] as bool,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
