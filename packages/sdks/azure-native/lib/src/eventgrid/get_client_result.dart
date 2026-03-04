// ignore_for_file: unused_element, unnecessary_cast

import 'client_certificate_authentication_response.dart';
import 'system_data_response.dart';

/// Result data returned by getClient.
class GetClientResult {
  /// Attributes for the client. Supported values are int, bool, string, string[].
  /// Example:
  /// "attributes": { "room": "345", "floor": 12, "deviceTypes": ["Fan", "Light"] }
  final dynamic attributes;

  /// The name presented by the client for authentication. The default value is the name of the resource.
  final String? authenticationName;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The client certificate authentication information.
  final ClientCertificateAuthenticationResponse?
  clientCertificateAuthentication;

  /// Description for the Client resource.
  final String? description;

  /// Fully qualified identifier of the resource.
  final String id;

  /// Name of the resource.
  final String name;

  /// Provisioning state of the Client resource.
  final String provisioningState;

  /// Indicates if the client is enabled or not. Default value is Enabled.
  final String? state;

  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;

  /// Type of the resource.
  final String type;

  /// Creates a new [GetClientResult].
  /// [attributes] Attributes for the client. Supported values are int, bool, string, string[].
  /// [authenticationName] The name presented by the client for authentication. The default value is the name of the resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientCertificateAuthentication] The client certificate authentication information.
  /// [description] Description for the Client resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the Client resource.
  /// [state] Indicates if the client is enabled or not. Default value is Enabled.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  GetClientResult({
    this.attributes,
    this.authenticationName,
    required this.azureApiVersion,
    this.clientCertificateAuthentication,
    this.description,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.state,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'authenticationName': ?authenticationName,
      'azureApiVersion': azureApiVersion,
      'clientCertificateAuthentication': ?clientCertificateAuthentication
          ?.toMap(),
      'description': ?description,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'state': ?state,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetClientResult.fromMap(Map<String, dynamic> map) {
    return GetClientResult(
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      authenticationName: (() {
        final guardedValue = map['authenticationName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clientCertificateAuthentication: (() {
        final guardedValue = map['clientCertificateAuthentication'];
        if (guardedValue == null) return null;
        return ClientCertificateAuthenticationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
