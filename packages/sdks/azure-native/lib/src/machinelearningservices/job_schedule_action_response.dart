// ignore_for_file: unused_element, unnecessary_cast

import 'auto_mljob_response.dart';

class JobScheduleActionResponse {
  /// Expected value is 'CreateJob'.
  final String actionType;
  /// [Required] Defines Schedule action definition details.
  final AutoMLJobResponse jobBaseProperties;

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
      'jobBaseProperties': jobBaseProperties.toMap(),
    };
  }

  factory JobScheduleActionResponse.fromMap(Map<String, dynamic> map) {
    return JobScheduleActionResponse(
      actionType: map['actionType'] as String,
      jobBaseProperties: AutoMLJobResponse.fromMap((map['jobBaseProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

