// ignore_for_file: unused_element, unnecessary_cast

class InstanceDesiredAutoCreatedEndpoint {
  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;

  /// (Output)
  /// Output only. The consumer<span pulumi-lang-nodejs=" projectId " pulumi-lang-dotnet=" ProjectId " pulumi-lang-go=" projectId " pulumi-lang-python=" project_id " pulumi-lang-yaml=" projectId " pulumi-lang-java=" projectId "> project_id </span>where the forwarding rule is created from.
  final String projectId;

  InstanceDesiredAutoCreatedEndpoint({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['projectId'] = projectId;
    return map;
  }

  factory InstanceDesiredAutoCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredAutoCreatedEndpoint(
      network: map['network'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
