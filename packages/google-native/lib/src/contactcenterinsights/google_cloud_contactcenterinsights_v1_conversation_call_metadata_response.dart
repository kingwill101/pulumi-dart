// ignore_for_file: unused_element, unnecessary_cast

/// Call-specific metadata.
class GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse {
  /// The audio channel that contains the agent.
  final int agentChannel;

  /// The audio channel that contains the customer.
  final int customerChannel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse].
  /// [agentChannel] The audio channel that contains the agent.
  /// [customerChannel] The audio channel that contains the customer.
  GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse({
    required this.agentChannel,
    required this.customerChannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentChannel': agentChannel,
      'customerChannel': customerChannel,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse(
      agentChannel: map['agentChannel'] as int,
      customerChannel: map['customerChannel'] as int,
    );
  }
}
