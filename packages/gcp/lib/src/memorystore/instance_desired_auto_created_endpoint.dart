// ignore_for_file: unused_element, unnecessary_cast


class InstanceDesiredAutoCreatedEndpoint {
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;
  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final String projectId;

  /// Creates a new [InstanceDesiredAutoCreatedEndpoint].
  /// [network] (Output)
  /// [projectId] (Output)
  InstanceDesiredAutoCreatedEndpoint({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'projectId': projectId,
    };
  }

  factory InstanceDesiredAutoCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredAutoCreatedEndpoint(
      network: map['network'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

