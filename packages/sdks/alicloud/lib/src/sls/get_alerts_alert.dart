// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alerts_alert_configuration.dart';
import 'get_alerts_alert_schedule.dart';

class GetAlertsAlert {
  /// Alert rule ID, unique under Project
  final pulumi.Input<String> alertName;

  /// Detailed configuration of alarm monitoring rules
  final pulumi.Input<GetAlertsAlertConfiguration> configuration;

  /// Compatible fields, set to empty strings.
  final pulumi.Input<String> description;

  /// Display name of the alarm rule
  final pulumi.Input<String> displayName;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// Check the frequency-dependent configuration
  final pulumi.Input<GetAlertsAlertSchedule> schedule;

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
      'configuration':
          pulumi.Input.mapInputValue<
            GetAlertsAlertConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'id': id,
      'schedule':
          pulumi.Input.mapInputValue<
            GetAlertsAlertSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
    };
  }

  factory GetAlertsAlert.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlert(
      alertName: pulumi.Input.fromValue(map['alertName'] as String),
      configuration: pulumi.Input.fromValue(
        GetAlertsAlertConfiguration.fromMap(
          (map['configuration']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      schedule: pulumi.Input.fromValue(
        GetAlertsAlertSchedule.fromMap(
          (map['schedule']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
