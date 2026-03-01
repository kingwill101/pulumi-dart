// ignore_for_file: unused_element, unnecessary_cast

class AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint {
  /// (Output)
  /// ip Address created by the automated forwarding rule.
  final String? matchAddress;

  /// (Output)
  /// Corresponding network in pscAutomationConfigs.
  final String? network;

  /// (Output)
  /// Corresponding projectId in pscAutomationConfigs
  final String? projectId;

  /// Creates a new [AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint].
  /// [matchAddress] (Output)
  /// [network] (Output)
  /// [projectId] (Output)
  AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint({
    this.matchAddress,
    this.network,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchAddress': ?matchAddress,
      'network': ?network,
      'projectId': ?projectId,
    };
  }

  factory AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint(
      matchAddress: map['matchAddress'] == null
          ? null
          : map['matchAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
