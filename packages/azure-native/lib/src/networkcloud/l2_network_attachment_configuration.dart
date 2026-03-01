// ignore_for_file: unused_element, unnecessary_cast


class L2NetworkAttachmentConfiguration {
  /// The resource ID of the network that is being configured for attachment.
  final String networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final String? pluginType;

  /// Creates a new [L2NetworkAttachmentConfiguration].
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  L2NetworkAttachmentConfiguration({
    required this.networkId,
    this.pluginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory L2NetworkAttachmentConfiguration.fromMap(Map<String, dynamic> map) {
    return L2NetworkAttachmentConfiguration(
      networkId: map['networkId'] as String,
      pluginType: map['pluginType'] == null ? null : map['pluginType'] as String,
    );
  }
}

