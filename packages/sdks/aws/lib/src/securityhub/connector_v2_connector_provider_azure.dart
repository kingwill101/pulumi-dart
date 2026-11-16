// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_connector_provider_azure_scope_configuration.dart';

class ConnectorV2ConnectorProviderAzure {
  /// ARN of the AWS Config multi-cloud connector used to establish the connection to Azure. See `aws.cfg.Connector`.
  final pulumi.Input<String> awsConfigConnectorArn;
  /// Set of Azure regions to monitor.
  final pulumi.Input<List<String>> azureRegions;
  /// Scope configuration that defines which Azure resources are monitored. See `scopeConfiguration` below.
  final pulumi.Input<ConnectorV2ConnectorProviderAzureScopeConfiguration> scopeConfiguration;

  /// Creates a new [ConnectorV2ConnectorProviderAzure].
  /// [awsConfigConnectorArn] ARN of the AWS Config multi-cloud connector used to establish the connection to Azure. See `aws.cfg.Connector`.
  /// [azureRegions] Set of Azure regions to monitor.
  /// [scopeConfiguration] Scope configuration that defines which Azure resources are monitored. See `scopeConfiguration` below.
  const ConnectorV2ConnectorProviderAzure({
    required this.awsConfigConnectorArn,
    required this.azureRegions,
    required this.scopeConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsConfigConnectorArn': awsConfigConnectorArn,
      'azureRegions': azureRegions,
      'scopeConfiguration': pulumi.Input.mapInputValue<ConnectorV2ConnectorProviderAzureScopeConfiguration, Map<String, dynamic>>(scopeConfiguration, (value) => value.toMap()),
    };
  }

  factory ConnectorV2ConnectorProviderAzure.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProviderAzure(
      awsConfigConnectorArn: pulumi.Input.fromValue(map['awsConfigConnectorArn'] as String),
      azureRegions: pulumi.Input.fromValue((map['azureRegions'] as List).cast<String>()),
      scopeConfiguration: pulumi.Input.fromValue(ConnectorV2ConnectorProviderAzureScopeConfiguration.fromMap((map['scopeConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
