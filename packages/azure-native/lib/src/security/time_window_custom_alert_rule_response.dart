// ignore_for_file: unused_element, unnecessary_cast


/// A custom alert rule that checks if the number of activities (depends on the custom alert type) in a time window is within the given range.
class TimeWindowCustomAlertRuleResponse {
  /// The description of the custom alert.
  final String description;
  /// The display name of the custom alert.
  final String displayName;
  /// Status of the custom alert.
  final bool isEnabled;
  /// The maximum threshold.
  final int maxThreshold;
  /// The minimum threshold.
  final int minThreshold;
  /// The type of the custom alert rule.
  /// Expected value is 'TimeWindowCustomAlertRule'.
  final String ruleType;
  /// The time window size in iso8601 format.
  final String timeWindowSize;

  /// Creates a new [TimeWindowCustomAlertRuleResponse].
  /// [description] The description of the custom alert.
  /// [displayName] The display name of the custom alert.
  /// [isEnabled] Status of the custom alert.
  /// [maxThreshold] The maximum threshold.
  /// [minThreshold] The minimum threshold.
  /// [ruleType] The type of the custom alert rule.
  /// [timeWindowSize] The time window size in iso8601 format.
  TimeWindowCustomAlertRuleResponse({
    required this.description,
    required this.displayName,
    required this.isEnabled,
    required this.maxThreshold,
    required this.minThreshold,
    required this.ruleType,
    required this.timeWindowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'isEnabled': isEnabled,
      'maxThreshold': maxThreshold,
      'minThreshold': minThreshold,
      'ruleType': ruleType,
      'timeWindowSize': timeWindowSize,
    };
  }

  factory TimeWindowCustomAlertRuleResponse.fromMap(Map<String, dynamic> map) {
    return TimeWindowCustomAlertRuleResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      isEnabled: map['isEnabled'] as bool,
      maxThreshold: map['maxThreshold'] as int,
      minThreshold: map['minThreshold'] as int,
      ruleType: map['ruleType'] as String,
      timeWindowSize: map['timeWindowSize'] as String,
    );
  }
}

