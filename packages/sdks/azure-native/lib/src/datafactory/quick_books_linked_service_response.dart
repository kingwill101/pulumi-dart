// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// QuickBooks server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class QuickBooksLinkedServiceResponse {
  /// The access token for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? accessToken;
  /// The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  final pulumi.Input<dynamic>? accessTokenSecret;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The company ID of the QuickBooks company to authorize.
  final pulumi.Input<dynamic>? companyId;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  final pulumi.Input<dynamic>? connectionProperties;
  /// The consumer key for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? consumerKey;
  /// The consumer secret for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? consumerSecret;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  final pulumi.Input<dynamic>? endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The refresh token for OAuth 2.0 authentication.
  final pulumi.Input<dynamic>? refreshToken;
  /// Type of linked service.
  /// Expected value is 'QuickBooks'.
  final pulumi.Input<String> type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [QuickBooksLinkedServiceResponse].
  /// [accessToken] The access token for OAuth 2.0 authentication.
  /// [accessTokenSecret] The access token secret is deprecated for OAuth 1.0 authentication. Only used for version 1.0.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [companyId] The company ID of the QuickBooks company to authorize.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to QuickBooks. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [consumerKey] The consumer key for OAuth 2.0 authentication.
  /// [consumerSecret] The consumer secret for OAuth 2.0 authentication.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the QuickBooks server. (i.e. quickbooks.api.intuit.com)
  /// [parameters] Parameters for linked service.
  /// [refreshToken] The refresh token for OAuth 2.0 authentication.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true. Only used for version 1.0.
  /// [version] Version of the linked service.
  const QuickBooksLinkedServiceResponse({
    this.accessToken,
    this.accessTokenSecret,
    this.annotations,
    this.companyId,
    this.connectVia,
    this.connectionProperties,
    this.consumerKey,
    this.consumerSecret,
    this.description,
    this.encryptedCredential,
    this.endpoint,
    this.parameters,
    this.refreshToken,
    required this.type,
    this.useEncryptedEndpoints,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'accessTokenSecret': ?accessTokenSecret,
      'annotations': ?annotations,
      'companyId': ?companyId,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionProperties': ?connectionProperties,
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': ?endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshToken': ?refreshToken,
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'version': ?version,
    };
  }

  factory QuickBooksLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return QuickBooksLinkedServiceResponse(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      accessTokenSecret: (() { final guardedValue = map['accessTokenSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      companyId: (() { final guardedValue = map['companyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      consumerKey: (() { final guardedValue = map['consumerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      consumerSecret: (() { final guardedValue = map['consumerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() { final guardedValue = map['useEncryptedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
