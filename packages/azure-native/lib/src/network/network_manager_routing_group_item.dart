// ignore_for_file: unused_element, unnecessary_cast


/// Network manager routing group item.
class NetworkManagerRoutingGroupItem {
  /// Network manager group Id.
  final String networkGroupId;

  /// Creates a new [NetworkManagerRoutingGroupItem].
  /// [networkGroupId] Network manager group Id.
  NetworkManagerRoutingGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerRoutingGroupItem.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingGroupItem(
      networkGroupId: map['networkGroupId'] as String,
    );
  }
}

