// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Microsoft Access linked service.
class MicrosoftAccessLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Type of authentication used to connect to the Microsoft Access as ODBC data store. Possible values are: Anonymous and Basic. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// The non-access credential portion of the connection string as well as an optional encrypted credential. Type: string, or SecureString, or AzureKeyVaultSecretReference, or Expression with resultType string.
  final pulumi.Input<dynamic> connectionString;
  /// The access credential portion of the connection string specified in driver-specific property-value format.
  final pulumi.Input<dynamic>? credential;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// Password for Basic authentication.
  final pulumi.Input<dynamic>? password;
  /// Type of linked service.
  /// Expected value is 'MicrosoftAccess'.
  final pulumi.Input<String> type;
  /// User name for Basic authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [MicrosoftAccessLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] Type of authentication used to connect to the Microsoft Access as ODBC data store. Possible values are: Anonymous and Basic. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The non-access credential portion of the connection string as well as an optional encrypted credential. Type: string, or SecureString, or AzureKeyVaultSecretReference, or Expression with resultType string.
  /// [credential] The access credential portion of the connection string specified in driver-specific property-value format.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password for Basic authentication.
  /// [type] Type of linked service.
  /// [userName] User name for Basic authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const MicrosoftAccessLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    required this.connectionString,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': connectionString,
      'credential': ?credential,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory MicrosoftAccessLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return MicrosoftAccessLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString']),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
