// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_mljob_response.dart';

class JobScheduleActionResponse {
  /// Expected value is 'CreateJob'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  final pulumi.Input<AutoMLJobResponse> jobBaseProperties;

  /// Creates a new [JobScheduleActionResponse].
  /// [actionType] Expected value is 'CreateJob'.
  /// [jobBaseProperties] [Required] Defines Schedule action definition details.
  JobScheduleActionResponse({
    required this.actionType,
    required this.jobBaseProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'jobBaseProperties': pulumi.Input.mapInputValue<AutoMLJobResponse, Map<String, dynamic>>(jobBaseProperties, (value) => value.toMap()),
    };
  }

  factory JobScheduleActionResponse.fromMap(Map<String, dynamic> map) {
    return JobScheduleActionResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      jobBaseProperties: pulumi.Input.fromValue(AutoMLJobResponse.fromMap((map['jobBaseProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

