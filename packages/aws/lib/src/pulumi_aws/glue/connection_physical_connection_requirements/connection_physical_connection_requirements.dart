// ignore_for_file: unused_element, unnecessary_cast

class ConnectionPhysicalConnectionRequirements {
  /// The availability zone of the connection. This field is redundant and implied by <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>, but is currently an api requirement.
  final String? availabilityZone;

  /// The security group ID list used by the connection.
  final List<String>? securityGroupIdLists;

  /// The subnet ID used by the connection.
  final String? subnetId;

  ConnectionPhysicalConnectionRequirements({
    this.availabilityZone,
    this.securityGroupIdLists,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final securityGroupIdListsValue = securityGroupIdLists;
    if (securityGroupIdListsValue != null) {
      map['securityGroupIdLists'] = securityGroupIdListsValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory ConnectionPhysicalConnectionRequirements.fromMap(
      Map<String, dynamic> map) {
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
