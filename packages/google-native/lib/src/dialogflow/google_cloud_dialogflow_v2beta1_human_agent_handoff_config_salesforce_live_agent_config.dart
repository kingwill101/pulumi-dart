// ignore_for_file: unused_element, unnecessary_cast

/// Configuration specific to Salesforce Live Agent.
class GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig {
  /// Live Agent chat button ID.
  final String buttonId;

  /// Live Agent deployment ID.
  final String deploymentId;

  /// Domain of the Live Agent endpoint for this agent. You can find the endpoint URL in the `Live Agent settings` page. For example if URL has the form https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in d.la4-c2-phx.salesforceliveagent.com.
  final String endpointDomain;

  /// The organization ID of the Salesforce account.
  final String organizationId;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig].
  /// [buttonId] Live Agent chat button ID.
  /// [deploymentId] Live Agent deployment ID.
  /// [endpointDomain] Domain of the Live Agent endpoint for this agent. You can find the endpoint URL in the `Live Agent settings` page. For example if URL has the form https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in d.la4-c2-phx.salesforceliveagent.com.
  /// [organizationId] The organization ID of the Salesforce account.
  GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig({
    required this.buttonId,
    required this.deploymentId,
    required this.endpointDomain,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonId': buttonId,
      'deploymentId': deploymentId,
      'endpointDomain': endpointDomain,
      'organizationId': organizationId,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigSalesforceLiveAgentConfig(
      buttonId: map['buttonId'] as String,
      deploymentId: map['deploymentId'] as String,
      endpointDomain: map['endpointDomain'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
