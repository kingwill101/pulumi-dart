// ignore_for_file: unused_element, unnecessary_cast


/// A custom alert rule that checks if a value (depends on the custom alert type) is allowed.
class AllowlistCustomAlertRuleResponse {
  /// The values to allow. The format of the values depends on the rule type.
  final List<String> allowlistValues;
  /// The description of the custom alert.
  final String description;
  /// The display name of the custom alert.
  final String displayName;
  /// Status of the custom alert.
  final bool isEnabled;
  /// The type of the custom alert rule.
  /// Expected value is 'AllowlistCustomAlertRule'.
  final String ruleType;
  /// The value type of the items in the list.
  final String valueType;

  /// Creates a new [AllowlistCustomAlertRuleResponse].
  /// [allowlistValues] The values to allow. The format of the values depends on the rule type.
  /// [description] The description of the custom alert.
  /// [displayName] The display name of the custom alert.
  /// [isEnabled] Status of the custom alert.
  /// [ruleType] The type of the custom alert rule.
  /// [valueType] The value type of the items in the list.
  AllowlistCustomAlertRuleResponse({
    required this.allowlistValues,
    required this.description,
    required this.displayName,
    required this.isEnabled,
    required this.ruleType,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistValues': allowlistValues,
      'description': description,
      'displayName': displayName,
      'isEnabled': isEnabled,
      'ruleType': ruleType,
      'valueType': valueType,
    };
  }

  factory AllowlistCustomAlertRuleResponse.fromMap(Map<String, dynamic> map) {
    return AllowlistCustomAlertRuleResponse(
      allowlistValues: (map['allowlistValues'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      isEnabled: map['isEnabled'] as bool,
      ruleType: map['ruleType'] as String,
      valueType: map['valueType'] as String,
    );
  }
}

