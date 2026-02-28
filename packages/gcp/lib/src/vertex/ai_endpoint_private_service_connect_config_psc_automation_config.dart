// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointPrivateServiceConnectConfigPscAutomationConfig {
  /// (Output)
  /// Error message if the PSC service automation failed.
  final String? errorMessage;

  /// (Output)
  /// Forwarding rule created by the PSC service automation.
  final String? forwardingRule;

  /// (Output)
  /// IP address rule created by the PSC service automation.
  final String? ipAddress;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  final String network;

  /// Project id used to create forwarding rule.
  final String projectId;

  /// (Output)
  /// The state of the PSC service automation.
  final String? state;

  /// Creates a new [AiEndpointPrivateServiceConnectConfigPscAutomationConfig].
  /// [errorMessage] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  /// [projectId] Project id used to create forwarding rule.
  /// [state] (Output)
  AiEndpointPrivateServiceConnectConfigPscAutomationConfig({
    this.errorMessage,
    this.forwardingRule,
    this.ipAddress,
    required this.network,
    required this.projectId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    final forwardingRuleValue = forwardingRule;
    if (forwardingRuleValue != null) {
      map['forwardingRule'] = forwardingRuleValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    map['network'] = network;
    map['projectId'] = projectId;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory AiEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointPrivateServiceConnectConfigPscAutomationConfig(
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
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
