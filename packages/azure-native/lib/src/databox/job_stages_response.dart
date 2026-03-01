// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_delay_details_response.dart';

/// Job stages.
class JobStagesResponse {
  /// Delay information for the job stages.
  final List<JobDelayDetailsResponse> delayInformation;
  /// Display name of the job stage.
  final String displayName;
  /// Job Stage Details
  final dynamic jobStageDetails;
  /// Name of the job stage.
  final String stageName;
  /// Status of the job stage.
  final String stageStatus;
  /// Time for the job stage in UTC ISO 8601 format.
  final String stageTime;

  /// Creates a new [JobStagesResponse].
  /// [delayInformation] Delay information for the job stages.
  /// [displayName] Display name of the job stage.
  /// [jobStageDetails] Job Stage Details
  /// [stageName] Name of the job stage.
  /// [stageStatus] Status of the job stage.
  /// [stageTime] Time for the job stage in UTC ISO 8601 format.
  JobStagesResponse({
    required this.delayInformation,
    required this.displayName,
    required this.jobStageDetails,
    required this.stageName,
    required this.stageStatus,
    required this.stageTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInformation': pulumi.Input.encodeList<JobDelayDetailsResponse, Map<String, dynamic>>(delayInformation, (value) => value.toMap()),
      'displayName': displayName,
      'jobStageDetails': jobStageDetails,
      'stageName': stageName,
      'stageStatus': stageStatus,
      'stageTime': stageTime,
    };
  }

  factory JobStagesResponse.fromMap(Map<String, dynamic> map) {
    return JobStagesResponse(
      delayInformation: pulumi.Input.decodeList<JobDelayDetailsResponse>(map['delayInformation'], (value) => JobDelayDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      jobStageDetails: map['jobStageDetails'],
      stageName: map['stageName'] as String,
      stageStatus: map['stageStatus'] as String,
      stageTime: map['stageTime'] as String,
    );
  }
}

