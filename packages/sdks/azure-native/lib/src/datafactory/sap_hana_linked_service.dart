// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SAP HANA Linked Service.
class SapHanaLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication type to be used to connect to the SAP HANA server.
  final pulumi.Input<String>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// SAP HANA ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Password to access the SAP HANA server.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// Host name of the SAP HANA server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;
  /// Type of linked service.
  /// Expected value is 'SapHana'.
  final pulumi.Input<String> type;
  /// Username to access the SAP HANA server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
  SapHanaLinkedService({
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
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'server': ?server,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SapHanaLinkedService.fromMap(Map<String, dynamic> map) {
    return SapHanaLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      server: map['server'] == null ? null : (map['server']!).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

