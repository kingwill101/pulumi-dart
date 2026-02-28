// ignore_for_file: unused_element, unnecessary_cast

class TriggerDestinationNetworkConfig {
  /// Required. Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  final String networkAttachment;

  /// Creates a new [TriggerDestinationNetworkConfig].
  /// [networkAttachment] Required. Name of the NetworkAttachment that allows access to the destination VPC. Format: `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  TriggerDestinationNetworkConfig({
    required this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAttachment'] = networkAttachment;
    return map;
  }

  factory TriggerDestinationNetworkConfig.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationNetworkConfig(
      networkAttachment: map['networkAttachment'] as String,
    );
  }
}
