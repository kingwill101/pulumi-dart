// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration {
  /// Indicates whether the job has a public IP address.
  final bool assignPublicIp;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration({
    required this.assignPublicIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignPublicIp'] = assignPublicIp;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] as bool,
    );
  }
}
