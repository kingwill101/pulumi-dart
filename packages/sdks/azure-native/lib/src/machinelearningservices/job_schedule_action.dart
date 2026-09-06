// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobScheduleAction {
  /// Expected value is 'CreateJob'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  final pulumi.Input<dynamic> jobDefinition;

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
      'jobDefinition': jobDefinition,
    };
  }

  factory JobScheduleAction.fromMap(Map<String, dynamic> map) {
    return JobScheduleAction(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      jobDefinition: pulumi.Input.fromValue(map['jobDefinition']),
    );
  }
}
