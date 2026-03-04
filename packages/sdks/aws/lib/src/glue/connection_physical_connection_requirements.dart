// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionPhysicalConnectionRequirements {
  /// The availability zone of the connection. This field is redundant and implied by `subnet_id`, but is currently an api requirement.
  final pulumi.Input<String>? availabilityZone;

  /// The security group ID list used by the connection.
  final pulumi.Input<List<String>>? securityGroupIdLists;

  /// The subnet ID used by the connection.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ConnectionPhysicalConnectionRequirements].
  /// [availabilityZone] The availability zone of the connection. This field is redundant and implied by `subnet_id`, but is currently an api requirement.
  /// [securityGroupIdLists] The security group ID list used by the connection.
  /// [subnetId] The subnet ID used by the connection.
  ConnectionPhysicalConnectionRequirements({
    this.availabilityZone,
    this.securityGroupIdLists,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'securityGroupIdLists': ?securityGroupIdLists,
      'subnetId': ?subnetId,
    };
  }

  factory ConnectionPhysicalConnectionRequirements.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionPhysicalConnectionRequirements(
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupIdLists: (() {
        final guardedValue = map['securityGroupIdLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
