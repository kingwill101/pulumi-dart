// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_mljob.dart';

class JobScheduleAction {
  /// Expected value is 'CreateJob'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  final pulumi.Input<AutoMLJob> jobDefinition;

  /// Creates a new [JobScheduleAction].
  /// [actionType] Expected value is 'CreateJob'.
  /// [jobDefinition] [Required] Defines Schedule action definition details.
  const JobScheduleAction({
    required this.actionType,
    required this.jobDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'jobDefinition': pulumi.Input.mapInputValue<AutoMLJob, Map<String, dynamic>>(jobDefinition, (value) => value.toMap()),
    };
  }

  factory JobScheduleAction.fromMap(Map<String, dynamic> map) {
    return JobScheduleAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      jobDefinition: pulumi.Input.fromValue(AutoMLJob.fromMap((map['jobDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}
