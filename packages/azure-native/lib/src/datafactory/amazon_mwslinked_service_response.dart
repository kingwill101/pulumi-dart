// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Amazon Marketplace Web Service linked service.
class AmazonMWSLinkedServiceResponse {
  /// The access key id used to access data.
  final dynamic accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of the Amazon MWS server, (i.e. mws.amazonservices.com)
  final dynamic endpoint;
  /// The Amazon Marketplace ID you want to retrieve data from. To retrieve data from multiple Marketplace IDs, separate them with a comma (,). (i.e. A2EUQ1WTGCTBG2)
  final dynamic marketplaceID;
  /// The Amazon MWS authentication token.
  final AzureKeyVaultSecretReferenceResponse? mwsAuthToken;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The secret key used to access data.
  final AzureKeyVaultSecretReferenceResponse? secretKey;
  /// The Amazon seller ID.
  final dynamic sellerID;
  /// Type of linked service.
  /// Expected value is 'AmazonMWS'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final dynamic usePeerVerification;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AmazonMWSLinkedServiceResponse].
  /// [accessKeyId] The access key id used to access data.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the Amazon MWS server, (i.e. mws.amazonservices.com)
  /// [marketplaceID] The Amazon Marketplace ID you want to retrieve data from. To retrieve data from multiple Marketplace IDs, separate them with a comma (,). (i.e. A2EUQ1WTGCTBG2)
  /// [mwsAuthToken] The Amazon MWS authentication token.
  /// [parameters] Parameters for linked service.
  /// [secretKey] The secret key used to access data.
  /// [sellerID] The Amazon seller ID.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [version] Version of the linked service.
  AmazonMWSLinkedServiceResponse({
    required this.accessKeyId,
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    required this.marketplaceID,
    this.mwsAuthToken,
    this.parameters,
    this.secretKey,
    required this.sellerID,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'marketplaceID': marketplaceID,
      'mwsAuthToken': ?mwsAuthToken == null ? null : mwsAuthToken!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'secretKey': ?secretKey == null ? null : secretKey!.toMap(),
      'sellerID': sellerID,
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory AmazonMWSLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AmazonMWSLinkedServiceResponse(
      accessKeyId: map['accessKeyId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      endpoint: map['endpoint'],
      marketplaceID: map['marketplaceID'],
      mwsAuthToken: map['mwsAuthToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['mwsAuthToken'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      secretKey: map['secretKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['secretKey'] as Map).cast<String, dynamic>()),
      sellerID: map['sellerID'],
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

