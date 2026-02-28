// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration.dart';
import 'table_reference.dart';

class JobConfigurationTableCopy {
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String? createDisposition;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final EncryptionConfiguration? destinationEncryptionConfiguration;
  /// [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  final dynamic destinationExpirationTime;
  /// [Required] The destination table
  final TableReference? destinationTable;
  /// [Optional] Supported operation types in table copy job.
  final String? operationType;
  /// [Pick one] Source table to copy.
  final TableReference? sourceTable;
  /// [Pick one] Source tables to copy.
  final List<TableReference>? sourceTables;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String? writeDisposition;

  /// Creates a new [JobConfigurationTableCopy].
  /// [createDisposition] [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [destinationExpirationTime] [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  /// [destinationTable] [Required] The destination table
  /// [operationType] [Optional] Supported operation types in table copy job.
  /// [sourceTable] [Pick one] Source table to copy.
  /// [sourceTables] [Pick one] Source tables to copy.
  /// [writeDisposition] [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  JobConfigurationTableCopy({
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationExpirationTime,
    this.destinationTable,
    this.operationType,
    this.sourceTable,
    this.sourceTables,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDisposition': ?createDisposition,
      'destinationEncryptionConfiguration': ?destinationEncryptionConfiguration == null ? null : destinationEncryptionConfiguration!.toMap(),
      'destinationExpirationTime': ?destinationExpirationTime,
      'destinationTable': ?destinationTable == null ? null : destinationTable!.toMap(),
      'operationType': ?operationType,
      'sourceTable': ?sourceTable == null ? null : sourceTable!.toMap(),
      'sourceTables': ?sourceTables == null ? null : pulumi.Input.encodeList<TableReference, Map<String, dynamic>>(sourceTables!, (value) => value.toMap()),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobConfigurationTableCopy.fromMap(Map<String, dynamic> map) {
    return JobConfigurationTableCopy(
      createDisposition: map['createDisposition'] == null ? null : map['createDisposition'] as String,
      destinationEncryptionConfiguration: map['destinationEncryptionConfiguration'] == null ? null : EncryptionConfiguration.fromMap((map['destinationEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      destinationExpirationTime: map['destinationExpirationTime'] == null ? null : map['destinationExpirationTime'],
      destinationTable: map['destinationTable'] == null ? null : TableReference.fromMap((map['destinationTable'] as Map).cast<String, dynamic>()),
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      sourceTable: map['sourceTable'] == null ? null : TableReference.fromMap((map['sourceTable'] as Map).cast<String, dynamic>()),
      sourceTables: map['sourceTables'] == null ? null : pulumi.Input.decodeList<TableReference>(map['sourceTables'], (value) => TableReference.fromMap((value as Map).cast<String, dynamic>())),
      writeDisposition: map['writeDisposition'] == null ? null : map['writeDisposition'] as String,
    );
  }
}

