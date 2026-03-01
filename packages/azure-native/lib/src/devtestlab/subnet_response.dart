// ignore_for_file: unused_element, unnecessary_cast


/// Subnet information.
class SubnetResponse {
  /// The permission policy of the subnet for allowing public IP addresses (i.e. Allow, Deny)).
  final String? allowPublicIp;
  /// The name of the subnet as seen in the lab.
  final String? labSubnetName;
  /// The resource ID of the subnet.
  final String? resourceId;

  /// Creates a new [SubnetResponse].
  /// [allowPublicIp] The permission policy of the subnet for allowing public IP addresses (i.e. Allow, Deny)).
  /// [labSubnetName] The name of the subnet as seen in the lab.
  /// [resourceId] The resource ID of the subnet.
  SubnetResponse({
    this.allowPublicIp,
    this.labSubnetName,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicIp': ?allowPublicIp,
      'labSubnetName': ?labSubnetName,
      'resourceId': ?resourceId,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      allowPublicIp: map['allowPublicIp'] == null ? null : map['allowPublicIp'] as String,
      labSubnetName: map['labSubnetName'] == null ? null : map['labSubnetName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

