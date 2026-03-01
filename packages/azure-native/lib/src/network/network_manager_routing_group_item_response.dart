// ignore_for_file: unused_element, unnecessary_cast


/// Network manager routing group item.
class NetworkManagerRoutingGroupItemResponse {
  /// Network manager group Id.
  final String networkGroupId;

  /// Creates a new [NetworkManagerRoutingGroupItemResponse].
  /// [networkGroupId] Network manager group Id.
  NetworkManagerRoutingGroupItemResponse({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerRoutingGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingGroupItemResponse(
      networkGroupId: map['networkGroupId'] as String,
    );
  }
}

