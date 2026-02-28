// ignore_for_file: unused_element, unnecessary_cast

class GetTopicIngestionDataSourceSettingConfluentCloud {
  /// The Confluent Cloud bootstrap server. The format is url:port.
  final String bootstrapServer;

  /// The Confluent Cloud cluster ID.
  final String clusterId;

  /// The GCP service account to be used for Federated Identity authentication
  /// with Confluent Cloud.
  final String gcpServiceAccount;

  /// Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  final String identityPoolId;

  /// Name of the Confluent Cloud topic that Pub/Sub will import from.
  final String topic;

  /// Creates a new [GetTopicIngestionDataSourceSettingConfluentCloud].
  /// [bootstrapServer] The Confluent Cloud bootstrap server. The format is url:port.
  /// [clusterId] The Confluent Cloud cluster ID.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [identityPoolId] Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  /// [topic] Name of the Confluent Cloud topic that Pub/Sub will import from.
  GetTopicIngestionDataSourceSettingConfluentCloud({
    required this.bootstrapServer,
    required this.clusterId,
    required this.gcpServiceAccount,
    required this.identityPoolId,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootstrapServer'] = bootstrapServer;
    map['clusterId'] = clusterId;
    map['gcpServiceAccount'] = gcpServiceAccount;
    map['identityPoolId'] = identityPoolId;
    map['topic'] = topic;
    return map;
  }

  factory GetTopicIngestionDataSourceSettingConfluentCloud.fromMap(
      Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingConfluentCloud(
      bootstrapServer: map['bootstrapServer'] as String,
      clusterId: map['clusterId'] as String,
      gcpServiceAccount: map['gcpServiceAccount'] as String,
      identityPoolId: map['identityPoolId'] as String,
      topic: map['topic'] as String,
    );
  }
}
