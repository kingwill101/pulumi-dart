// ignore_for_file: unused_element, unnecessary_cast

/// Call-specific metadata.
class GoogleCloudContactcenterinsightsV1ConversationCallMetadata {
  /// The audio channel that contains the agent.
  final int? agentChannel;

  /// The audio channel that contains the customer.
  final int? customerChannel;

  GoogleCloudContactcenterinsightsV1ConversationCallMetadata({
    this.agentChannel,
    this.customerChannel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentChannelValue = agentChannel;
    if (agentChannelValue != null) {
      map['agentChannel'] = agentChannelValue;
    }
    final customerChannelValue = customerChannel;
    if (customerChannelValue != null) {
      map['customerChannel'] = customerChannelValue;
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationCallMetadata(
      agentChannel:
          map['agentChannel'] == null ? null : map['agentChannel'] as int,
      customerChannel:
          map['customerChannel'] == null ? null : map['customerChannel'] as int,
    );
  }
}
