// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_action_details_response.dart';
import 'google_privacy_dlp_v2_analyze_data_source_risk_details_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_data_source_details_response.dart';

/// Result data returned by getDlpJob.
class GetDlpJobResult {
  /// Events that should occur after the job has completed.
  final List<GooglePrivacyDlpV2ActionDetailsResponse> actionDetails;

  /// Time when the job was created.
  final String createTime;

  /// Time when the job finished.
  final String endTime;

  /// A stream of errors encountered running the job.
  final List<GooglePrivacyDlpV2ErrorResponse> errors;

  /// Results from inspecting a data source.
  final GooglePrivacyDlpV2InspectDataSourceDetailsResponse inspectDetails;

  /// If created by a job trigger, the resource name of the trigger that instantiated the job.
  final String jobTriggerName;

  /// Time when the job was last modified by the system.
  final String lastModified;

  /// The server-assigned name.
  final String name;

  /// Results from analyzing risk of a data source.
  final GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse riskDetails;

  /// Time when the job started.
  final String startTime;

  /// State of a job.
  final String state;

  /// The type of job.
  final String type;

  GetDlpJobResult({
    required this.actionDetails,
    required this.createTime,
    required this.endTime,
    required this.errors,
    required this.inspectDetails,
    required this.jobTriggerName,
    required this.lastModified,
    required this.name,
    required this.riskDetails,
    required this.startTime,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionDetails'] = Input.encodeList<
        GooglePrivacyDlpV2ActionDetailsResponse,
        Map<String, dynamic>>(actionDetails, (value) => value.toMap());
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['errors'] =
        Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(
            errors, (value) => value.toMap());
    map['inspectDetails'] = inspectDetails.toMap();
    map['jobTriggerName'] = jobTriggerName;
    map['lastModified'] = lastModified;
    map['name'] = name;
    map['riskDetails'] = riskDetails.toMap();
    map['startTime'] = startTime;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory GetDlpJobResult.fromMap(Map<String, dynamic> map) {
    return GetDlpJobResult(
      actionDetails: Input.decodeList<GooglePrivacyDlpV2ActionDetailsResponse>(
          map['actionDetails'],
          (value) => GooglePrivacyDlpV2ActionDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      errors: Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(
          map['errors'],
          (value) => GooglePrivacyDlpV2ErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inspectDetails:
          GooglePrivacyDlpV2InspectDataSourceDetailsResponse.fromMap(
              (map['inspectDetails'] as Map).cast<String, dynamic>()),
      jobTriggerName: map['jobTriggerName'] as String,
      lastModified: map['lastModified'] as String,
      name: map['name'] as String,
      riskDetails:
          GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse.fromMap(
              (map['riskDetails'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
