// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration.dart';
import 'alert_schedule.dart';

/// Input properties used for looking up and filtering Alert resources.
class AlertState {
  /// Alert rule ID, unique under Project.
  final pulumi.Input<String>? alertName;
  /// Detailed configuration of alarm monitoring rules. See `configuration` below.
  final pulumi.Input<AlertConfiguration>? configuration;
  /// Alarm rule creation time.
  final pulumi.Input<int>? createTime;
  /// Compatible fields, set to empty strings.
  final pulumi.Input<String>? description;
  /// Display name of the alarm rule.
  final pulumi.Input<String>? displayName;
  /// Project Name.
  final pulumi.Input<String>? projectName;
  /// Check the frequency-dependent configuration. See `schedule` below.
  final pulumi.Input<AlertSchedule>? schedule;
  /// Resource attribute field representing alarm status.
  final pulumi.Input<String>? status;

  /// Creates a new [AlertState].
  /// [alertName] Alert rule ID, unique under Project.
  /// [configuration] Detailed configuration of alarm monitoring rules. See `configuration` below.
  /// [createTime] Alarm rule creation time.
  /// [description] Compatible fields, set to empty strings.
  /// [displayName] Display name of the alarm rule.
  /// [projectName] Project Name.
  /// [schedule] Check the frequency-dependent configuration. See `schedule` below.
  /// [status] Resource attribute field representing alarm status.
  AlertState({
    this.alertName,
    this.configuration,
    this.createTime,
    this.description,
    this.displayName,
    this.projectName,
    this.schedule,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertName': ?alertName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<AlertConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'projectName': ?projectName,
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlertSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AlertState.fromMap(Map<String, dynamic> map) {
    return AlertState(
      alertName: map['alertName'] == null ? null : (map['alertName'] as String).input(),
      configuration: map['configuration'] == null ? null : (AlertConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      schedule: map['schedule'] == null ? null : (AlertSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

