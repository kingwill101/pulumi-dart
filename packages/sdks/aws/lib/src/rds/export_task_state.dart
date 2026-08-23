// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_task_timeouts.dart';

/// Input properties used for looking up and filtering ExportTask resources.
class ExportTaskState {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  final pulumi.Input<List<String>>? exportOnlies;
  /// Unique identifier for the snapshot export task.
  final pulumi.Input<String>? exportTaskIdentifier;
  /// Reason the export failed, if it failed.
  final pulumi.Input<String>? failureCause;
  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  final pulumi.Input<String>? iamRoleArn;
  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  final pulumi.Input<String>? kmsKeyId;
  /// Progress of the snapshot export task as a percentage.
  final pulumi.Input<int>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 bucket to export the snapshot to.
  final pulumi.Input<String>? s3BucketName;
  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final pulumi.Input<String>? s3Prefix;
  /// Time that the snapshot was created.
  final pulumi.Input<String>? snapshotTime;
  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? sourceArn;
  /// Type of source for the export.
  final pulumi.Input<String>? sourceType;
  /// Status of the export task.
  final pulumi.Input<String>? status;
  /// Time that the snapshot export task completed.
  final pulumi.Input<String>? taskEndTime;
  /// Time that the snapshot export task started.
  final pulumi.Input<String>? taskStartTime;
  final pulumi.Input<ExportTaskTimeouts>? timeouts;
  /// Warning about the snapshot export task, if any.
  final pulumi.Input<String>? warningMessage;

  /// Creates a new [ExportTaskState].
  /// [exportOnlies] Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  /// [exportTaskIdentifier] Unique identifier for the snapshot export task.
  /// [failureCause] Reason the export failed, if it failed.
  /// [iamRoleArn] ARN of the IAM role to use for writing to the Amazon S3 bucket.
  /// [kmsKeyId] ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  /// [percentProgress] Progress of the snapshot export task as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] Name of the Amazon S3 bucket to export the snapshot to.
  /// [s3Prefix] Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  /// [snapshotTime] Time that the snapshot was created.
  /// [sourceArn] Amazon Resource Name (ARN) of the snapshot to export.
  /// [sourceType] Type of source for the export.
  /// [status] Status of the export task.
  /// [taskEndTime] Time that the snapshot export task completed.
  /// [taskStartTime] Time that the snapshot export task started.
  /// [timeouts] Optional.
  /// [warningMessage] Warning about the snapshot export task, if any.
  const ExportTaskState({
    this.exportOnlies,
    this.exportTaskIdentifier,
    this.failureCause,
    this.iamRoleArn,
    this.kmsKeyId,
    this.percentProgress,
    this.region,
    this.s3BucketName,
    this.s3Prefix,
    this.snapshotTime,
    this.sourceArn,
    this.sourceType,
    this.status,
    this.taskEndTime,
    this.taskStartTime,
    this.timeouts,
    this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportOnlies': ?exportOnlies,
      'exportTaskIdentifier': ?exportTaskIdentifier,
      'failureCause': ?failureCause,
      'iamRoleArn': ?iamRoleArn,
      'kmsKeyId': ?kmsKeyId,
      'percentProgress': ?percentProgress,
      'region': ?region,
      's3BucketName': ?s3BucketName,
      's3Prefix': ?s3Prefix,
      'snapshotTime': ?snapshotTime,
      'sourceArn': ?sourceArn,
      'sourceType': ?sourceType,
      'status': ?status,
      'taskEndTime': ?taskEndTime,
      'taskStartTime': ?taskStartTime,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExportTaskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'warningMessage': ?warningMessage,
    };
  }

  factory ExportTaskState.fromMap(Map<String, dynamic> map) {
    return ExportTaskState(
      exportOnlies: (() { final guardedValue = map['exportOnlies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exportTaskIdentifier: (() { final guardedValue = map['exportTaskIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureCause: (() { final guardedValue = map['failureCause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotTime: (() { final guardedValue = map['snapshotTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskEndTime: (() { final guardedValue = map['taskEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskStartTime: (() { final guardedValue = map['taskStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportTaskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warningMessage: (() { final guardedValue = map['warningMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
