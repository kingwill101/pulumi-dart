// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobScheduleActionResponse {
  /// Expected value is 'CreateJob'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  final pulumi.Input<dynamic> jobDefinition;

  /// Creates a new [JobScheduleActionResponse].
  /// [actionType] Expected value is 'CreateJob'.
  /// [jobDefinition] [Required] Defines Schedule action definition details.
  const JobScheduleActionResponse({
    required this.actionType,
    required this.jobDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'jobDefinition': jobDefinition,
    };
  }

  factory JobScheduleActionResponse.fromMap(Map<String, dynamic> map) {
    return JobScheduleActionResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      jobDefinition: pulumi.Input.fromValue(map['jobDefinition']),
    );
  }
}
