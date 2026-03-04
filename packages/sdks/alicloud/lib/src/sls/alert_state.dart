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
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            AlertConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'projectName': ?projectName,
      'schedule':
          ?pulumi.Input.mapOptionalInputValue<
            AlertSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AlertState.fromMap(Map<String, dynamic> map) {
    return AlertState(
      alertName: (() {
        final guardedValue = map['alertName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: (() {
        final guardedValue = map['projectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
