// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Salesforce Marketing Cloud linked service.
class SalesforceMarketingCloudLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The client ID associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  final dynamic clientId;
  /// The client secret associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Properties used to connect to Salesforce Marketing Cloud. It is mutually exclusive with any other properties in the linked service. Type: object.
  final dynamic connectionProperties;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Type of linked service.
  /// Expected value is 'SalesforceMarketingCloud'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic usePeerVerification;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [SalesforceMarketingCloudLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] The client ID associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to Salesforce Marketing Cloud. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [version] Version of the linked service.
  SalesforceMarketingCloudLinkedService({
    this.annotations,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.connectionProperties,
    this.description,
    this.encryptedCredential,
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
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory SalesforceMarketingCloudLinkedService.fromMap(Map<String, dynamic> map) {
    return SalesforceMarketingCloudLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionProperties: map['connectionProperties'] == null ? null : map['connectionProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

