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
    pulumi.Output<String>? alertName,
    pulumi.Output<AlertConfiguration>? configuration,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? projectName,
    pulumi.Output<AlertSchedule>? schedule,
    pulumi.Output<String>? status,
  }) :
      alertName = pulumi.Input.asOptionalInput<String>(alertName),
      configuration = pulumi.Input.asOptionalInput<AlertConfiguration>(configuration),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      schedule = pulumi.Input.asOptionalInput<AlertSchedule>(schedule),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      alertName: map['alertName'] == null ? null : pulumi.Output.create<String>(map['alertName'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<AlertConfiguration>(AlertConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<AlertSchedule>(AlertSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

