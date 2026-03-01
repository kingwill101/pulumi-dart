// ignore_for_file: unused_element, unnecessary_cast

import 'export_source_type_enum_value.dart';

/// Definition of awsRdsExportTask
class AwsRdsExportTaskProperties {
  /// <p>The data exported from the snapshot or cluster.</p> <p>Valid Values:</p> <ul> <li> <p> <code>database</code> - Export all the data from a specified database.</p> </li> <li> <p> <code>database.table</code> <i>table-name</i> - Export a table of the snapshot or cluster. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p> </li> <li> <p> <code>database.schema</code> <i>schema-name</i> - Export a database schema of the snapshot or cluster. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> <li> <p> <code>database.schema.table</code> <i>table-name</i> - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> </ul>
  final List<String>? exportOnly;
  /// <p>A unique identifier for the snapshot or cluster export task. This ID isn't an identifier for the Amazon S3 bucket where the data is exported.</p>
  final String? exportTaskIdentifier;
  /// <p>The reason the export failed, if it failed.</p>
  final String? failureCause;
  /// <p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot or cluster.</p>
  final String? iamRoleArn;
  /// <p>The key identifier of the Amazon Web Services KMS key that is used to encrypt the data when it's exported to Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the export must have encryption and decryption permissions to use this KMS key.</p>
  final String? kmsKeyId;
  /// <p>The progress of the snapshot or cluster export task as a percentage.</p>
  final int? percentProgress;
  /// <p>The Amazon S3 bucket where the snapshot or cluster is exported to.</p>
  final String? s3Bucket;
  /// <p>The Amazon S3 bucket prefix that is the file name and path of the exported data.</p>
  final String? s3Prefix;
  /// <p>The time when the snapshot was created.</p>
  final String? snapshotTime;
  /// <p>The Amazon Resource Name (ARN) of the snapshot or cluster exported to Amazon S3.</p>
  final String? sourceArn;
  /// <p>The type of source for the export.</p>
  final ExportSourceTypeEnumValue? sourceType;
  /// <p>The progress status of the export task. The status can be one of the following:</p> <ul> <li> <p> <code>CANCELED</code> </p> </li> <li> <p> <code>CANCELING</code> </p> </li> <li> <p> <code>COMPLETE</code> </p> </li> <li> <p> <code>FAILED</code> </p> </li> <li> <p> <code>IN_PROGRESS</code> </p> </li> <li> <p> <code>STARTING</code> </p> </li> </ul>
  final String? status;
  /// <p>The time when the snapshot or cluster export task ended.</p>
  final String? taskEndTime;
  /// <p>The time when the snapshot or cluster export task started.</p>
  final String? taskStartTime;
  /// <p>The total amount of data exported, in gigabytes.</p>
  final int? totalExtractedDataInGB;
  /// <p>A warning about the snapshot or cluster export task.</p>
  final String? warningMessage;

  /// Creates a new [AwsRdsExportTaskProperties].
  /// [exportOnly] <p>The data exported from the snapshot or cluster.</p> <p>Valid Values:</p> <ul> <li> <p> <code>database</code> - Export all the data from a specified database.</p> </li> <li> <p> <code>database.table</code> <i>table-name</i> - Export a table of the snapshot or cluster. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p> </li> <li> <p> <code>database.schema</code> <i>schema-name</i> - Export a database schema of the snapshot or cluster. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> <li> <p> <code>database.schema.table</code> <i>table-name</i> - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> </ul>
  /// [exportTaskIdentifier] <p>A unique identifier for the snapshot or cluster export task. This ID isn't an identifier for the Amazon S3 bucket where the data is exported.</p>
  /// [failureCause] <p>The reason the export failed, if it failed.</p>
  /// [iamRoleArn] <p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot or cluster.</p>
  /// [kmsKeyId] <p>The key identifier of the Amazon Web Services KMS key that is used to encrypt the data when it's exported to Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the export must have encryption and decryption permissions to use this KMS key.</p>
  /// [percentProgress] <p>The progress of the snapshot or cluster export task as a percentage.</p>
  /// [s3Bucket] <p>The Amazon S3 bucket where the snapshot or cluster is exported to.</p>
  /// [s3Prefix] <p>The Amazon S3 bucket prefix that is the file name and path of the exported data.</p>
  /// [snapshotTime] <p>The time when the snapshot was created.</p>
  /// [sourceArn] <p>The Amazon Resource Name (ARN) of the snapshot or cluster exported to Amazon S3.</p>
  /// [sourceType] <p>The type of source for the export.</p>
  /// [status] <p>The progress status of the export task. The status can be one of the following:</p> <ul> <li> <p> <code>CANCELED</code> </p> </li> <li> <p> <code>CANCELING</code> </p> </li> <li> <p> <code>COMPLETE</code> </p> </li> <li> <p> <code>FAILED</code> </p> </li> <li> <p> <code>IN_PROGRESS</code> </p> </li> <li> <p> <code>STARTING</code> </p> </li> </ul>
  /// [taskEndTime] <p>The time when the snapshot or cluster export task ended.</p>
  /// [taskStartTime] <p>The time when the snapshot or cluster export task started.</p>
  /// [totalExtractedDataInGB] <p>The total amount of data exported, in gigabytes.</p>
  /// [warningMessage] <p>A warning about the snapshot or cluster export task.</p>
  AwsRdsExportTaskProperties({
    this.exportOnly,
    this.exportTaskIdentifier,
    this.failureCause,
    this.iamRoleArn,
    this.kmsKeyId,
    this.percentProgress,
    this.s3Bucket,
    this.s3Prefix,
    this.snapshotTime,
    this.sourceArn,
    this.sourceType,
    this.status,
    this.taskEndTime,
    this.taskStartTime,
    this.totalExtractedDataInGB,
    this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportOnly': ?exportOnly,
      'exportTaskIdentifier': ?exportTaskIdentifier,
      'failureCause': ?failureCause,
      'iamRoleArn': ?iamRoleArn,
      'kmsKeyId': ?kmsKeyId,
      'percentProgress': ?percentProgress,
      's3Bucket': ?s3Bucket,
      's3Prefix': ?s3Prefix,
      'snapshotTime': ?snapshotTime,
      'sourceArn': ?sourceArn,
      'sourceType': ?sourceType == null ? null : sourceType!.toMap(),
      'status': ?status,
      'taskEndTime': ?taskEndTime,
      'taskStartTime': ?taskStartTime,
      'totalExtractedDataInGB': ?totalExtractedDataInGB,
      'warningMessage': ?warningMessage,
    };
  }

  factory AwsRdsExportTaskProperties.fromMap(Map<String, dynamic> map) {
    return AwsRdsExportTaskProperties(
      exportOnly: map['exportOnly'] == null ? null : (map['exportOnly'] as List).cast<String>(),
      exportTaskIdentifier: map['exportTaskIdentifier'] == null ? null : map['exportTaskIdentifier'] as String,
      failureCause: map['failureCause'] == null ? null : map['failureCause'] as String,
      iamRoleArn: map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      percentProgress: map['percentProgress'] == null ? null : map['percentProgress'] as int,
      s3Bucket: map['s3Bucket'] == null ? null : map['s3Bucket'] as String,
      s3Prefix: map['s3Prefix'] == null ? null : map['s3Prefix'] as String,
      snapshotTime: map['snapshotTime'] == null ? null : map['snapshotTime'] as String,
      sourceArn: map['sourceArn'] == null ? null : map['sourceArn'] as String,
      sourceType: map['sourceType'] == null ? null : ExportSourceTypeEnumValue.fromMap((map['sourceType'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      taskEndTime: map['taskEndTime'] == null ? null : map['taskEndTime'] as String,
      taskStartTime: map['taskStartTime'] == null ? null : map['taskStartTime'] as String,
      totalExtractedDataInGB: map['totalExtractedDataInGB'] == null ? null : map['totalExtractedDataInGB'] as int,
      warningMessage: map['warningMessage'] == null ? null : map['warningMessage'] as String,
    );
  }
}

