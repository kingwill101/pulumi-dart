// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Responsys linked service.
class ResponsysLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The client ID associated with the Responsys application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> clientId;
  /// The client secret associated with the Responsys application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The endpoint of the Responsys server.
  final pulumi.Input<dynamic> endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// Type of linked service.
  /// Expected value is 'Responsys'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [ResponsysLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] The client ID associated with the Responsys application. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret associated with the Responsys application. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the Responsys server.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [version] Version of the linked service.
  const ResponsysLinkedService({
    this.annotations,
    required this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.parameters,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory ResponsysLinkedService.fromMap(Map<String, dynamic> map) {
    return ResponsysLinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId']),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useHostVerification: (() { final guardedValue = map['useHostVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePeerVerification: (() { final guardedValue = map['usePeerVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
