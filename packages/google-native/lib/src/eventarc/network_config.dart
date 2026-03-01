// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network config to be used for destination resolution and connectivity.
class NetworkConfig {
  /// Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  final String networkAttachment;

  /// Creates a new [NetworkConfig].
  /// [networkAttachment] Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  NetworkConfig({required this.networkAttachment});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'networkAttachment': networkAttachment};
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(networkAttachment: map['networkAttachment'] as String);
  }
}
