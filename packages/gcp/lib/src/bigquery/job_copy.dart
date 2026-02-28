// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_copy_destination_encryption_configuration.dart';
import 'job_copy_destination_table.dart';
import 'job_copy_source_table.dart';

class JobCopy {
  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final String? createDisposition;
  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final JobCopyDestinationEncryptionConfiguration? destinationEncryptionConfiguration;
  /// The destination table.
  /// Structure is documented below.
  final JobCopyDestinationTable? destinationTable;
  /// Source tables to copy.
  /// Structure is documented below.
  final List<JobCopySourceTable> sourceTables;
  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final String? writeDisposition;

  /// Creates a new [JobCopy].
  /// [createDisposition] Specifies whether the job is allowed to create new tables. The following values are supported:
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys)
  /// [destinationTable] The destination table.
  /// [sourceTables] Source tables to copy.
  /// [writeDisposition] Specifies the action that occurs if the destination table already exists. The following values are supported:
  JobCopy({
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    required this.sourceTables,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDisposition': ?createDisposition,
      'destinationEncryptionConfiguration': ?destinationEncryptionConfiguration == null ? null : destinationEncryptionConfiguration!.toMap(),
      'destinationTable': ?destinationTable == null ? null : destinationTable!.toMap(),
      'sourceTables': pulumi.Input.encodeList<JobCopySourceTable, Map<String, dynamic>>(sourceTables, (value) => value.toMap()),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobCopy.fromMap(Map<String, dynamic> map) {
    return JobCopy(
      createDisposition: map['createDisposition'] == null ? null : map['createDisposition'] as String,
      destinationEncryptionConfiguration: map['destinationEncryptionConfiguration'] == null ? null : JobCopyDestinationEncryptionConfiguration.fromMap((map['destinationEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      destinationTable: map['destinationTable'] == null ? null : JobCopyDestinationTable.fromMap((map['destinationTable'] as Map).cast<String, dynamic>()),
      sourceTables: pulumi.Input.decodeList<JobCopySourceTable>(map['sourceTables'], (value) => JobCopySourceTable.fromMap((value as Map).cast<String, dynamic>())),
      writeDisposition: map['writeDisposition'] == null ? null : map['writeDisposition'] as String,
    );
  }
}

