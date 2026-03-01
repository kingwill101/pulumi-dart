// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Hubspot Service linked service.
class HubspotLinkedServiceResponse {
  /// The access token obtained when initially authenticating your OAuth integration.
  final AzureKeyVaultSecretReferenceResponse? accessToken;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The client ID associated with your Hubspot application.
  final dynamic clientId;
  /// The client secret associated with your Hubspot application.
  final AzureKeyVaultSecretReferenceResponse? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The refresh token obtained when initially authenticating your OAuth integration.
  final AzureKeyVaultSecretReferenceResponse? refreshToken;
  /// Type of linked service.
  /// Expected value is 'Hubspot'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final dynamic usePeerVerification;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [HubspotLinkedServiceResponse].
  /// [accessToken] The access token obtained when initially authenticating your OAuth integration.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] The client ID associated with your Hubspot application.
  /// [clientSecret] The client secret associated with your Hubspot application.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [refreshToken] The refresh token obtained when initially authenticating your OAuth integration.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  HubspotLinkedServiceResponse({
    this.accessToken,
    this.annotations,
    required this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.refreshToken,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken == null ? null : accessToken!.toMap(),
      'annotations': ?annotations,
      'clientId': clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'refreshToken': ?refreshToken == null ? null : refreshToken!.toMap(),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory HubspotLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HubspotLinkedServiceResponse(
      accessToken: map['accessToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accessToken'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clientId: map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      refreshToken: map['refreshToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['refreshToken'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

