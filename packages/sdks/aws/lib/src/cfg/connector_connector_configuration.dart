// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_connector_configuration_azure.dart';

class ConnectorConnectorConfiguration {
  /// Configuration for an Azure connector. See `azure` Block below.
  final pulumi.Input<ConnectorConnectorConfigurationAzure?>? azure;

  /// Creates a new [ConnectorConnectorConfiguration].
  /// [azure] Configuration for an Azure connector. See `azure` Block below.
  const ConnectorConnectorConfiguration({
    this.azure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azure': ?pulumi.Input.mapOptionalInputValue<ConnectorConnectorConfigurationAzure, Map<String, dynamic>>(azure, (value) => value.toMap()),
    };
  }

  factory ConnectorConnectorConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectorConnectorConfiguration(
      azure: (() { final guardedValue = map['azure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorConnectorConfigurationAzure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
