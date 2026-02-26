// ignore_for_file: unused_element, unnecessary_cast

/// Represents a network config to be used for destination resolution and connectivity.
class NetworkConfig13 {
  /// Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  final String networkAttachment;

  NetworkConfig13({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAttachment'] = networkAttachment;
    return map;
  }

  factory NetworkConfig13.fromMap(Map<String, dynamic> map) {
    return NetworkConfig13(
      networkAttachment: map['networkAttachment'] as String,
    );
  }
}
