// ignore_for_file: unused_element, unnecessary_cast


class GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration {
  /// Indicates whether the job has a public IP address.
  final bool assignPublicIp;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration].
  /// [assignPublicIp] Indicates whether the job has a public IP address.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration({
    required this.assignPublicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': assignPublicIp,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] as bool,
    );
  }
}

