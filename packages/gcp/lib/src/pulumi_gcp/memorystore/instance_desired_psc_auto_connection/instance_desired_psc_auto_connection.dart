// ignore_for_file: unused_element, unnecessary_cast

class InstanceDesiredPscAutoConnection {
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;

  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final String projectId;

  InstanceDesiredPscAutoConnection({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['projectId'] = projectId;
    return map;
  }

  factory InstanceDesiredPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredPscAutoConnection(
      network: map['network'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
