// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Amazon Marketplace Web Service linked service.
class AmazonMWSLinkedService {
  /// The access key id used to access data.
  final pulumi.Input<dynamic> accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of the Amazon MWS server, (i.e. mws.amazonservices.com)
  final pulumi.Input<dynamic> endpoint;
  /// The Amazon Marketplace ID you want to retrieve data from. To retrieve data from multiple Marketplace IDs, separate them with a comma (,). (i.e. A2EUQ1WTGCTBG2)
  final pulumi.Input<dynamic> marketplaceID;
  /// The Amazon MWS authentication token.
  final pulumi.Input<AzureKeyVaultSecretReference>? mwsAuthToken;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The secret key used to access data.
  final pulumi.Input<AzureKeyVaultSecretReference>? secretKey;
  /// The Amazon seller ID.
  final pulumi.Input<dynamic> sellerID;
  /// Type of linked service.
  /// Expected value is 'AmazonMWS'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? usePeerVerification;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AmazonMWSLinkedService].
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
  AmazonMWSLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'marketplaceID': marketplaceID,
      'mwsAuthToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(mwsAuthToken, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(secretKey, (value) => value.toMap()),
      'sellerID': sellerID,
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'version': ?version,
    };
  }

  factory AmazonMWSLinkedService.fromMap(Map<String, dynamic> map) {
    return AmazonMWSLinkedService(
      accessKeyId: (map['accessKeyId']).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      endpoint: (map['endpoint']).input(),
      marketplaceID: (map['marketplaceID']).input(),
      mwsAuthToken: map['mwsAuthToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['mwsAuthToken']! as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretKey: map['secretKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['secretKey']! as Map).cast<String, dynamic>())).input(),
      sellerID: (map['sellerID']).input(),
      type: (map['type'] as String).input(),
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : (map['useEncryptedEndpoints']!).input(),
      useHostVerification: map['useHostVerification'] == null ? null : (map['useHostVerification']!).input(),
      usePeerVerification: map['usePeerVerification'] == null ? null : (map['usePeerVerification']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

