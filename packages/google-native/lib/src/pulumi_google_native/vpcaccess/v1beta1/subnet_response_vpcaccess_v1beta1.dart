// ignore_for_file: unused_element, unnecessary_cast

/// The subnet in which to house the connector
class SubnetResponseVpcaccessV1beta1 {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  final String name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final String project;

  SubnetResponseVpcaccessV1beta1({
    required this.name,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['project'] = project;
    return map;
  }

  factory SubnetResponseVpcaccessV1beta1.fromMap(Map<String, dynamic> map) {
    return SubnetResponseVpcaccessV1beta1(
      name: map['name'] as String,
      project: map['project'] as String,
    );
  }
}
