// ignore_for_file: unused_element, unnecessary_cast

/// The subnet in which to house the connector
class Subnet {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  final String? name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final String? project;

  /// Creates a new [Subnet].
  /// [name] Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}
  /// [project] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  Subnet({
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

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
