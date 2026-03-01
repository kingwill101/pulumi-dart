// ignore_for_file: unused_element, unnecessary_cast


/// VpnServerConfiguration PolicyGroup member
class VpnServerConfigurationPolicyGroupMemberResponse {
  /// The Vpn Policy member attribute type.
  final String? attributeType;
  /// The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  final String? attributeValue;
  /// Name of the VpnServerConfigurationPolicyGroupMember.
  final String? name;

  /// Creates a new [VpnServerConfigurationPolicyGroupMemberResponse].
  /// [attributeType] The Vpn Policy member attribute type.
  /// [attributeValue] The value of Attribute used for this VpnServerConfigurationPolicyGroupMember.
  /// [name] Name of the VpnServerConfigurationPolicyGroupMember.
  VpnServerConfigurationPolicyGroupMemberResponse({
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

  factory VpnServerConfigurationPolicyGroupMemberResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupMemberResponse(
      attributeType: map['attributeType'] == null ? null : map['attributeType'] as String,
      attributeValue: map['attributeValue'] == null ? null : map['attributeValue'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

