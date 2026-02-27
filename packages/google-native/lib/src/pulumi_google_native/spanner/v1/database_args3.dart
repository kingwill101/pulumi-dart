// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'database_database_dialect.dart';
import 'encryption_config15.dart';

/// The set of arguments for Database.
class DatabaseArgs3 {
  /// A `CREATE DATABASE` statement, which specifies the ID of the new database. The database ID must conform to the regular expression `a-z*[a-z0-9]` and be between 2 and 30 characters in length. If the database ID is a reserved word or if it contains a hyphen, the database ID must be enclosed in backticks (`` ` ``).
  final Input<String> createStatement;

  /// Optional. The dialect of the Cloud Spanner Database.
  final Input<DatabaseDatabaseDialect>? databaseDialect;

  /// Optional. The encryption configuration for the database. If this field is not specified, Cloud Spanner will encrypt/decrypt all data at rest using Google default encryption.
  final Input<EncryptionConfig15>? encryptionConfig;

  /// Optional. A list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.
  final Input<List<String>>? extraStatements;
  final Input<String> instanceId;
  final Input<String>? project;

  /// Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements in 'extra_statements' above. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). To generate it, [install](https://grpc.io/docs/protoc-installation/) and run `protoc` with --include_imports and --descriptor_set_out. For example, to generate for moon/shot/app.proto, run """ $protoc --proto_path=/app_path --proto_path=/lib_path \ --include_imports \ --descriptor_set_out=descriptors.data \ moon/shot/app.proto """ For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).
  final Input<String>? protoDescriptors;

  DatabaseArgs3({
    required this.createStatement,
    this.databaseDialect,
    this.encryptionConfig,
    this.extraStatements,
    required this.instanceId,
    this.project,
    this.protoDescriptors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createStatement'] = createStatement;
    final databaseDialectValue = databaseDialect;
    if (databaseDialectValue != null) {
      map['databaseDialect'] =
          Input.mapOptionalInputValue<DatabaseDatabaseDialect, String>(
              databaseDialectValue, (value) => value.value);
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig15, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    final extraStatementsValue = extraStatements;
    if (extraStatementsValue != null) {
      map['extraStatements'] = extraStatementsValue;
    }
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protoDescriptorsValue = protoDescriptors;
    if (protoDescriptorsValue != null) {
      map['protoDescriptors'] = protoDescriptorsValue;
    }
    return map;
  }

  factory DatabaseArgs3.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs3(
      createStatement: Input.asInput<String>(map['createStatement']),
      databaseDialect: Input.asOptionalInput<DatabaseDatabaseDialect>(
          map['databaseDialect']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig15>(map['encryptionConfig']),
      extraStatements:
          Input.asOptionalInput<List<String>>(map['extraStatements']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      protoDescriptors: Input.asOptionalInput<String>(map['protoDescriptors']),
    );
  }
}
