// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Xero Service linked service.
class XeroLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Properties used to connect to Xero. It is mutually exclusive with any other properties in the linked service. Type: object.
  final dynamic connectionProperties;
  /// The consumer key associated with the Xero application.
  final AzureKeyVaultSecretReference? consumerKey;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of the Xero server. (i.e. api.xero.com)
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The private key from the .pem file that was generated for your Xero private application. You must include all the text from the .pem file, including the Unix line endings(
  /// ).
  final AzureKeyVaultSecretReference? privateKey;
  /// Type of linked service.
  /// Expected value is 'Xero'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final dynamic usePeerVerification;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [XeroLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to Xero. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [consumerKey] The consumer key associated with the Xero application.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The endpoint of the Xero server. (i.e. api.xero.com)
  /// [parameters] Parameters for linked service.
  /// [privateKey] The private key from the .pem file that was generated for your Xero private application. You must include all the text from the .pem file, including the Unix line endings(
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  XeroLinkedService({
    this.annotations,
    this.connectVia,
    this.connectionProperties,
    this.consumerKey,
    this.description,
    this.encryptedCredential,
    this.host,
    this.parameters,
    this.privateKey,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionProperties': ?connectionProperties,
      'consumerKey': ?consumerKey == null ? null : consumerKey!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': ?host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'privateKey': ?privateKey == null ? null : privateKey!.toMap(),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory XeroLinkedService.fromMap(Map<String, dynamic> map) {
    return XeroLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionProperties: map['connectionProperties'] == null ? null : map['connectionProperties'],
      consumerKey: map['consumerKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['consumerKey'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'] == null ? null : map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      privateKey: map['privateKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

