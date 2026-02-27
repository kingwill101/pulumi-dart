// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'encryption_configuration_response.dart';
import 'table_reference_response.dart';

class JobConfigurationTableCopyResponse {
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String createDisposition;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final EncryptionConfigurationResponse destinationEncryptionConfiguration;

  /// [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  final dynamic destinationExpirationTime;

  /// [Required] The destination table
  final TableReferenceResponse destinationTable;

  /// [Optional] Supported operation types in table copy job.
  final String operationType;

  /// [Pick one] Source table to copy.
  final TableReferenceResponse sourceTable;

  /// [Pick one] Source tables to copy.
  final List<TableReferenceResponse> sourceTables;

  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final String writeDisposition;

  JobConfigurationTableCopyResponse({
    required this.createDisposition,
    required this.destinationEncryptionConfiguration,
    required this.destinationExpirationTime,
    required this.destinationTable,
    required this.operationType,
    required this.sourceTable,
    required this.sourceTables,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createDisposition'] = createDisposition;
    map['destinationEncryptionConfiguration'] =
        destinationEncryptionConfiguration.toMap();
    map['destinationExpirationTime'] = destinationExpirationTime;
    map['destinationTable'] = destinationTable.toMap();
    map['operationType'] = operationType;
    map['sourceTable'] = sourceTable.toMap();
    map['sourceTables'] =
        Input.encodeList<TableReferenceResponse, Map<String, dynamic>>(
            sourceTables, (value) => value.toMap());
    map['writeDisposition'] = writeDisposition;
    return map;
  }

  factory JobConfigurationTableCopyResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationTableCopyResponse(
      createDisposition: map['createDisposition'] as String,
      destinationEncryptionConfiguration:
          EncryptionConfigurationResponse.fromMap(
              (map['destinationEncryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      destinationExpirationTime: map['destinationExpirationTime'],
      destinationTable: TableReferenceResponse.fromMap(
          (map['destinationTable'] as Map).cast<String, dynamic>()),
      operationType: map['operationType'] as String,
      sourceTable: TableReferenceResponse.fromMap(
          (map['sourceTable'] as Map).cast<String, dynamic>()),
      sourceTables: Input.decodeList<TableReferenceResponse>(
          map['sourceTables'],
          (value) => TableReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      writeDisposition: map['writeDisposition'] as String,
    );
  }
}
