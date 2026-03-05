// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionPhysicalConnectionRequirement {
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<List<String>> securityGroupIdLists;
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetConnectionPhysicalConnectionRequirement].
  /// [availabilityZone] Required.
  /// [securityGroupIdLists] Required.
  /// [subnetId] Required.
  GetConnectionPhysicalConnectionRequirement({
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

