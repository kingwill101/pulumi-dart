// ignore_for_file: unused_element, unnecessary_cast

/// Details of the final state "deliver" and associated resource.
class DeliverInfoResponse {
  /// URI of the resource that the packet is delivered to.
  final String resourceUri;

  /// Target type where the packet is delivered to.
  final String target;

  /// Creates a new [DeliverInfoResponse].
  /// [resourceUri] URI of the resource that the packet is delivered to.
  /// [target] Target type where the packet is delivered to.
  DeliverInfoResponse({required this.resourceUri, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceUri': resourceUri, 'target': target};
  }

  factory DeliverInfoResponse.fromMap(Map<String, dynamic> map) {
    return DeliverInfoResponse(
      resourceUri: map['resourceUri'] as String,
      target: map['target'] as String,
    );
  }
}
