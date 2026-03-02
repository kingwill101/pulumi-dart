// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce {
  final pulumi.Input<String>? instanceUrl;
  /// Indicates whether the connector profile applies to a sandbox or production environment.
  final pulumi.Input<bool>? isSandboxEnvironment;
  /// Indicates whether Amazon AppFlow uses the private network to send metadata and authorization calls to Salesforce. Amazon AppFlow sends private calls through AWS PrivateLink. These calls travel through AWS infrastructure without being exposed to the public internet.
  final pulumi.Input<bool>? usePrivatelinkForMetadataAndAuthorization;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce].
  /// [instanceUrl] Optional.
  /// [isSandboxEnvironment] Indicates whether the connector profile applies to a sandbox or production environment.
  /// [usePrivatelinkForMetadataAndAuthorization] Indicates whether Amazon AppFlow uses the private network to send metadata and authorization calls to Salesforce. Amazon AppFlow sends private calls through AWS PrivateLink. These calls travel through AWS infrastructure without being exposed to the public internet.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce({
    this.instanceUrl,
    this.isSandboxEnvironment,
    this.usePrivatelinkForMetadataAndAuthorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': ?instanceUrl,
      'isSandboxEnvironment': ?isSandboxEnvironment,
      'usePrivatelinkForMetadataAndAuthorization': ?usePrivatelinkForMetadataAndAuthorization,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce(
      instanceUrl: map['instanceUrl'] == null ? null : (map['instanceUrl'] as String).input(),
      isSandboxEnvironment: map['isSandboxEnvironment'] == null ? null : (map['isSandboxEnvironment'] as bool).input(),
      usePrivatelinkForMetadataAndAuthorization: map['usePrivatelinkForMetadataAndAuthorization'] == null ? null : (map['usePrivatelinkForMetadataAndAuthorization'] as bool).input(),
    );
  }
}

