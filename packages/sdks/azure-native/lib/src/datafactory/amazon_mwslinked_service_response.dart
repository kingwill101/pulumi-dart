// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Amazon Marketplace Web Service linked service.
class AmazonMWSLinkedServiceResponse {
  /// The access key id used to access data.
  final pulumi.Input<dynamic> accessKeyId;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The endpoint of the Amazon MWS server, (i.e. mws.amazonservices.com)
  final pulumi.Input<dynamic> endpoint;
  /// The Amazon Marketplace ID you want to retrieve data from. To retrieve data from multiple Marketplace IDs, separate them with a comma (,). (i.e. A2EUQ1WTGCTBG2)
  final pulumi.Input<dynamic> marketplaceID;
  /// The Amazon MWS authentication token.
  final pulumi.Input<dynamic>? mwsAuthToken;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The secret key used to access data.
  final pulumi.Input<dynamic>? secretKey;
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
  final pulumi.Input<String?>? version;

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
  const AmazonMWSLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'marketplaceID': marketplaceID,
      'mwsAuthToken': ?mwsAuthToken,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretKey': ?secretKey,
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
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId']),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
      marketplaceID: pulumi.Input.fromValue(map['marketplaceID']),
      mwsAuthToken: (() { final guardedValue = map['mwsAuthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sellerID: pulumi.Input.fromValue(map['sellerID']),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      useHostVerification: (() { final guardedValue = map['useHostVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      usePeerVerification: (() { final guardedValue = map['usePeerVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
