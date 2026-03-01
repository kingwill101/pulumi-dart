// ignore_for_file: unused_element, unnecessary_cast

class ConnectionPhysicalConnectionRequirements {
  /// The availability zone of the connection. This field is redundant and implied by `subnet_id`, but is currently an api requirement.
  final String? availabilityZone;

  /// The security group ID list used by the connection.
  final List<String>? securityGroupIdLists;

  /// The subnet ID used by the connection.
  final String? subnetId;

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
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      securityGroupIdLists: map['securityGroupIdLists'] == null
          ? null
          : (map['securityGroupIdLists'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
