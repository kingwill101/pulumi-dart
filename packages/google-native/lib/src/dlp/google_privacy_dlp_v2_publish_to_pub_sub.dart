// ignore_for_file: unused_element, unnecessary_cast

/// Publish a message into a given Pub/Sub topic when DlpJob has completed. The message contains a single field, `DlpJobName`, which is equal to the finished job's [`DlpJob.name`](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk
class GooglePrivacyDlpV2PublishToPubSub {
  /// Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects/{project}/topics/{topic}.
  final String? topic;

  /// Creates a new [GooglePrivacyDlpV2PublishToPubSub].
  /// [topic] Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects/{project}/topics/{topic}.
  GooglePrivacyDlpV2PublishToPubSub({this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': ?topic};
  }

  factory GooglePrivacyDlpV2PublishToPubSub.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PublishToPubSub(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
