// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for DB2 data source.
class Db2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// AuthenticationType to be used for connection. It is mutually exclusive with connectionString property.
  final pulumi.Input<dynamic>? authenticationType;
  /// Certificate Common Name when TLS is enabled. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? certificateCommonName;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// The connection string. It is mutually exclusive with server, database, authenticationType, userName, packageCollection and certificateCommonName property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// Database name for connection. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? database;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. It is mutually exclusive with connectionString property. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Under where packages are created when querying database. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packageCollection;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// Password for authentication.
  final pulumi.Input<dynamic>? password;
  /// Server name for connection. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;
  /// Type of linked service.
  /// Expected value is 'Db2'.
  final pulumi.Input<String> type;
  /// Username for authentication. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [Db2LinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] AuthenticationType to be used for connection. It is mutually exclusive with connectionString property.
  /// [certificateCommonName] Certificate Common Name when TLS is enabled. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with server, database, authenticationType, userName, packageCollection and certificateCommonName property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] Database name for connection. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. It is mutually exclusive with connectionString property. Type: string.
  /// [packageCollection] Under where packages are created when querying database. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [server] Server name for connection. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [username] Username for authentication. It is mutually exclusive with connectionString property. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const Db2LinkedService({
    this.annotations,
    this.authenticationType,
    this.certificateCommonName,
    this.connectVia,
    this.connectionString,
    this.database,
    this.description,
    this.encryptedCredential,
    this.packageCollection,
    this.parameters,
    this.password,
    this.server,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'certificateCommonName': ?certificateCommonName,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'packageCollection': ?packageCollection,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'server': ?server,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory Db2LinkedService.fromMap(Map<String, dynamic> map) {
    return Db2LinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      certificateCommonName: (() { final guardedValue = map['certificateCommonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageCollection: (() { final guardedValue = map['packageCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
