// ignore_for_file: unused_element, unnecessary_cast

class TopicIngestionDataSourceSettingsConfluentCloud {
  /// The Confluent Cloud bootstrap server. The format is url:port.
  final String bootstrapServer;

  /// The Confluent Cloud cluster ID.
  final String? clusterId;

  /// The GCP service account to be used for Federated Identity authentication
  /// with Confluent Cloud.
  final String gcpServiceAccount;

  /// Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  final String identityPoolId;

  /// Name of the Confluent Cloud topic that Pub/Sub will import from.
  final String topic;

  /// Creates a new [TopicIngestionDataSourceSettingsConfluentCloud].
  /// [bootstrapServer] The Confluent Cloud bootstrap server. The format is url:port.
  /// [clusterId] The Confluent Cloud cluster ID.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [identityPoolId] Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  /// [topic] Name of the Confluent Cloud topic that Pub/Sub will import from.
  TopicIngestionDataSourceSettingsConfluentCloud({
    required this.bootstrapServer,
    this.clusterId,
    required this.gcpServiceAccount,
    required this.identityPoolId,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapServer': bootstrapServer,
      'clusterId': ?clusterId,
      'gcpServiceAccount': gcpServiceAccount,
      'identityPoolId': identityPoolId,
      'topic': topic,
    };
  }

  factory TopicIngestionDataSourceSettingsConfluentCloud.fromMap(
    Map<String, dynamic> map,
  ) {
    return TopicIngestionDataSourceSettingsConfluentCloud(
      bootstrapServer: map['bootstrapServer'] as String,
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] as String,
      identityPoolId: map['identityPoolId'] as String,
      topic: map['topic'] as String,
    );
  }
}
