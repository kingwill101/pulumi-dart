// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointAssociationSubnetMapping {
  /// The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  final String? ipAddressType;

  /// The unique identifier for the subnet.
  final String subnetId;

  /// Creates a new [VpcEndpointAssociationSubnetMapping].
  /// [ipAddressType] The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  /// [subnetId] The unique identifier for the subnet.
  VpcEndpointAssociationSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'subnetId': subnetId,
    };
  }

  factory VpcEndpointAssociationSubnetMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcEndpointAssociationSubnetMapping(
      ipAddressType: map['ipAddressType'] == null
          ? null
          : map['ipAddressType'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
