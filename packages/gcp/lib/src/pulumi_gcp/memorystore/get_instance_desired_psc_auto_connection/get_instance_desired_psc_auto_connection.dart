// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceDesiredPscAutoConnection {
  /// Required. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;

  /// Required. The consumer project_id where the forwarding rule is created from.
  final String projectId;

  GetInstanceDesiredPscAutoConnection({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['projectId'] = projectId;
    return map;
  }

  factory GetInstanceDesiredPscAutoConnection.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceDesiredPscAutoConnection(
      network: map['network'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
