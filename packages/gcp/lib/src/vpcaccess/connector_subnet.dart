// ignore_for_file: unused_element, unnecessary_cast

class ConnectorSubnet {
  /// Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
  /// https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}"
  final String? name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final String? projectId;

  /// Creates a new [ConnectorSubnet].
  /// [name] Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
  /// [projectId] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  ConnectorSubnet({
    this.name,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory ConnectorSubnet.fromMap(Map<String, dynamic> map) {
    return ConnectorSubnet(
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
