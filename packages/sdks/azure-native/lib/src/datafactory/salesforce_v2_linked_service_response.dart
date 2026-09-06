// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Salesforce V2.
class SalesforceV2LinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The Salesforce API version used in ADF. The version must be larger than or equal to 47.0 which is required by Salesforce BULK API 2.0. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? apiVersion;
  /// The authentication type to be used to connect to the Salesforce. Currently, we only support OAuth2ClientCredentials, it is also the default value
  final pulumi.Input<dynamic>? authenticationType;
  /// The client Id for OAuth 2.0 Client Credentials Flow authentication of the Salesforce instance. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The client secret for OAuth 2.0 Client Credentials Flow authentication of the Salesforce instance.
  final pulumi.Input<dynamic>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The URL of Salesforce instance. For example, 'https://[domain].my.salesforce.com'. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? environmentUrl;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// Type of linked service.
  /// Expected value is 'SalesforceV2'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SalesforceV2LinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiVersion] The Salesforce API version used in ADF. The version must be larger than or equal to 47.0 which is required by Salesforce BULK API 2.0. Type: string (or Expression with resultType string).
  /// [authenticationType] The authentication type to be used to connect to the Salesforce. Currently, we only support OAuth2ClientCredentials, it is also the default value
  /// [clientId] The client Id for OAuth 2.0 Client Credentials Flow authentication of the Salesforce instance. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret for OAuth 2.0 Client Credentials Flow authentication of the Salesforce instance.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [environmentUrl] The URL of Salesforce instance. For example, 'https://[domain].my.salesforce.com'. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const SalesforceV2LinkedServiceResponse({
    this.annotations,
    this.apiVersion,
    this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.environmentUrl,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiVersion': ?apiVersion,
      'authenticationType': ?authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'environmentUrl': ?environmentUrl,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
    };
  }

  factory SalesforceV2LinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SalesforceV2LinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentUrl: (() { final guardedValue = map['environmentUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
