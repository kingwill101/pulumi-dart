// ignore_for_file: unused_element, unnecessary_cast

import 'auto_mljob.dart';

class JobScheduleAction {
  /// Expected value is 'CreateJob'.
  final String actionType;
  /// [Required] Defines Schedule action definition details.
  final AutoMLJob jobBaseProperties;

  /// Creates a new [JobScheduleAction].
  /// [actionType] Expected value is 'CreateJob'.
  /// [jobBaseProperties] [Required] Defines Schedule action definition details.
  JobScheduleAction({
    required this.actionType,
    required this.jobBaseProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'jobBaseProperties': jobBaseProperties.toMap(),
    };
  }

  factory JobScheduleAction.fromMap(Map<String, dynamic> map) {
    return JobScheduleAction(
      actionType: map['actionType'] as String,
      jobBaseProperties: AutoMLJob.fromMap((map['jobBaseProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

