// ignore_for_file: unused_element, unnecessary_cast


/// Network manager security group item.
class NetworkManagerSecurityGroupItem {
  /// Network manager group Id.
  final String networkGroupId;

  /// Creates a new [NetworkManagerSecurityGroupItem].
  /// [networkGroupId] Network manager group Id.
  NetworkManagerSecurityGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory NetworkManagerSecurityGroupItem.fromMap(Map<String, dynamic> map) {
    return NetworkManagerSecurityGroupItem(
      networkGroupId: map['networkGroupId'] as String,
    );
  }
}

