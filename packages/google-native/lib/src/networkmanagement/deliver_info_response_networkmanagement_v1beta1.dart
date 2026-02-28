// ignore_for_file: unused_element, unnecessary_cast


/// Details of the final state "deliver" and associated resource.
class DeliverInfoResponseNetworkmanagementV1beta1 {
  /// URI of the resource that the packet is delivered to.
  final String resourceUri;
  /// Target type where the packet is delivered to.
  final String target;

  /// Creates a new [DeliverInfoResponseNetworkmanagementV1beta1].
  /// [resourceUri] URI of the resource that the packet is delivered to.
  /// [target] Target type where the packet is delivered to.
  DeliverInfoResponseNetworkmanagementV1beta1({
    required this.resourceUri,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'target': target,
    };
  }

  factory DeliverInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return DeliverInfoResponseNetworkmanagementV1beta1(
      resourceUri: map['resourceUri'] as String,
      target: map['target'] as String,
    );
  }
}

