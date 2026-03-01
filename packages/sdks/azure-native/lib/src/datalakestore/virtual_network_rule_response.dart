// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Store virtual network rule information.
class VirtualNetworkRuleResponse {
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The resource identifier for the subnet.
  final String subnetId;
  /// The resource type.
  final String type;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet.
  /// [type] The resource type.
  VirtualNetworkRuleResponse({
    required this.id,
    required this.name,
    required this.subnetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
      'type': type,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
      type: map['type'] as String,
    );
  }
}

