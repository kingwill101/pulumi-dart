// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration.dart';
import 'alert_schedule.dart';

/// {@template pulumi_sls_alert_alert_args_doc}
/// The set of arguments for Alert.
/// {@endtemplate}
/// {@macro pulumi_sls_alert_alert_args_doc}
class AlertArgs {
  /// Alert rule ID, unique under Project.
  final pulumi.Input<String> alertName;
  /// Detailed configuration of alarm monitoring rules. See `configuration` below.
  final pulumi.Input<AlertConfiguration> configuration;
  /// Compatible fields, set to empty strings.
  final pulumi.Input<String>? description;
  /// Display name of the alarm rule.
  final pulumi.Input<String> displayName;
  /// Project Name.
  final pulumi.Input<String> projectName;
  /// Check the frequency-dependent configuration. See `schedule` below.
  final pulumi.Input<AlertSchedule> schedule;
  /// Resource attribute field representing alarm status.
  final pulumi.Input<String>? status;

  /// Creates a new [AlertArgs].
  /// [alertName] Alert rule ID, unique under Project.
  /// [configuration] Detailed configuration of alarm monitoring rules. See `configuration` below.
  /// [description] Compatible fields, set to empty strings.
  /// [displayName] Display name of the alarm rule.
  /// [projectName] Project Name.
  /// [schedule] Check the frequency-dependent configuration. See `schedule` below.
  /// [status] Resource attribute field representing alarm status.
  const AlertArgs({
    required this.alertName,
    required this.configuration,
    this.description,
    required this.displayName,
    required this.projectName,
    required this.schedule,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertName': alertName,
      'configuration': pulumi.Input.mapInputValue<AlertConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'projectName': projectName,
      'schedule': pulumi.Input.mapInputValue<AlertSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AlertArgs.fromMap(Map<String, dynamic> map) {
    return AlertArgs(
      alertName: pulumi.Input.fromValue(map['alertName'] as String),
      configuration: pulumi.Input.fromValue(AlertConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      schedule: pulumi.Input.fromValue(AlertSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

