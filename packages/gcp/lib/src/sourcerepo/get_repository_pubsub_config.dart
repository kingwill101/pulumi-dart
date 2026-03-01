// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryPubsubConfig {
  /// The format of the Cloud Pub/Sub messages.
  /// - PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
  /// - JSON: The message payload is a JSON string of SourceRepoEvent. Possible values: ["PROTOBUF", "JSON"]
  final String messageFormat;

  /// Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// This service account needs to be in the same project as the PubsubConfig. When added,
  /// the caller needs to have iam.serviceAccounts.actAs permission on this service account.
  /// If unspecified, it defaults to the compute engine default service account.
  final String serviceAccountEmail;
  final String topic;

  /// Creates a new [GetRepositoryPubsubConfig].
  /// [messageFormat] The format of the Cloud Pub/Sub messages.
  /// [serviceAccountEmail] Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// [topic] Required.
  GetRepositoryPubsubConfig({
    required this.messageFormat,
    required this.serviceAccountEmail,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': messageFormat,
      'serviceAccountEmail': serviceAccountEmail,
      'topic': topic,
    };
  }

  factory GetRepositoryPubsubConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryPubsubConfig(
      messageFormat: map['messageFormat'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      topic: map['topic'] as String,
    );
  }
}
