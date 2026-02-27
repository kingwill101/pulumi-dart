// ignore_for_file: unused_element, unnecessary_cast

/// The subnet in which to house the connector
class SubnetVpcaccessV1beta1 {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  final String? name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final String? project;

  SubnetVpcaccessV1beta1({
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SubnetVpcaccessV1beta1.fromMap(Map<String, dynamic> map) {
    return SubnetVpcaccessV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
