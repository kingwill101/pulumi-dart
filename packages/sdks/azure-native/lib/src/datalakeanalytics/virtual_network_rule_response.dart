// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Analytics  VirtualNetwork Rule information.
class VirtualNetworkRuleResponse {
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The resource identifier for the subnet
  final String subnetId;
  /// The resource type.
  final String type;
  /// The current state of the VirtualNetwork Rule
  final String virtualNetworkRuleState;

  /// Creates a new [VirtualNetworkRuleResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [subnetId] The resource identifier for the subnet
  /// [type] The resource type.
  /// [virtualNetworkRuleState] The current state of the VirtualNetwork Rule
  VirtualNetworkRuleResponse({
    required this.id,
    required this.name,
    required this.subnetId,
    required this.type,
    required this.virtualNetworkRuleState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
      'type': type,
      'virtualNetworkRuleState': virtualNetworkRuleState,
    };
  }

  factory VirtualNetworkRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
      type: map['type'] as String,
      virtualNetworkRuleState: map['virtualNetworkRuleState'] as String,
    );
  }
}

