// ignore_for_file: unused_element, unnecessary_cast


/// Alert configuration details
class AlertConfigurationResponse {
  /// Optional list of action group resource IDs to be notified when the alert is triggered.
  final List<String>? actionGroupIds;
  /// The alert rule description.
  final String? description;
  /// The severity of triggered alert.
  final String severity;

  /// Creates a new [AlertConfigurationResponse].
  /// [actionGroupIds] Optional list of action group resource IDs to be notified when the alert is triggered.
  /// [description] The alert rule description.
  /// [severity] The severity of triggered alert.
  AlertConfigurationResponse({
    this.actionGroupIds,
    this.description,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupIds': ?actionGroupIds,
      'description': ?description,
      'severity': severity,
    };
  }

  factory AlertConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationResponse(
      actionGroupIds: map['actionGroupIds'] == null ? null : (map['actionGroupIds'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      severity: map['severity'] as String,
    );
  }
}

