// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Marketo server linked service.
class MarketoLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The client Id of your Marketo service.
  final pulumi.Input<dynamic> clientId;
  /// The client secret of your Marketo service.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of the Marketo server. (i.e. 123-ABC-321.mktorest.com)
  final pulumi.Input<dynamic> endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'Marketo'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [MarketoLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] The client Id of your Marketo service.
  /// [clientSecret] The client secret of your Marketo service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the Marketo server. (i.e. 123-ABC-321.mktorest.com)
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  const MarketoLinkedServiceResponse({
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
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory MarketoLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return MarketoLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId']),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useHostVerification: (() { final guardedValue = map['useHostVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePeerVerification: (() { final guardedValue = map['usePeerVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
