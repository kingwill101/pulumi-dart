// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointAssociationSubnetMapping {
  /// The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  final String? ipAddressType;

  /// The unique identifier for the subnet.
  final String subnetId;

  VpcEndpointAssociationSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory VpcEndpointAssociationSubnetMapping.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointAssociationSubnetMapping(
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
