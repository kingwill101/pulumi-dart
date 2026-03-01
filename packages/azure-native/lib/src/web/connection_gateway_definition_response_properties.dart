// ignore_for_file: unused_element, unnecessary_cast

import 'connection_gateway_reference_response.dart';

class ConnectionGatewayDefinitionResponseProperties {
  /// The URI of the backend
  final String? backendUri;
  /// The gateway installation reference
  final ConnectionGatewayReferenceResponse? connectionGatewayInstallation;
  /// The gateway admin
  final List<String>? contactInformation;
  /// The gateway description
  final String? description;
  /// The gateway display name
  final String? displayName;
  /// The machine name of the gateway
  final String? machineName;
  /// The gateway status
  final dynamic status;

  /// Creates a new [ConnectionGatewayDefinitionResponseProperties].
  /// [backendUri] The URI of the backend
  /// [connectionGatewayInstallation] The gateway installation reference
  /// [contactInformation] The gateway admin
  /// [description] The gateway description
  /// [displayName] The gateway display name
  /// [machineName] The machine name of the gateway
  /// [status] The gateway status
  ConnectionGatewayDefinitionResponseProperties({
    this.backendUri,
    this.connectionGatewayInstallation,
    this.contactInformation,
    this.description,
    this.displayName,
    this.machineName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendUri': ?backendUri,
      'connectionGatewayInstallation': ?connectionGatewayInstallation == null ? null : connectionGatewayInstallation!.toMap(),
      'contactInformation': ?contactInformation,
      'description': ?description,
      'displayName': ?displayName,
      'machineName': ?machineName,
      'status': ?status,
    };
  }

  factory ConnectionGatewayDefinitionResponseProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionGatewayDefinitionResponseProperties(
      backendUri: map['backendUri'] == null ? null : map['backendUri'] as String,
      connectionGatewayInstallation: map['connectionGatewayInstallation'] == null ? null : ConnectionGatewayReferenceResponse.fromMap((map['connectionGatewayInstallation'] as Map).cast<String, dynamic>()),
      contactInformation: map['contactInformation'] == null ? null : (map['contactInformation'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      machineName: map['machineName'] == null ? null : map['machineName'] as String,
      status: map['status'] == null ? null : map['status'],
    );
  }
}

