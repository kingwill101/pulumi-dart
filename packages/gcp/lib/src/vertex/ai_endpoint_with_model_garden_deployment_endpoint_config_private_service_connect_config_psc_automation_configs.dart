// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs {
  /// (Output)
  /// Output only. Error message if the PSC service automation failed.
  final String? errorMessage;

  /// (Output)
  /// Output only. Forwarding rule created by the PSC service automation.
  final String? forwardingRule;

  /// (Output)
  /// Output only. IP address rule created by the PSC service automation.
  final String? ipAddress;

  /// Required. The full name of the Google Compute Engine network.
  /// Format: projects/{project}/global/networks/{network}.
  final String network;

  /// Required. Project id used to create forwarding rule.
  final String projectId;

  /// (Output)
  /// Output only. The state of the PSC service automation.
  final String? state;

  /// Creates a new [AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs].
  /// [errorMessage] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] Required. The full name of the Google Compute Engine network.
  /// [projectId] Required. Project id used to create forwarding rule.
  /// [state] (Output)
  AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs({
    this.errorMessage,
    this.forwardingRule,
    this.ipAddress,
    required this.network,
    required this.projectId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'forwardingRule': ?forwardingRule,
      'ipAddress': ?ipAddress,
      'network': network,
      'projectId': projectId,
      'state': ?state,
    };
  }

  factory AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs(
      errorMessage: map['errorMessage'] == null
          ? null
          : map['errorMessage'] as String,
      forwardingRule: map['forwardingRule'] == null
          ? null
          : map['forwardingRule'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] as String,
      projectId: map['projectId'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
