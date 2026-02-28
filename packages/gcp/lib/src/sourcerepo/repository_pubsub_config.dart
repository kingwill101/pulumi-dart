// ignore_for_file: unused_element, unnecessary_cast

class RepositoryPubsubConfig {
  /// The format of the Cloud Pub/Sub messages.
  /// - PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
  /// - JSON: The message payload is a JSON string of SourceRepoEvent.
  /// Possible values are: `PROTOBUF`, `JSON`.
  final String messageFormat;

  /// Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// This service account needs to be in the same project as the PubsubConfig. When added,
  /// the caller needs to have iam.serviceAccounts.actAs permission on this service account.
  /// If unspecified, it defaults to the compute engine default service account.
  final String? serviceAccountEmail;

  /// The identifier for this object. Format specified above.
  final String topic;

  /// Creates a new [RepositoryPubsubConfig].
  /// [messageFormat] The format of the Cloud Pub/Sub messages.
  /// [serviceAccountEmail] Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// [topic] The identifier for this object. Format specified above.
  RepositoryPubsubConfig({
    required this.messageFormat,
    this.serviceAccountEmail,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageFormat'] = messageFormat;
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory RepositoryPubsubConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryPubsubConfig(
      messageFormat: map['messageFormat'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      topic: map['topic'] as String,
    );
  }
}
