// ignore_for_file: unused_element, unnecessary_cast

class PipelineDestinationNetworkConfig {
  /// Name of the NetworkAttachment that allows access to the consumer VPC.
  /// Format:
  /// `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  /// Required for HTTP endpoint destinations. Must not be specified for
  /// Workflows, MessageBus, or Topic destinations.
  final String? networkAttachment;

  /// Creates a new [PipelineDestinationNetworkConfig].
  /// [networkAttachment] Name of the NetworkAttachment that allows access to the consumer VPC.
  PipelineDestinationNetworkConfig({
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkAttachmentValue = networkAttachment;
    if (networkAttachmentValue != null) {
      map['networkAttachment'] = networkAttachmentValue;
    }
    return map;
  }

  factory PipelineDestinationNetworkConfig.fromMap(Map<String, dynamic> map) {
    return PipelineDestinationNetworkConfig(
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
    );
  }
}
