// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkAllowedSubnet {
  /// Indicates if this subnet allows public IP addresses. Possible values are `Allow`, `Default` and `Deny`.
  final String allowPublicIp;
  /// The name of the subnet.
  final String labSubnetName;
  /// The resource identifier for the subnet.
  final String resourceId;

  /// Creates a new [GetVirtualNetworkAllowedSubnet].
  /// [allowPublicIp] Indicates if this subnet allows public IP addresses. Possible values are `Allow`, `Default` and `Deny`.
  /// [labSubnetName] The name of the subnet.
  /// [resourceId] The resource identifier for the subnet.
  GetVirtualNetworkAllowedSubnet({
    required this.allowPublicIp,
    required this.labSubnetName,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicIp': allowPublicIp,
      'labSubnetName': labSubnetName,
      'resourceId': resourceId,
    };
  }

  factory GetVirtualNetworkAllowedSubnet.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkAllowedSubnet(
      allowPublicIp: map['allowPublicIp'] as String,
      labSubnetName: map['labSubnetName'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

