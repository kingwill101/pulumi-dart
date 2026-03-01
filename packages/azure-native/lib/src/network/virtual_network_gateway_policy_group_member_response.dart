// ignore_for_file: unused_element, unnecessary_cast


/// Vpn Client Connection configuration PolicyGroup member
class VirtualNetworkGatewayPolicyGroupMemberResponse {
  /// The Vpn Policy member attribute type.
  final String? attributeType;
  /// The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  final String? attributeValue;
  /// Name of the VirtualNetworkGatewayPolicyGroupMember.
  final String? name;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupMemberResponse].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VirtualNetworkGatewayPolicyGroupMember.
  /// [name] Name of the VirtualNetworkGatewayPolicyGroupMember.
  VirtualNetworkGatewayPolicyGroupMemberResponse({
    this.attributeType,
    this.attributeValue,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeType': ?attributeType,
      'attributeValue': ?attributeValue,
      'name': ?name,
    };
  }

  factory VirtualNetworkGatewayPolicyGroupMemberResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroupMemberResponse(
      attributeType: map['attributeType'] == null ? null : map['attributeType'] as String,
      attributeValue: map['attributeValue'] == null ? null : map['attributeValue'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

