// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SAP HANA Linked Service.
class SapHanaLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The authentication type to be used to connect to the SAP HANA server.
  final pulumi.Input<dynamic>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// SAP HANA ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// Password to access the SAP HANA server.
  final pulumi.Input<dynamic>? password;
  /// Host name of the SAP HANA server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;
  /// Type of linked service.
  /// Expected value is 'SapHana'.
  final pulumi.Input<String> type;
  /// Username to access the SAP HANA server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SapHanaLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to be used to connect to the SAP HANA server.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] SAP HANA ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password to access the SAP HANA server.
  /// [server] Host name of the SAP HANA server. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userName] Username to access the SAP HANA server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const SapHanaLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.server,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'server': ?server,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SapHanaLinkedService.fromMap(Map<String, dynamic> map) {
    return SapHanaLinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
