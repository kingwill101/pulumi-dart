// ignore_for_file: unused_element, unnecessary_cast

class GetTopicIngestionDataSourceSettingAwsMsk {
  /// AWS role ARN to be used for Federated Identity authentication with
  /// MSK. Check the Pub/Sub docs for how to set up this role and the
  /// required permissions that need to be attached to it.
  final String awsRoleArn;

  /// ARN that uniquely identifies the MSK cluster.
  final String clusterArn;

  /// The GCP service account to be used for Federated Identity authentication
  /// with MSK (via a 'AssumeRoleWithWebIdentity' call for the provided
  /// role). The 'awsRoleArn' must be set up with 'accounts.google.com:sub'
  /// equals to this service account number.
  final String gcpServiceAccount;

  /// The name of the MSK topic that Pub/Sub will import from.
  final String topic;

  /// Creates a new [GetTopicIngestionDataSourceSettingAwsMsk].
  /// [awsRoleArn] AWS role ARN to be used for Federated Identity authentication with
  /// [clusterArn] ARN that uniquely identifies the MSK cluster.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [topic] The name of the MSK topic that Pub/Sub will import from.
  GetTopicIngestionDataSourceSettingAwsMsk({
    required this.awsRoleArn,
    required this.clusterArn,
    required this.gcpServiceAccount,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'clusterArn': clusterArn,
      'gcpServiceAccount': gcpServiceAccount,
      'topic': topic,
    };
  }

  factory GetTopicIngestionDataSourceSettingAwsMsk.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTopicIngestionDataSourceSettingAwsMsk(
      awsRoleArn: map['awsRoleArn'] as String,
      clusterArn: map['clusterArn'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] as String,
      topic: map['topic'] as String,
    );
  }
}
