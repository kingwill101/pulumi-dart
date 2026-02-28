// ignore_for_file: unused_element, unnecessary_cast

class GetConnectorSubnet {
  /// Name of the resource.
  ///
  /// - - -
  final String name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final String projectId;

  /// Creates a new [GetConnectorSubnet].
  /// [name] Name of the resource.
  /// [projectId] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  GetConnectorSubnet({
    required this.name,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['projectId'] = projectId;
    return map;
  }

  factory GetConnectorSubnet.fromMap(Map<String, dynamic> map) {
    return GetConnectorSubnet(
      name: map['name'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
