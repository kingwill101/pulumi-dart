// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// ServiceNowV2 server linked service.
class ServiceNowV2LinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication type to use.
  final pulumi.Input<String> authenticationType;
  /// The client id for OAuth2 authentication.
  final pulumi.Input<dynamic>? clientId;
  /// The client secret for OAuth2 authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of the ServiceNowV2 server. (i.e. <instance>.service-now.com)
  final pulumi.Input<dynamic> endpoint;
  /// GrantType for OAuth2 authentication. Default value is password.
  final pulumi.Input<dynamic>? grantType;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password corresponding to the user name for Basic and OAuth2 authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// Type of linked service.
  /// Expected value is 'ServiceNowV2'.
  final pulumi.Input<String> type;
  /// The user name used to connect to the ServiceNowV2 server for Basic and OAuth2 authentication.
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceNowV2LinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to use.
  /// [clientId] The client id for OAuth2 authentication.
  /// [clientSecret] The client secret for OAuth2 authentication.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the ServiceNowV2 server. (i.e. <instance>.service-now.com)
  /// [grantType] GrantType for OAuth2 authentication. Default value is password.
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name for Basic and OAuth2 authentication.
  /// [type] Type of linked service.
  /// [username] The user name used to connect to the ServiceNowV2 server for Basic and OAuth2 authentication.
  /// [version] Version of the linked service.
  ServiceNowV2LinkedServiceResponse({
    this.annotations,
    required this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.grantType,
    this.parameters,
    this.password,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'grantType': ?grantType,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory ServiceNowV2LinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceNowV2LinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']!).input(),
      clientSecret: map['clientSecret'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      endpoint: (map['endpoint']).input(),
      grantType: map['grantType'] == null ? null : (map['grantType']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

