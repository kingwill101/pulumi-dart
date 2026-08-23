// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionPhysicalConnectionRequirement {
  /// Availability Zone used by the connection.
  final pulumi.Input<String> availabilityZone;
  /// List of security group IDs used by the connection.
  final pulumi.Input<List<String>> securityGroupIdLists;
  /// Subnet ID used by the connection.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetConnectionPhysicalConnectionRequirement].
  /// [availabilityZone] Availability Zone used by the connection.
  /// [securityGroupIdLists] List of security group IDs used by the connection.
  /// [subnetId] Subnet ID used by the connection.
  const GetConnectionPhysicalConnectionRequirement({
    required this.availabilityZone,
    required this.securityGroupIdLists,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'securityGroupIdLists': securityGroupIdLists,
      'subnetId': subnetId,
    };
  }

  factory GetConnectionPhysicalConnectionRequirement.fromMap(Map<String, dynamic> map) {
    return GetConnectionPhysicalConnectionRequirement(
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      securityGroupIdLists: pulumi.Input.fromValue((map['securityGroupIdLists'] as List).cast<String>()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
