// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Alert configuration details
class AlertConfigurationResponse {
  /// Optional list of action group resource IDs to be notified when the alert is triggered.
  final pulumi.Input<List<String>>? actionGroupIds;
  /// The alert rule description.
  final pulumi.Input<String>? description;
  /// The severity of triggered alert.
  final pulumi.Input<String> severity;

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
      actionGroupIds: (() { final guardedValue = map['actionGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

