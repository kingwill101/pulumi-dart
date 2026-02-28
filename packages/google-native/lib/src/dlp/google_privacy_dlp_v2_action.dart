// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify.dart';
import 'google_privacy_dlp_v2_publish_to_pub_sub.dart';
import 'google_privacy_dlp_v2_save_findings.dart';

/// A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.
class GooglePrivacyDlpV2Action {
  /// Create a de-identified copy of the input data.
  final GooglePrivacyDlpV2Deidentify? deidentify;

  /// Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  final Map<String, dynamic>? jobNotificationEmails;

  /// Publish a notification to a Pub/Sub topic.
  final GooglePrivacyDlpV2PublishToPubSub? pubSub;

  /// Publish findings to Cloud Datahub.
  final Map<String, dynamic>? publishFindingsToCloudDataCatalog;

  /// Publish summary to Cloud Security Command Center (Alpha).
  final Map<String, dynamic>? publishSummaryToCscc;

  /// Enable Stackdriver metric dlp.googleapis.com/finding_count.
  final Map<String, dynamic>? publishToStackdriver;

  /// Save resulting findings in a provided location.
  final GooglePrivacyDlpV2SaveFindings? saveFindings;

  /// Creates a new [GooglePrivacyDlpV2Action].
  /// [deidentify] Create a de-identified copy of the input data.
  /// [jobNotificationEmails] Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  /// [pubSub] Publish a notification to a Pub/Sub topic.
  /// [publishFindingsToCloudDataCatalog] Publish findings to Cloud Datahub.
  /// [publishSummaryToCscc] Publish summary to Cloud Security Command Center (Alpha).
  /// [publishToStackdriver] Enable Stackdriver metric dlp.googleapis.com/finding_count.
  /// [saveFindings] Save resulting findings in a provided location.
  GooglePrivacyDlpV2Action({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToCloudDataCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deidentifyValue = deidentify;
    if (deidentifyValue != null) {
      map['deidentify'] = deidentifyValue.toMap();
    }
    final jobNotificationEmailsValue = jobNotificationEmails;
    if (jobNotificationEmailsValue != null) {
      map['jobNotificationEmails'] = jobNotificationEmailsValue;
    }
    final pubSubValue = pubSub;
    if (pubSubValue != null) {
      map['pubSub'] = pubSubValue.toMap();
    }
    final publishFindingsToCloudDataCatalogValue =
        publishFindingsToCloudDataCatalog;
    if (publishFindingsToCloudDataCatalogValue != null) {
      map['publishFindingsToCloudDataCatalog'] =
          publishFindingsToCloudDataCatalogValue;
    }
    final publishSummaryToCsccValue = publishSummaryToCscc;
    if (publishSummaryToCsccValue != null) {
      map['publishSummaryToCscc'] = publishSummaryToCsccValue;
    }
    final publishToStackdriverValue = publishToStackdriver;
    if (publishToStackdriverValue != null) {
      map['publishToStackdriver'] = publishToStackdriverValue;
    }
    final saveFindingsValue = saveFindings;
    if (saveFindingsValue != null) {
      map['saveFindings'] = saveFindingsValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2Action.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Action(
      deidentify: map['deidentify'] == null
          ? null
          : GooglePrivacyDlpV2Deidentify.fromMap(
              (map['deidentify'] as Map).cast<String, dynamic>()),
      jobNotificationEmails: map['jobNotificationEmails'] == null
          ? null
          : (map['jobNotificationEmails'] as Map).cast<String, dynamic>(),
      pubSub: map['pubSub'] == null
          ? null
          : GooglePrivacyDlpV2PublishToPubSub.fromMap(
              (map['pubSub'] as Map).cast<String, dynamic>()),
      publishFindingsToCloudDataCatalog:
          map['publishFindingsToCloudDataCatalog'] == null
              ? null
              : (map['publishFindingsToCloudDataCatalog'] as Map)
                  .cast<String, dynamic>(),
      publishSummaryToCscc: map['publishSummaryToCscc'] == null
          ? null
          : (map['publishSummaryToCscc'] as Map).cast<String, dynamic>(),
      publishToStackdriver: map['publishToStackdriver'] == null
          ? null
          : (map['publishToStackdriver'] as Map).cast<String, dynamic>(),
      saveFindings: map['saveFindings'] == null
          ? null
          : GooglePrivacyDlpV2SaveFindings.fromMap(
              (map['saveFindings'] as Map).cast<String, dynamic>()),
    );
  }
}
