// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_database_dialect.dart';
import 'encryption_config.dart';

/// {@template pulumi_spanner_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_database_args_doc}
class DatabaseArgs {
  /// A `CREATE DATABASE` statement, which specifies the ID of the new database. The database ID must conform to the regular expression `a-z*[a-z0-9]` and be between 2 and 30 characters in length. If the database ID is a reserved word or if it contains a hyphen, the database ID must be enclosed in backticks (`` ` ``).
  final pulumi.Input<String> createStatement;

  /// Optional. The dialect of the Cloud Spanner Database.
  final pulumi.Input<DatabaseDatabaseDialect>? databaseDialect;

  /// Optional. The encryption configuration for the database. If this field is not specified, Cloud Spanner will encrypt/decrypt all data at rest using Google default encryption.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;

  /// Optional. A list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.
  final pulumi.Input<List<String>>? extraStatements;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements in 'extra_statements' above. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). To generate it, [install](https://grpc.io/docs/protoc-installation/) and run `protoc` with --include_imports and --descriptor_set_out. For example, to generate for moon/shot/app.proto, run """ $protoc --proto_path=/app_path --proto_path=/lib_path \ --include_imports \ --descriptor_set_out=descriptors.data \ moon/shot/app.proto """ For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).
  final pulumi.Input<String>? protoDescriptors;

  /// Creates a new [DatabaseArgs].
  /// [createStatement] A `CREATE DATABASE` statement, which specifies the ID of the new database. The database ID must conform to the regular expression `a-z*[a-z0-9]` and be between 2 and 30 characters in length. If the database ID is a reserved word or if it contains a hyphen, the database ID must be enclosed in backticks (`` ` ``).
  /// [databaseDialect] Optional. The dialect of the Cloud Spanner Database.
  /// [encryptionConfig] Optional. The encryption configuration for the database. If this field is not specified, Cloud Spanner will encrypt/decrypt all data at rest using Google default encryption.
  /// [extraStatements] Optional. A list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.
  /// [instanceId] Required.
  /// [project] Optional.
  /// [protoDescriptors] Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements in 'extra_statements' above. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). To generate it, [install](https://grpc.io/docs/protoc-installation/) and run `protoc` with --include_imports and --descriptor_set_out. For example, to generate for moon/shot/app.proto, run """ $protoc --proto_path=/app_path --proto_path=/lib_path \ --include_imports \ --descriptor_set_out=descriptors.data \ moon/shot/app.proto """ For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).
  DatabaseArgs({
    required String createStatement,
    DatabaseDatabaseDialect? databaseDialect,
    EncryptionConfig? encryptionConfig,
    List<String>? extraStatements,
    required String instanceId,
    String? project,
    String? protoDescriptors,
  }) : createStatement = pulumi.Input.asInput<String>(createStatement),
       databaseDialect = pulumi.Input.asOptionalInput<DatabaseDatabaseDialect>(
         databaseDialect,
       ),
       encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(
         encryptionConfig,
       ),
       extraStatements = pulumi.Input.asOptionalInput<List<String>>(
         extraStatements,
       ),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project),
       protoDescriptors = pulumi.Input.asOptionalInput<String>(
         protoDescriptors,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createStatement': createStatement,
      'databaseDialect':
          ?pulumi.Input.mapOptionalInputValue<DatabaseDatabaseDialect, String>(
            databaseDialect,
            (value) => value.value,
          ),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'extraStatements': ?extraStatements,
      'instanceId': instanceId,
      'project': ?project,
      'protoDescriptors': ?protoDescriptors,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      createStatement: map['createStatement'] as String,
      databaseDialect: map['databaseDialect'] == null
          ? null
          : DatabaseDatabaseDialect.fromValue(map['databaseDialect'] as String),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      extraStatements: map['extraStatements'] == null
          ? null
          : (map['extraStatements'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protoDescriptors: map['protoDescriptors'] == null
          ? null
          : map['protoDescriptors'] as String,
    );
  }
}
