// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Salesforce Marketing Cloud linked service.
class SalesforceMarketingCloudLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The client ID associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The client secret associated with the Salesforce Marketing Cloud application. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Properties used to connect to Salesforce Marketing Cloud. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'SalesforceMarketingCloud'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [SalesforceMarketingCloudLinkedServiceResponse].
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
  SalesforceMarketingCloudLinkedServiceResponse({
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
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory SalesforceMarketingCloudLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SalesforceMarketingCloudLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']!).input(),
      clientSecret: map['clientSecret'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : (map['useEncryptedEndpoints']!).input(),
      useHostVerification: map['useHostVerification'] == null ? null : (map['useHostVerification']!).input(),
      usePeerVerification: map['usePeerVerification'] == null ? null : (map['usePeerVerification']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

