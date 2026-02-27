// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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
    final map = <String, dynamic>{};
    final createDispositionValue = createDisposition;
    if (createDispositionValue != null) {
      map['createDisposition'] = createDispositionValue;
    }
    final destinationEncryptionConfigurationValue =
        destinationEncryptionConfiguration;
    if (destinationEncryptionConfigurationValue != null) {
      map['destinationEncryptionConfiguration'] =
          destinationEncryptionConfigurationValue.toMap();
    }
    final destinationExpirationTimeValue = destinationExpirationTime;
    if (destinationExpirationTimeValue != null) {
      map['destinationExpirationTime'] = destinationExpirationTimeValue;
    }
    final destinationTableValue = destinationTable;
    if (destinationTableValue != null) {
      map['destinationTable'] = destinationTableValue.toMap();
    }
    final operationTypeValue = operationType;
    if (operationTypeValue != null) {
      map['operationType'] = operationTypeValue;
    }
    final sourceTableValue = sourceTable;
    if (sourceTableValue != null) {
      map['sourceTable'] = sourceTableValue.toMap();
    }
    final sourceTablesValue = sourceTables;
    if (sourceTablesValue != null) {
      map['sourceTables'] =
          Input.encodeList<TableReference, Map<String, dynamic>>(
              sourceTablesValue, (value) => value.toMap());
    }
    final writeDispositionValue = writeDisposition;
    if (writeDispositionValue != null) {
      map['writeDisposition'] = writeDispositionValue;
    }
    return map;
  }

  factory JobConfigurationTableCopy.fromMap(Map<String, dynamic> map) {
    return JobConfigurationTableCopy(
      createDisposition: map['createDisposition'] == null
          ? null
          : map['createDisposition'] as String,
      destinationEncryptionConfiguration:
          map['destinationEncryptionConfiguration'] == null
              ? null
              : EncryptionConfiguration.fromMap(
                  (map['destinationEncryptionConfiguration'] as Map)
                      .cast<String, dynamic>()),
      destinationExpirationTime: map['destinationExpirationTime'] == null
          ? null
          : map['destinationExpirationTime'],
      destinationTable: map['destinationTable'] == null
          ? null
          : TableReference.fromMap(
              (map['destinationTable'] as Map).cast<String, dynamic>()),
      operationType:
          map['operationType'] == null ? null : map['operationType'] as String,
      sourceTable: map['sourceTable'] == null
          ? null
          : TableReference.fromMap(
              (map['sourceTable'] as Map).cast<String, dynamic>()),
      sourceTables: map['sourceTables'] == null
          ? null
          : Input.decodeList<TableReference>(
              map['sourceTables'],
              (value) => TableReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      writeDisposition: map['writeDisposition'] == null
          ? null
          : map['writeDisposition'] as String,
    );
  }
}
