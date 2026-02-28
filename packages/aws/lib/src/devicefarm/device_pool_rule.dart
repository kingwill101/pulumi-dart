// ignore_for_file: unused_element, unnecessary_cast

class DevicePoolRule {
  /// The rule's stringified attribute. Valid values are: `APPIUM_VERSION`, `ARN`, `AVAILABILITY`, `FLEET_TYPE`, `FORM_FACTOR`, `INSTANCE_ARN`, `INSTANCE_LABELS`, `MANUFACTURER`, `MODEL`, `OS_VERSION`, `PLATFORM`, `REMOTE_ACCESS_ENABLED`, `REMOTE_DEBUG_ENABLED`.
  final String? attribute;

  /// Specifies how Device Farm compares the rule's attribute to the value. For the operators that are supported by each attribute. Valid values are: `EQUALS`, `NOT_IN`, `IN`, `GREATER_THAN`, `GREATER_THAN_OR_EQUALS`, `LESS_THAN`, `LESS_THAN_OR_EQUALS`, `CONTAINS`.
  final String? operator;

  /// The rule's value.
  final String? value;

  /// Creates a new [DevicePoolRule].
  /// [attribute] The rule's stringified attribute. Valid values are: `APPIUM_VERSION`, `ARN`, `AVAILABILITY`, `FLEET_TYPE`, `FORM_FACTOR`, `INSTANCE_ARN`, `INSTANCE_LABELS`, `MANUFACTURER`, `MODEL`, `OS_VERSION`, `PLATFORM`, `REMOTE_ACCESS_ENABLED`, `REMOTE_DEBUG_ENABLED`.
  /// [operator] Specifies how Device Farm compares the rule's attribute to the value. For the operators that are supported by each attribute. Valid values are: `EQUALS`, `NOT_IN`, `IN`, `GREATER_THAN`, `GREATER_THAN_OR_EQUALS`, `LESS_THAN`, `LESS_THAN_OR_EQUALS`, `CONTAINS`.
  /// [value] The rule's value.
  DevicePoolRule({
    this.attribute,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeValue = attribute;
    if (attributeValue != null) {
      map['attribute'] = attributeValue;
    }
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DevicePoolRule.fromMap(Map<String, dynamic> map) {
    return DevicePoolRule(
      attribute: map['attribute'] == null ? null : map['attribute'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
