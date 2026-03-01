// ignore_for_file: unused_element, unnecessary_cast

import 'get_alerts_alert_configuration.dart';
import 'get_alerts_alert_schedule.dart';

class GetAlertsAlert {
  /// Alert rule ID, unique under Project
  final String alertName;
  /// Detailed configuration of alarm monitoring rules
  final GetAlertsAlertConfiguration configuration;
  /// Compatible fields, set to empty strings.
  final String description;
  /// Display name of the alarm rule
  final String displayName;
  /// The ID of the resource supplied above.
  final String id;
  /// Check the frequency-dependent configuration
  final GetAlertsAlertSchedule schedule;

  /// Creates a new [GetAlertsAlert].
  /// [alertName] Alert rule ID, unique under Project
  /// [configuration] Detailed configuration of alarm monitoring rules
  /// [description] Compatible fields, set to empty strings.
  /// [displayName] Display name of the alarm rule
  /// [id] The ID of the resource supplied above.
  /// [schedule] Check the frequency-dependent configuration
  GetAlertsAlert({
    required this.alertName,
    required this.configuration,
    required this.description,
    required this.displayName,
    required this.id,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertName': alertName,
      'configuration': configuration.toMap(),
      'description': description,
      'displayName': displayName,
      'id': id,
      'schedule': schedule.toMap(),
    };
  }

  factory GetAlertsAlert.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlert(
      alertName: map['alertName'] as String,
      configuration: GetAlertsAlertConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      schedule: GetAlertsAlertSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

