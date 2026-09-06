// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_source_type_enum_value.dart';

/// Definition of awsRdsExportTask
class AwsRdsExportTaskProperties {
  /// &lt;p&gt;The data exported from the snapshot or cluster.&lt;/p&gt; &lt;p&gt;Valid Values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database&lt;/code&gt; - Export all the data from a specified database.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.table&lt;/code&gt; &lt;i&gt;table-name&lt;/i&gt; - Export a table of the snapshot or cluster. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.schema&lt;/code&gt; &lt;i&gt;schema-name&lt;/i&gt; - Export a database schema of the snapshot or cluster. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.schema.table&lt;/code&gt; &lt;i&gt;table-name&lt;/i&gt; - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<List<String>?>? exportOnly;
  /// &lt;p&gt;A unique identifier for the snapshot or cluster export task. This ID isn't an identifier for the Amazon S3 bucket where the data is exported.&lt;/p&gt;
  final pulumi.Input<String?>? exportTaskIdentifier;
  /// &lt;p&gt;The reason the export failed, if it failed.&lt;/p&gt;
  final pulumi.Input<String?>? failureCause;
  /// &lt;p&gt;The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot or cluster.&lt;/p&gt;
  final pulumi.Input<String?>? iamRoleArn;
  /// &lt;p&gt;The key identifier of the Amazon Web Services KMS key that is used to encrypt the data when it's exported to Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the export must have encryption and decryption permissions to use this KMS key.&lt;/p&gt;
  final pulumi.Input<String?>? kmsKeyId;
  /// &lt;p&gt;The progress of the snapshot or cluster export task as a percentage.&lt;/p&gt;
  final pulumi.Input<int?>? percentProgress;
  /// &lt;p&gt;The Amazon S3 bucket where the snapshot or cluster is exported to.&lt;/p&gt;
  final pulumi.Input<String?>? s3Bucket;
  /// &lt;p&gt;The Amazon S3 bucket prefix that is the file name and path of the exported data.&lt;/p&gt;
  final pulumi.Input<String?>? s3Prefix;
  /// &lt;p&gt;The time when the snapshot was created.&lt;/p&gt;
  final pulumi.Input<String?>? snapshotTime;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the snapshot or cluster exported to Amazon S3.&lt;/p&gt;
  final pulumi.Input<String?>? sourceArn;
  /// &lt;p&gt;The type of source for the export.&lt;/p&gt;
  final pulumi.Input<ExportSourceTypeEnumValue?>? sourceType;
  /// &lt;p&gt;The progress status of the export task. The status can be one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CANCELED&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CANCELING&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;COMPLETE&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FAILED&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;IN_PROGRESS&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;STARTING&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<String?>? status;
  /// &lt;p&gt;The time when the snapshot or cluster export task ended.&lt;/p&gt;
  final pulumi.Input<String?>? taskEndTime;
  /// &lt;p&gt;The time when the snapshot or cluster export task started.&lt;/p&gt;
  final pulumi.Input<String?>? taskStartTime;
  /// &lt;p&gt;The total amount of data exported, in gigabytes.&lt;/p&gt;
  final pulumi.Input<int?>? totalExtractedDataInGB;
  /// &lt;p&gt;A warning about the snapshot or cluster export task.&lt;/p&gt;
  final pulumi.Input<String?>? warningMessage;

  /// Creates a new [AwsRdsExportTaskProperties].
  /// [exportOnly] &lt;p&gt;The data exported from the snapshot or cluster.&lt;/p&gt; &lt;p&gt;Valid Values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database&lt;/code&gt; - Export all the data from a specified database.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.table&lt;/code&gt; &lt;i&gt;table-name&lt;/i&gt; - Export a table of the snapshot or cluster. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.schema&lt;/code&gt; &lt;i&gt;schema-name&lt;/i&gt; - Export a database schema of the snapshot or cluster. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;database.schema.table&lt;/code&gt; &lt;i&gt;table-name&lt;/i&gt; - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [exportTaskIdentifier] &lt;p&gt;A unique identifier for the snapshot or cluster export task. This ID isn't an identifier for the Amazon S3 bucket where the data is exported.&lt;/p&gt;
  /// [failureCause] &lt;p&gt;The reason the export failed, if it failed.&lt;/p&gt;
  /// [iamRoleArn] &lt;p&gt;The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot or cluster.&lt;/p&gt;
  /// [kmsKeyId] &lt;p&gt;The key identifier of the Amazon Web Services KMS key that is used to encrypt the data when it's exported to Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the export must have encryption and decryption permissions to use this KMS key.&lt;/p&gt;
  /// [percentProgress] &lt;p&gt;The progress of the snapshot or cluster export task as a percentage.&lt;/p&gt;
  /// [s3Bucket] &lt;p&gt;The Amazon S3 bucket where the snapshot or cluster is exported to.&lt;/p&gt;
  /// [s3Prefix] &lt;p&gt;The Amazon S3 bucket prefix that is the file name and path of the exported data.&lt;/p&gt;
  /// [snapshotTime] &lt;p&gt;The time when the snapshot was created.&lt;/p&gt;
  /// [sourceArn] &lt;p&gt;The Amazon Resource Name (ARN) of the snapshot or cluster exported to Amazon S3.&lt;/p&gt;
  /// [sourceType] &lt;p&gt;The type of source for the export.&lt;/p&gt;
  /// [status] &lt;p&gt;The progress status of the export task. The status can be one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CANCELED&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CANCELING&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;COMPLETE&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FAILED&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;IN_PROGRESS&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;STARTING&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [taskEndTime] &lt;p&gt;The time when the snapshot or cluster export task ended.&lt;/p&gt;
  /// [taskStartTime] &lt;p&gt;The time when the snapshot or cluster export task started.&lt;/p&gt;
  /// [totalExtractedDataInGB] &lt;p&gt;The total amount of data exported, in gigabytes.&lt;/p&gt;
  /// [warningMessage] &lt;p&gt;A warning about the snapshot or cluster export task.&lt;/p&gt;
  const AwsRdsExportTaskProperties({
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
      'sourceType': ?pulumi.Input.mapOptionalInputValue<ExportSourceTypeEnumValue, Map<String, dynamic>>(sourceType, (value) => value.toMap()),
      'status': ?status,
      'taskEndTime': ?taskEndTime,
      'taskStartTime': ?taskStartTime,
      'totalExtractedDataInGB': ?totalExtractedDataInGB,
      'warningMessage': ?warningMessage,
    };
  }

  factory AwsRdsExportTaskProperties.fromMap(Map<String, dynamic> map) {
    return AwsRdsExportTaskProperties(
      exportOnly: (() { final guardedValue = map['exportOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exportTaskIdentifier: (() { final guardedValue = map['exportTaskIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureCause: (() { final guardedValue = map['failureCause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      s3Bucket: (() { final guardedValue = map['s3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotTime: (() { final guardedValue = map['snapshotTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportSourceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskEndTime: (() { final guardedValue = map['taskEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskStartTime: (() { final guardedValue = map['taskStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalExtractedDataInGB: (() { final guardedValue = map['totalExtractedDataInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      warningMessage: (() { final guardedValue = map['warningMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
