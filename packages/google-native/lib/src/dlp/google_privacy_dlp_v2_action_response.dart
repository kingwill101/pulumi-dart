// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_response.dart';
import 'google_privacy_dlp_v2_publish_to_pub_sub_response.dart';
import 'google_privacy_dlp_v2_save_findings_response.dart';

/// A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.
class GooglePrivacyDlpV2ActionResponse {
  /// Create a de-identified copy of the input data.
  final GooglePrivacyDlpV2DeidentifyResponse deidentify;

  /// Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  final Map<String, dynamic> jobNotificationEmails;

  /// Publish a notification to a Pub/Sub topic.
  final GooglePrivacyDlpV2PublishToPubSubResponse pubSub;

  /// Publish findings to Cloud Datahub.
  final Map<String, dynamic> publishFindingsToCloudDataCatalog;

  /// Publish summary to Cloud Security Command Center (Alpha).
  final Map<String, dynamic> publishSummaryToCscc;

  /// Enable Stackdriver metric dlp.googleapis.com/finding_count.
  final Map<String, dynamic> publishToStackdriver;

  /// Save resulting findings in a provided location.
  final GooglePrivacyDlpV2SaveFindingsResponse saveFindings;

  /// Creates a new [GooglePrivacyDlpV2ActionResponse].
  /// [deidentify] Create a de-identified copy of the input data.
  /// [jobNotificationEmails] Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  /// [pubSub] Publish a notification to a Pub/Sub topic.
  /// [publishFindingsToCloudDataCatalog] Publish findings to Cloud Datahub.
  /// [publishSummaryToCscc] Publish summary to Cloud Security Command Center (Alpha).
  /// [publishToStackdriver] Enable Stackdriver metric dlp.googleapis.com/finding_count.
  /// [saveFindings] Save resulting findings in a provided location.
  GooglePrivacyDlpV2ActionResponse({
    required this.deidentify,
    required this.jobNotificationEmails,
    required this.pubSub,
    required this.publishFindingsToCloudDataCatalog,
    required this.publishSummaryToCscc,
    required this.publishToStackdriver,
    required this.saveFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentify'] = deidentify.toMap();
    map['jobNotificationEmails'] = jobNotificationEmails;
    map['pubSub'] = pubSub.toMap();
    map['publishFindingsToCloudDataCatalog'] =
        publishFindingsToCloudDataCatalog;
    map['publishSummaryToCscc'] = publishSummaryToCscc;
    map['publishToStackdriver'] = publishToStackdriver;
    map['saveFindings'] = saveFindings.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ActionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ActionResponse(
      deidentify: GooglePrivacyDlpV2DeidentifyResponse.fromMap(
          (map['deidentify'] as Map).cast<String, dynamic>()),
      jobNotificationEmails:
          (map['jobNotificationEmails'] as Map).cast<String, dynamic>(),
      pubSub: GooglePrivacyDlpV2PublishToPubSubResponse.fromMap(
          (map['pubSub'] as Map).cast<String, dynamic>()),
      publishFindingsToCloudDataCatalog:
          (map['publishFindingsToCloudDataCatalog'] as Map)
              .cast<String, dynamic>(),
      publishSummaryToCscc:
          (map['publishSummaryToCscc'] as Map).cast<String, dynamic>(),
      publishToStackdriver:
          (map['publishToStackdriver'] as Map).cast<String, dynamic>(),
      saveFindings: GooglePrivacyDlpV2SaveFindingsResponse.fromMap(
          (map['saveFindings'] as Map).cast<String, dynamic>()),
    );
  }
}
