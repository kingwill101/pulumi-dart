// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet information.
class Subnet {
  /// The permission policy of the subnet for allowing public IP addresses (i.e. Allow, Deny)).
  final pulumi.Input<String>? allowPublicIp;
  /// The name of the subnet as seen in the lab.
  final pulumi.Input<String>? labSubnetName;
  /// The resource ID of the subnet.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [Subnet].
  /// [allowPublicIp] The permission policy of the subnet for allowing public IP addresses (i.e. Allow, Deny)).
  /// [labSubnetName] The name of the subnet as seen in the lab.
  /// [resourceId] The resource ID of the subnet.
  Subnet({
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

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      allowPublicIp: map['allowPublicIp'] == null ? null : (map['allowPublicIp']! as String).input(),
      labSubnetName: map['labSubnetName'] == null ? null : (map['labSubnetName']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

