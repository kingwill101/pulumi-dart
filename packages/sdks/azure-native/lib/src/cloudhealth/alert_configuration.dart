// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Alert configuration details
class AlertConfiguration {
  /// Optional list of action group resource IDs to be notified when the alert is triggered.
  final pulumi.Input<List<String>>? actionGroupIds;
  /// The alert rule description.
  final pulumi.Input<String>? description;
  /// The severity of triggered alert.
  final pulumi.Input<String> severity;

  /// Creates a new [AlertConfiguration].
  /// [actionGroupIds] Optional list of action group resource IDs to be notified when the alert is triggered.
  /// [description] The alert rule description.
  /// [severity] The severity of triggered alert.
  AlertConfiguration({
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

  factory AlertConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfiguration(
      actionGroupIds: map['actionGroupIds'] == null ? null : ((map['actionGroupIds']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      severity: (map['severity'] as String).input(),
    );
  }
}

