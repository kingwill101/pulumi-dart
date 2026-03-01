// ignore_for_file: unused_element, unnecessary_cast

class GetConnectionPhysicalConnectionRequirement {
  final String availabilityZone;
  final List<String> securityGroupIdLists;
  final String subnetId;

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

  factory GetConnectionPhysicalConnectionRequirement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectionPhysicalConnectionRequirement(
      availabilityZone: map['availabilityZone'] as String,
      securityGroupIdLists: (map['securityGroupIdLists'] as List)
          .cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}
