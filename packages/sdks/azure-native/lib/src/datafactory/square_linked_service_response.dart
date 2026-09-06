// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Square Service linked service.
class SquareLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The client ID associated with your Square application.
  final pulumi.Input<dynamic>? clientId;
  /// The client secret associated with your Square application.
  final pulumi.Input<dynamic>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Properties used to connect to Square. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The URL of the Square instance. (i.e. mystore.mysquare.com)
  final pulumi.Input<dynamic>? host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The redirect URL assigned in the Square application dashboard. (i.e. http://localhost:2500)
  final pulumi.Input<dynamic>? redirectUri;
  /// Type of linked service.
  /// Expected value is 'Square'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SquareLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] The client ID associated with your Square application.
  /// [clientSecret] The client secret associated with your Square application.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to Square. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The URL of the Square instance. (i.e. mystore.mysquare.com)
  /// [parameters] Parameters for linked service.
  /// [redirectUri] The redirect URL assigned in the Square application dashboard. (i.e. http://localhost:2500)
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  const SquareLinkedServiceResponse({
    this.annotations,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.connectionProperties,
    this.description,
    this.encryptedCredential,
    this.host,
    this.parameters,
    this.redirectUri,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': ?host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectUri': ?redirectUri,
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory SquareLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SquareLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useHostVerification: (() { final guardedValue = map['useHostVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePeerVerification: (() { final guardedValue = map['usePeerVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
