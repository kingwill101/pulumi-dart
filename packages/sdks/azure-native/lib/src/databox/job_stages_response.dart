// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_delay_details_response.dart';

/// Job stages.
class JobStagesResponse {
  /// Delay information for the job stages.
  final pulumi.Input<List<JobDelayDetailsResponse>> delayInformation;
  /// Display name of the job stage.
  final pulumi.Input<String> displayName;
  /// Job Stage Details
  final pulumi.Input<dynamic> jobStageDetails;
  /// Name of the job stage.
  final pulumi.Input<String> stageName;
  /// Status of the job stage.
  final pulumi.Input<String> stageStatus;
  /// Time for the job stage in UTC ISO 8601 format.
  final pulumi.Input<String> stageTime;

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
      'delayInformation': pulumi.Input.mapInputValue<List<JobDelayDetailsResponse>, List<Map<String, dynamic>>>(delayInformation, (value) => pulumi.Input.encodeList<JobDelayDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'jobStageDetails': jobStageDetails,
      'stageName': stageName,
      'stageStatus': stageStatus,
      'stageTime': stageTime,
    };
  }

  factory JobStagesResponse.fromMap(Map<String, dynamic> map) {
    return JobStagesResponse(
      delayInformation: (pulumi.Input.decodeList<JobDelayDetailsResponse>(map['delayInformation'], (value) => JobDelayDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: (map['displayName'] as String).input(),
      jobStageDetails: (map['jobStageDetails']).input(),
      stageName: (map['stageName'] as String).input(),
      stageStatus: (map['stageStatus'] as String).input(),
      stageTime: (map['stageTime'] as String).input(),
    );
  }
}

