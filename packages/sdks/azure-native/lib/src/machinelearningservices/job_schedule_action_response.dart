// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_mljob_response.dart';

class JobScheduleActionResponse {
  /// Expected value is 'CreateJob'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  final pulumi.Input<AutoMLJobResponse> jobDefinition;

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
      'jobDefinition': pulumi.Input.mapInputValue<AutoMLJobResponse, Map<String, dynamic>>(jobDefinition, (value) => value.toMap()),
    };
  }

  factory JobScheduleActionResponse.fromMap(Map<String, dynamic> map) {
    return JobScheduleActionResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      jobDefinition: pulumi.Input.fromValue(AutoMLJobResponse.fromMap((map['jobDefinition']! as Map).cast<String, dynamic>())),
    );
  }
}
